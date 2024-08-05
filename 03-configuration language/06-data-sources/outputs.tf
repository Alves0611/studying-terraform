output "aws_caller_identity" {
  value = {
    account_id = data.aws_caller_identity.current.account_id
    user_id    = data.aws_caller_identity.current.user_id
  }
}

output "s3_bucket" {
  value = {
    arn         = data.aws_s3_bucket.this.arn
    domain_name = data.aws_s3_bucket.this.bucket_domain_name
  }
}

output "locals" {
  value = {
    local.aws_dynamodb_table_arn = local.aws_dynamodb_table_arn
  }
}
