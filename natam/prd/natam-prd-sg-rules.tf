resource "aws_security_group_rule" "natam-prd-ssm-role-ingress-public" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-prd-ssm-role-ingress-private" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-prd-ssm-role-egress-public" {
  type              = "egress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-prd-ssm-role-egress-private" {
  type              = "egress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}










resource "aws_security_group_rule" "natam-prd-ssm-role-ingress-public-TCP" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-prd-ssm-role-egress-public-TCP" {
  type              = "egress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-prd-ssm-role-ingress-private-TCP" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-prd-ssm-role-egress-private-TCP" {
  type              = "egress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-prd-sg.id}"
  lifecycle { create_before_destroy = true }
}
