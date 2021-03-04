
resource "aws_iam_instance_profile" "natam-iam-profile" {
  name = "natam-iam-profile"
  role = "${aws_iam_role.natam-iam-role.name}"
}
