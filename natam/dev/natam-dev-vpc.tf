resource "aws_vpc" "natam-dev"{
  cidr_block = "10.141.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "natam-dev"
  }
}
