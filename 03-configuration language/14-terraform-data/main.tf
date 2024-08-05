provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      "ManagedBy" = "Terraform"
    }
  }
}

resource "random_pet" "this" {
  length = 5
}

resource "terraform_data" "this" {
  input            = "algum valor: variable, local, reference, etc ..."
  triggers_replace = "outro valor: variable, local, reference, etc ..."
}

resource "terraform_data" "replacement" {
  input = var.revision
}

resource "terraform_data" "provisioners" {
  triggers_replace = aws_instance.example.private_ip

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}
