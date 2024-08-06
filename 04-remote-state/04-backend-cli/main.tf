# https://developer.hashicorp.com/terraform/language/settings/backends/configuration#command-line-key-value-pairs


provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      "ManagedBy" = "Terraform"
    }
  }
}