
resource "aws_subnet" "naver-dev-private-a" {
  vpc_id = "${aws_vpc.naver-dev.id}"
  cidr_block = "10.172.20.0/24"
  availability_zone = "ap-northeast-2a"

	tags={
		Name = "naver-dev-private-a"
	}
}

resource "aws_subnet" "naver-dev-private-c" {
  vpc_id = "${aws_vpc.naver-dev.id}"
  cidr_block = "10.172.21.0/24"
  availability_zone = "ap-northeast-2c"

	tags={
                Name = "naver-dev-private-c"
        }
}

resource "aws_subnet" "naver-dev-private-db-a" {
  vpc_id = "${aws_vpc.naver-dev.id}"
  cidr_block = "10.172.10.0/24"
  availability_zone = "ap-northeast-2a"

        tags={
                Name = "naver-dev-private-db-a"
        }
}

resource "aws_subnet" "naver-dev-private-db-c" {
  vpc_id = "${aws_vpc.naver-dev.id}"
  cidr_block = "10.172.11.0/24"
  availability_zone = "ap-northeast-2c"

        tags={
                Name = "naver-dev-private-db-c"
        }
}


