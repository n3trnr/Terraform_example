
resource "aws_route_table" "natam-dev-private-rt" {
  vpc_id = "${aws_vpc.natam-dev.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.natam-dev-nat-a.id}"
  }
  tags = {
    Name = "natam-dev-private-rt"
  }
}
 
resource "aws_route_table_association" "natam-dev-private-sb-asso-a" {
  subnet_id      = "${aws_subnet.natam-dev-private-a.id}"
  route_table_id = "${aws_route_table.natam-dev-private-rt.id}"
}

resource "aws_route_table_association" "natam-dev-private-sb-asso-c" {
  subnet_id      = "${aws_subnet.natam-dev-private-c.id}"
  route_table_id = "${aws_route_table.natam-dev-private-rt.id}"
}

resource "aws_route_table_association" "natam-dev-db-sb-asso-a" {
  subnet_id      = "${aws_subnet.natam-dev-db-a.id}"
  route_table_id = "${aws_route_table.natam-dev-private-rt.id}"
}

resource "aws_route_table_association" "natam-dev-db-sb-asso-c" {
  subnet_id      = "${aws_subnet.natam-dev-db-c.id}"
  route_table_id = "${aws_route_table.natam-dev-private-rt.id}"
}

resource "aws_route_table" "natam-dev-public-rt" {
  vpc_id = "${aws_vpc.natam-dev.id}"
	
	tags = {
		Name = "natam-dev-public-rt"
	}
                route {
                cidr_block = "0.0.0.0/0"
                gateway_id = "${aws_internet_gateway.natam-dev-igw.id}"

        }

}

resource "aws_route_table_association" "natam-dev-public-a_asso" {
	subnet_id      = "${aws_subnet.natam-dev-public-a.id}"
	route_table_id = "${aws_route_table.natam-dev-public-rt.id}"
}


resource "aws_route_table_association" "natam-dev-public-c_asso" {
        subnet_id      = "${aws_subnet.natam-dev-public-c.id}"
        route_table_id = "${aws_route_table.natam-dev-public-rt.id}"
}


