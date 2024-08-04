# Outputs Values

https://developer.hashicorp.com/terraform/language/values/outputs


Os valores de saída disponibilizam informações sobre sua infraestrutura na linha de comando e podem expor informações para outras configurações do Terraform usarem. Os valores de saída são semelhantes aos valores de retorno em linguagens de programação.


Os valores de saída têm vários usos:
- Um módulo filho pode usar saídas para expor um subconjunto de seus atributos de recursos a um módulo pai.
- Um módulo raiz pode usar saídas para imprimir determinados valores na saída da CLI após a execução `terraform apply`.