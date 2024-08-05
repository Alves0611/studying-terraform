data "aws_caller_identity" "current" {}

data "aws_s3_bucket" "this" {
  bucket = "studying-data-sources"
}

data "aws_dynamodb_table" "tableName" {
  name = "tableName"
}
