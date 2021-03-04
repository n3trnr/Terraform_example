resource "aws_route_table" "naver-dev-public-rt" {
  vpc_id = "${aws_vpc.naver-dev.id}"
	
	tags {
		Name = "naver-dev-public-rt"
	}
                route {
                cidr_block = "0.0.0.0/0"
                gateway_id = "${aws_internet_gateway.naver-dev-igw.id}"

        }

}

resource "aws_route_table_association" "naver-dev-public-a_asso" {
	subnet_id      = "${aws_subnet.naver-dev-public-a.id}"
	route_table_id = "${aws_route_table.naver-dev-public-rt.id}"
}


resource "aws_route_table_association" "naver-dev-public-c_asso" {
        subnet_id      = "${aws_subnet.naver-dev-public-c.id}"
        route_table_id = "${aws_route_table.naver-dev-public-rt.id}"
}

