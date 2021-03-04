
resource "aws_nat_gateway" "natam-dev-nat-a" {
  allocation_id = "${aws_eip.natam-dev-eip.id}"
  subnet_id = "${aws_subnet.natam-dev-public-a.id}"
  depends_on = ["aws_internet_gateway.natam-dev-igw"]
	
	tags =  {
		Name = "natam-dev-nat-a"
	}
}
