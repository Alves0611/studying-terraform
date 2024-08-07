# Terraform Modules

## O que são Módulos no Terraform?

Módulos no Terraform são um conjunto de arquivos de configuração agrupados em um diretório. Eles permitem a reutilização de código, organização e a gestão de infraestrutura como código de maneira mais eficiente. Um módulo pode ser usado para definir e reutilizar recursos de infraestrutura em diferentes ambientes e projetos.

## Estrutura de um Módulo

Um módulo no Terraform geralmente consiste em três arquivos principais:
- `main.tf`: Define os recursos do módulo.
- `variables.tf`: Declara as variáveis usadas no módulo.
- `outputs.tf`: Define as saídas do módulo.

Além desses, você pode incluir outros arquivos conforme necessário, como `provider.tf` para definir provedores ou `versions.tf` para especificar versões de Terraform e provedores.

https://developer.hashicorp.com/terraform/language/modules