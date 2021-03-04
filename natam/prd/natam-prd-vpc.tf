resource "aws_vpc" "natam-prd"{
  cidr_block = "10.41.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames =true
  tags = {
    Name = "natam-prd"
  }
}

