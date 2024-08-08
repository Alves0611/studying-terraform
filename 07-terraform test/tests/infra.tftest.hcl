# run => 1-n
# provider => 0-n
# variables => 0-1

# Terraform roda os testes na sequência em que foram declarados


variables {
  aws_region     = "eu-west-3" # Paris
  bucket_name    = "este-e-um-nome-de-balde-aleatorio-1234567890"
  table_name     = "usuarios"
  read_capacity  = 5
  write_capacity = 5
}

provider "aws" {
  region = var.aws_region
}

# unit test
run "validate_inputs" {
  # tfstate in-memory global -> pois não tem o bloco `module` configurado

  command = plan

  variables {
    aws_region     = "europe-west-3"
    bucket_name    = "nome de bucket invalido"
    table_name     = "nome de tabela invalido"
    read_capacity  = 0
    write_capacity = -5
  }

  expect_failures = [
    var.aws_region,
    var.bucket_name,
    var.table_name,
    var.read_capacity,
    var.write_capacity
  ]
}

run "setup" {
  # tfstate in-memory -> module setup

  module {
    source = "./tests/setup"
  }
}
