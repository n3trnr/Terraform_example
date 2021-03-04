
resource "aws_eip" "natam-prd-eip" {
  vpc = true
  depends_on = ["aws_internet_gateway.natam-prd-igw"]
	tags = { 
		Name = "natam-prd-eip"
	}
}
