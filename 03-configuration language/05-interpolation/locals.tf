locals {
  literal_string    = "Isto é uma string literal, sendo uma sequência de caracteres dentro de aspas duplas"
  concatened_string = "${random_pet.string.id}-texto-aleatório-${var.environment}"
  function_string   = replace(local.literal_string, "uma", "UMA")

  # Heredoc
  heredoc_string = <<EOT
  hello
  world
  EOT

  indented_heredoc_string = <<-EOT
  hello
    world
      Terraform
  EOT

  # JSON or YML
  # https://developer.hashicorp.com/terraform/language/expressions/strings#generating-json-or-yaml
  json = jsonencode({
    hello = "world"
    foo   = "bar"
    a     = "b"
  })
  decoded_json = jsondecode(local.json)
}

