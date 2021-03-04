

resource "aws_route_table" "natam-prd-private-rt" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.natam-prd-nat-a.id}"
  }
  tags = {
    Name = "natam-prd-private-rt"
  }
}
 
resource "aws_route_table_association" "natam-prd-private-sb-asso-a" {
  subnet_id      = "${aws_subnet.natam-prd-private-a.id}"
  route_table_id = "${aws_route_table.natam-prd-private-rt.id}"
}

resource "aws_route_table_association" "natam-prd-private-sb-asso-c" {
  subnet_id      = "${aws_subnet.natam-prd-private-c.id}"
  route_table_id = "${aws_route_table.natam-prd-private-rt.id}"
}

resource "aws_route_table_association" "natam-prd-db-sb-asso-a" {
  subnet_id      = "${aws_subnet.natam-prd-db-a.id}"
  route_table_id = "${aws_route_table.natam-prd-private-rt.id}"
}

resource "aws_route_table_association" "natam-prd-db-sb-asso-c" {
  subnet_id      = "${aws_subnet.natam-prd-db-c.id}"
  route_table_id = "${aws_route_table.natam-prd-private-rt.id}"
}

resource "aws_route_table" "natam-prd-public-rt" {
  vpc_id = "${aws_vpc.natam-prd.id}"
	
	tags = {
		Name = "natam-prd-public-rt"
	}
                route {
                cidr_block = "0.0.0.0/0"
                gateway_id = "${aws_internet_gateway.natam-prd-igw.id}"

        }

}

resource "aws_route_table_association" "natam-prd-public-a_asso" {
	subnet_id      = "${aws_subnet.natam-prd-public-a.id}"
	route_table_id = "${aws_route_table.natam-prd-public-rt.id}"
}


resource "aws_route_table_association" "natam-prd-public-c_asso" {
        subnet_id      = "${aws_subnet.natam-prd-public-c.id}"
        route_table_id = "${aws_route_table.natam-prd-public-rt.id}"
}


