
resource "aws_security_group_rule" "natam-dev-ssm-role" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-ssh-8" {
  type              = "ingress"
  from_port         = 823
  to_port           = 823
  protocol = "TCP"
  cidr_blocks       = ["10.1.8.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-5432-4" {
  type              = "ingress"
  from_port         = 5432
  to_port           = 5432
  protocol = "TCP"
  cidr_blocks       = ["10.1.4.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-5432-5" {
  type              = "ingress"
  from_port         = 5432
  to_port           = 5432
  protocol = "TCP"
  cidr_blocks       = ["10.1.5.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-5432-172" {
  type              = "ingress"
  from_port         = 5432
  to_port           = 5432
  protocol = "TCP"
  cidr_blocks       = ["10.172.0.0/24"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-all" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol = "TCP"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}


resource "aws_security_group_rule" "natam-dev-outbound"
{
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.natam-dev-sg.id}"
  lifecycle { create_before_destroy = true }
}




