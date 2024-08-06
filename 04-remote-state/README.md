# Remote State no Terraform

https://developer.hashicorp.com/terraform/language/state/remote
https://developer.hashicorp.com/terraform/language/settings/backends/configuration

## O que é Remote State?

No Terraform, o "state" (estado) é uma maneira de armazenar o status atual da infraestrutura gerenciada pelo Terraform. O estado é usado pelo Terraform para mapear recursos definidos em seu código de configuração para os recursos reais em sua infraestrutura. Por padrão, o Terraform armazena este estado localmente em um arquivo chamado `terraform.tfstate`.

O "Remote State" (estado remoto) é uma abordagem onde o estado do Terraform é armazenado em um local remoto, como um bucket na AWS, Azure Blob Storage, ou Google Cloud Storage, entre outros. Utilizar o Remote State tem várias vantagens, incluindo:

- **Colaboração**: Permite que múltiplos membros da equipe acessem e atualizem o estado de maneira segura.
- **Segurança**: Facilita a aplicação de controles de acesso e a proteção do estado.
- **Backups**: Os serviços de armazenamento remoto geralmente oferecem soluções integradas de backup e recuperação.


## Armazenamento do Estado no S3

Quando você configura o Terraform para usar o backend S3, ele armazena o estado como um objeto (arquivo) em um bucket do Amazon S3. A localização do estado é determinada pelo nome do bucket e pela chave (key) fornecida na configuração.

## Suporte para State Locking e Consistency Checking com DynamoDB

O Terraform oferece suporte para state locking (bloqueio do estado) e consistency checking (verificação de consistência) utilizando o DynamoDB. Isso ajuda a prevenir condições de corrida e garante que o estado do Terraform seja manipulado de maneira segura, especialmente em ambientes colaborativos.

### State Locking

State locking impede que múltiplas execuções do Terraform modifiquem o estado ao mesmo tempo. Isso é crucial para evitar conflitos e corrupção do estado.

### Consistency Checking

Consistency checking verifica se o estado não foi modificado por outra operação durante a execução de um comando do Terraform, garantindo a integridade do estado.
