resource "aws_iam_group" "developers" {
  name = var.group_name
}

resource "aws_iam_group_policy_attachment" "developers_readonly_iam" {
  group      = aws_iam_group.developers.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}
