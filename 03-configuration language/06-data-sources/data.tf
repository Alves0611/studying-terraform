data "aws_caller_identity" "current" {}

data "aws_s3_bucket" "this" {
  bucket = "studying-data-sources"
}


