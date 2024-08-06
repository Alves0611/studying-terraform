terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.22.0"
    }
  }
  backend "s3" {
    bucket         = "tfstate-891377404175"
    key            = "dev/05-outputs/networking/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tflock-tfstate-891377404175"
  }
}
