
resource "aws_subnet" "natam-prd-private-a" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.21.0/24"
  availability_zone = "ap-northeast-2a"

	tags={
		Name = "natam-prd-private-a"
	}
}

resource "aws_subnet" "natam-prd-private-c" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.22.0/24"
  availability_zone = "ap-northeast-2c"

	tags={
                Name = "natam-prd-private-c"
        }
}

resource "aws_subnet" "natam-prd-db-a" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.1.0/24"
  availability_zone = "ap-northeast-2a"

        tags={
                Name = "natam-prd-db-a"
        }
}

resource "aws_subnet" "natam-prd-db-c" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.2.0/24"
  availability_zone = "ap-northeast-2c"

        tags={
                Name = "natam-prd-db-c"
        }
}

resource "aws_subnet" "natam-prd-public-a" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.11.0/24"
  availability_zone = "ap-northeast-2a"

        tags={
                Name = "natam-prd-public-a"
        }
}

resource "aws_subnet" "natam-prd-public-c" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.12.0/24"
  availability_zone = "ap-northeast-2c"

        tags={
                Name = "natam-prd-public-c"
        }
}

resource "aws_subnet" "natam-prd-vpn-a" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.251.0/24"
  availability_zone = "ap-northeast-2a"

        tags={
                Name = "natam-prd-vpn-a"
        }
}

resource "aws_subnet" "natam-prd-vpn-c" {
  vpc_id = "${aws_vpc.natam-prd.id}"
  cidr_block = "10.41.252.0/24"
  availability_zone = "ap-northeast-2c"

        tags={
                Name = "natam-prd-vpn-c"
        }
}


