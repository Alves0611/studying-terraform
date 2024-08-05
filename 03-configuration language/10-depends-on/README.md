# The depends_on Meta-Argument

https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on

O meta-argumento depends_on no Terraform é usado para explicitamente declarar dependências entre recursos que o Terraform não consegue inferir automaticamente. Isso pode ser necessário em situações onde a ordem de criação de recursos é crucial, mas o Terraform não é capaz de determinar isso apenas a partir das configurações dos recursos.