resource "aws_iam_role_policy_attachment" "natam-iam-attach-ssm-role" {
  role       = aws_iam_role.natam-iam-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
