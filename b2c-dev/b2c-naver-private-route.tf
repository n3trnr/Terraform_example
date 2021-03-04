resource "aws_route_table" "naver-dev-private-rt" {
  vpc_id = "${aws_vpc.naver-dev.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.naver-dev-nat-a.id}"
  }
  tags {
    Name = "naver-dev-private-rt"
  }
}
 
resource "aws_route_table_association" "naver-dev-private-sb-asso-a" {
  subnet_id      = "${aws_subnet.naver-dev-private-a.id}"
  route_table_id = "${aws_route_table.naver-dev-private-rt.id}"
}

resource "aws_route_table_association" "naver-dev-private-sb-asso-c" {
  subnet_id      = "${aws_subnet.naver-dev-private-c.id}"
  route_table_id = "${aws_route_table.naver-dev-private-rt.id}"
}

