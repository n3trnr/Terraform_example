
resource "aws_nat_gateway" "natam-prd-nat-a" {
  allocation_id = "${aws_eip.natam-prd-eip.id}"
  subnet_id = "${aws_subnet.natam-prd-public-a.id}"
  depends_on = ["aws_internet_gateway.natam-prd-igw"]
	
	tags =  {
		Name = "natam-prd-nat-a"
	}
}
