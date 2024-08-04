output "aws_caller_identity" {
  value = {
    account_id = data.aws_caller_identity.current.account_id
    user_id    = data.aws_caller_identity.current.user_id
  }
}
