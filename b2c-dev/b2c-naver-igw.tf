resource "aws_internet_gateway" "naver-dev-igw" {
  vpc_id = "${aws_vpc.naver-dev.id}"
tags {
    Name = "naver-dev-igw"
  }
}

