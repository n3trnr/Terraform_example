resource "aws_security_group" "natam-prd-sg" {
  vpc_id      = "${aws_vpc.natam-prd.id}"
  name        = "natam-prd-sg"
  	tags = { 
		Name = "natam-prd-sg"
		}
}

