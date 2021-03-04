
resource "aws_key_pair" "natam-prd-key" {
  key_name   = "natam-prd-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4FdGTEbngFIh9Kvl+QaXrTvOcNrplB93UgEyd04gUKJxfYeOc12cd8X+4kZqhFXnIS0KdF23c3caA1A8NS1EiYg/ky7XjdetYcMn0CKYD/QC82dGKv9vgn/52l3pu6xZ0Ze9Z6ooSwhQAojIUJ0Qta4x4UIoMM03Q41MJLQbiBvVS2daeellw/XbfozV+VYwwdRVhSIfCnQ12rWM9Z4uhCbazBQT8yRmK9ALLal6LeFEYI0Q7oM7Llah1zcUkOz8yH5XkSYGDvOEEXzB0IBOvzEhvB0vFTjDHcIMkLR3LMQMI2TlMD2OBIEfzJRuModjNaF3ZqWbpJN7FAHaQrUK3 refine@terraform"
	
	tags = {
			Name = "natam-prd-key"
			}

}
