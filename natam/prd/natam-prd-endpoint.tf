

resource "aws_vpc_endpoint" "natam-prd-ssm-endpoint" {
  vpc_id            = aws_vpc.natam-prd.id
  service_name      = "com.amazonaws.ap-northeast-2.ssm"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-prd-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-prd-ssm"
		}
}


resource "aws_vpc_endpoint" "natam-prd-ssm-message-endpoint" {
  vpc_id            = aws_vpc.natam-prd.id
  service_name      = "com.amazonaws.ap-northeast-2.ssmmessages"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-prd-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-prd-ssm-message"
		}
}


resource "aws_vpc_endpoint" "natam-prd-ec2-endpoint" {
  vpc_id            = aws_vpc.natam-prd.id
  service_name      = "com.amazonaws.ap-northeast-2.ec2"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-prd-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-prd-ec2"
		}
}


resource "aws_vpc_endpoint" "natam-prd-ec2-message-endpoint" {
  vpc_id            = aws_vpc.natam-prd.id
  service_name      = "com.amazonaws.ap-northeast-2.ec2messages"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    aws_security_group.natam-prd-sg.id,
  ]

  private_dns_enabled = true
  
  tags = {
		Name = "natam-prd-ec2-messages"
		}
}


resource "aws_vpc_endpoint" "natam-prd-s3-endpoint" {
  vpc_id            = aws_vpc.natam-prd.id
  service_name      = "com.amazonaws.ap-northeast-2.s3"

  tags = {
		Name = "natam-prd-s3"
		}
}


resource "aws_vpc_endpoint_route_table_association" "natam-prd-s3-endpoint-rt-private" {
  route_table_id  = aws_route_table.natam-prd-private-rt.id
  vpc_endpoint_id = aws_vpc_endpoint.natam-prd-s3-endpoint.id
}

resource "aws_vpc_endpoint_route_table_association" "natam-prd-s3-endpoint-rt-public" {
  route_table_id  = aws_route_table.natam-prd-public-rt.id
  vpc_endpoint_id = aws_vpc_endpoint.natam-prd-s3-endpoint.id
}



