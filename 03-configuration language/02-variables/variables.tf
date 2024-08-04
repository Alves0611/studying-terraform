variable "aws_region" {
  type        = string
  description = "The region to deploy the infra to"
  default     = "us-east-1"
}

variable "tags" {
  type        = map(string)
  description = ""
  default = {
    "ManagedBy" = "Terraform"
  }
}

variable "dynamodb_field_list" {
  type        = list(string)
  description = ""
  default     = ["UserId", "GameTitle"]
}

variable "database_config" {
  type = object({
    table_name          = string
    read_capacity       = optional(number, 3)
    write_capacity      = optional(number, 3)
    deletion_protection = optional(bool, false)
    hash_key = object({
      name = string
      type = string
    })
    range_key = object({
      name = string
      type = string
    })
  })
  description = ""
  default = {
    table_name = "GameScores"
    hash_key = {
      name = "UserId"
      type = "S"
    }
    range_key = {
      name = "GameTitle"
      type = "S"
    }
  }
}

