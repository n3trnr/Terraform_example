
resource "aws_subnet" "naver-dev-public-a" {
  vpc_id = "${aws_vpc.naver-dev.id}"
  cidr_block = "10.172.0.0/24"
  availability_zone = "ap-northeast-2a"

        tags={
                Name = "naver-dev-public-a"
        }


}

resource "aws_subnet" "naver-dev-public-c" {
  vpc_id = "${aws_vpc.naver-dev.id}"
  cidr_block = "10.172.1.0/24"
  availability_zone = "ap-northeast-2c"

        tags={
                Name = "naver-dev-public-c-1"
        }


}

