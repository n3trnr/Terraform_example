resource "aws_security_group" "naver-dev-sg" {
  vpc_id      = "${aws_vpc.naver-dev.id}"
  name        = "naver-dev-sg"
  	tags { 
		Name = "naver-dev-sg"
		}
}

#ssm 엔드포인트
resource "aws_vpc_endpoint" "natam-dev-ssm-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ssm"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.sg1.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ssm"
		}
}

#SSM-Message 엔드포인트
resource "aws_vpc_endpoint" "natam-dev-ssm-message-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ssmmessages"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.sg1.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ssm-message"
		}
}

#ec2 엔드포인트
resource "aws_vpc_endpoint" "natam-dev-ec2-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ec2"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.sg1.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ec2"
		}
}

#EC2-message 엔드포인트
resource "aws_vpc_endpoint" "natam-dev-ec2-message-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ec2messages"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.sg1.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ec2-messages"
		}
}

#S3 엔드포인트
resource "aws_vpc_endpoint" "natam-dev-s3-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.s3"

  tags = {
		Name = "natam-dev-s3"
		}
}

#S3 엔드포인트 Association
resource "aws_vpc_endpoint_route_table_association" "natam-dev-s3-endpoint-route" {
  route_table_id  = aws_route_table.example.id
  vpc_endpoint_id = aws_vpc_endpoint.example.id
}





