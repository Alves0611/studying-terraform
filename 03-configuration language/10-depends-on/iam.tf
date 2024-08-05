resource "aws_iam_user" "this" {
  name = "example-user"
}

resource "aws_iam_user_policy_attachment" "this" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  user       = aws_iam_user.this.name

  depends_on = [aws_s3_bucket.this]
}
