
resource "aws_internet_gateway" "natam-prd-igw" {
  vpc_id = "${aws_vpc.natam-prd.id}"
tags = {
    Name = "natam-prd-igw"
  }
}
