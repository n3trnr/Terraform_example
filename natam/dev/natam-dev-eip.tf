resource "aws_eip" "natam-dev-eip" {
  vpc = true
  depends_on = ["aws_internet_gateway.natam-dev-igw"]
	tags = { 
		Name = "natam-dev-eip"
	}
}
