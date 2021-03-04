
resource "aws_subnet" "natam-dev-private-a" {
  vpc_id = "${aws_vpc.natam-dev.id}"
  cidr_block = "10.141.21.0/24"
  availability_zone = "ap-northeast-2a"

	tags={
		Name = "natam-dev-private-a"
	}
}

resource "aws_subnet" "natam-dev-private-c" {
  vpc_id = "${aws_vpc.natam-dev.id}"
  cidr_block = "10.141.22.0/24"
  availability_zone = "ap-northeast-2c"

	tags={
                Name = "natam-dev-private-c"
        }
}

resource "aws_subnet" "natam-dev-db-a" {
  vpc_id = "${aws_vpc.natam-dev.id}"
  cidr_block = "10.141.1.0/24"
  availability_zone = "ap-northeast-2a"

        tags={
                Name = "natam-dev-db-a"
        }
}

resource "aws_subnet" "natam-dev-db-c" {
  vpc_id = "${aws_vpc.natam-dev.id}"
  cidr_block = "10.141.2.0/24"
  availability_zone = "ap-northeast-2c"

        tags={
                Name = "natam-dev-db-c"
        }
}

resource "aws_subnet" "natam-dev-public-a" {
  vpc_id = "${aws_vpc.natam-dev.id}"
  cidr_block = "10.141.11.0/24"
  availability_zone = "ap-northeast-2a"

        tags={
                Name = "natam-dev-public-a"
        }
}

resource "aws_subnet" "natam-dev-public-c" {
  vpc_id = "${aws_vpc.natam-dev.id}"
  cidr_block = "10.141.12.0/24"
  availability_zone = "ap-northeast-2c"

        tags={
                Name = "natam-dev-public-c"
        }
}

