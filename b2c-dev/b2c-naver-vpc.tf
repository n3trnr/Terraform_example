resource "aws_vpc" "naver-dev"{
  cidr_block = "10.172.0.0/16"
  tags {
    Name = "naver-dev"
  }
}
 
