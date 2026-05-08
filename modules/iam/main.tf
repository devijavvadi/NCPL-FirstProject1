resource "aws_iam_user" "this" {
  name = var.user_name
  path = "/"

  tags = {
    Environment = var.environment
  }
}

# Optional: Creates Access Key and Secret Key
resource "aws_iam_access_key" "this" {
  count = var.create_access_key ? 1 : 0
  user  = aws_iam_user.this.name
}