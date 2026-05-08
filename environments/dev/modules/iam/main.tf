resource "aws_iam_user" "this" {
  name = var.user_name

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}

resource "aws_iam_user_policy" "this" {
  name = "${var.user_name}-policy"
  user = aws_iam_user.this.name

  policy = var.policy_json
}

resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}