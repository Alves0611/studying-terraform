locals {
  literal_string    = "Isto é uma string literal, sendo uma sequência de caracteres dentro de aspas duplas"
  concatened_string = "${random_pet.string.id}-texto-aleatório-${var.environment}"
  function_string   = replace(local.literal_string, "uma", "UMA")
}
