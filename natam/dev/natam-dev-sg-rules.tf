resource "aws_security_group_rule" "natam-dev-ssm-role-ingress-public" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-ssm-role-ingress-private" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-dev-ssm-role-egress-public" {
  type              = "egress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-ssm-role-egress-private" {
  type              = "egress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}










resource "aws_security_group_rule" "natam-dev-ssm-role-ingress-public-SSH" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-dev-ssm-role-egress-public-SSH" {
  type              = "egress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-ssm-role-ingress-private-SSH" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-dev-ssm-role-egress-private-SSH" {
  type              = "egress"
  from_port         = 22
  to_port           = 22
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}







resource "aws_security_group_rule" "natam-dev-ssm-role-ingress-public-443" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-dev-ssm-role-egress-public-443" {
  type              = "egress"
  from_port         = 443
  to_port           = 443
  protocol = "TCP"
  cidr_blocks       = ["211.60.240.136/32"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-ssm-role-ingress-private-443" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}

resource "aws_security_group_rule" "natam-dev-ssm-role-egress-private-443" {
  type              = "egress"
  from_port         = 443
  to_port           = 443
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}