aws_region  = "us-east-1"
environment = "prod"
database_config = {
  table_name     = "GameScores"
  read_capacity  = 5
  write_capacity = 5
  hash_key = {
    name = "UserId"
    type = "S"
  }
  range_key = {
    name = "GameTitle"
    type = "S"
  }
}

tags = {
  "ManagedBy"   = "Terraform"
  "Environment" = "Prod"
}
