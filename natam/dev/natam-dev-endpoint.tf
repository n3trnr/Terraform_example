
resource "aws_vpc_endpoint" "natam-dev-ssm-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ssm"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-dev-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ssm"
		}
}


resource "aws_vpc_endpoint" "natam-dev-ssm-message-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ssmmessages"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-dev-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ssm-message"
		}
}


resource "aws_vpc_endpoint" "natam-dev-ec2-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ec2"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-dev-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ec2"
		}
}


resource "aws_vpc_endpoint" "natam-dev-ec2-message-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.ec2messages"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-dev-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-dev-ec2-messages"
		}
}


resource "aws_vpc_endpoint" "natam-dev-s3-endpoint" {
  vpc_id            = aws_vpc.natam-dev.id
  service_name      = "com.amazonaws.ap-northeast-2.s3"

  tags = {
		Name = "natam-dev-s3"
		}
}


resource "aws_vpc_endpoint_route_table_association" "natam-dev-s3-endpoint-rt-private" {
  route_table_id  = aws_route_table.natam-dev-private-rt.id
  vpc_endpoint_id = aws_vpc_endpoint.natam-dev-s3-endpoint.id
}

resource "aws_vpc_endpoint_route_table_association" "natam-dev-s3-endpoint-rt-public" {
  route_table_id  = aws_route_table.natam-dev-public-rt.id
  vpc_endpoint_id = aws_vpc_endpoint.natam-dev-s3-endpoint.id
}




