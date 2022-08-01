
resource "aws_key_pair" "natam-prd-key" {
  key_name   = "natam-prd-key"
  public_key = "PUBLIC_KEY"
	
	tags = {
			Name = "natam-prd-key"
			}

}
