resource "aws_s3_bucket" "this" {
  bucket = "my-study-bucket-0611"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
