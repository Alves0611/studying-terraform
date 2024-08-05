provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      "ManagedBy" = "Terraform"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
  alias  = "sao_paulo"

  default_tags {
    tags = {
      "ManagedBy" = "Terraform"
    }
  }
}
