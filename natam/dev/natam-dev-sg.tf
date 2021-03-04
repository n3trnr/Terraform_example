resource "aws_security_group" "natam-dev-sg" {
  vpc_id      = "${aws_vpc.natam-dev.id}"
  name        = "natam-dev-sg"
  	tags = { 
		Name = "natam-dev-sg"
		}
}

