resource "aws_dynamodb_table" "this" {
  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = false
  hash_key                    = "UserId"
  name                        = "GameScores"
  range_key                   = "GameTitle"
  read_capacity               = 5
  table_class                 = "STANDARD"
  write_capacity              = 5
  attribute {
    name = "GameTitle"
    type = "S"
  }
  attribute {
    name = "UserId"
    type = "S"
  }
  point_in_time_recovery {
    enabled = false
  }
  ttl {
    attribute_name = ""
    enabled        = false
  }
}
