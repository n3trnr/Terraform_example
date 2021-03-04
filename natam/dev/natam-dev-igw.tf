resource "aws_internet_gateway" "natam-dev-igw" {
  vpc_id = "${aws_vpc.natam-dev.id}"
tags = {
    Name = "natam-dev-igw"
  }
}
