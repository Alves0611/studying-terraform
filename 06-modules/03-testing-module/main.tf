provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      "ManagedBy" = "Terraform"
    }
  }
}

resource "random_pet" "this" {
  length = 3
}
