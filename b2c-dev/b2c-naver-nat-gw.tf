resource "aws_nat_gateway" "naver-dev-nat-a" {
  allocation_id = "eipalloc-0dca60702c4d945bb"
  subnet_id = "${aws_subnet.naver-dev-public-a.id}"
  depends_on = ["aws_internet_gateway.naver-dev-igw"]
	
	tags {
		Name = "naver-dev-nat-a"
	}
}
