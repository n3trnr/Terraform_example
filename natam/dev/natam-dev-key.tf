
resource "aws_key_pair" "natam-dev-key" {
  key_name   = "natam-dev-key"
  public_key = "PUBLIC_KEY"
	
	tags = {
			Name = "natam-dev-key"
			}

}
