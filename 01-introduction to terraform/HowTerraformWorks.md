## Como o Terraform funciona?

https://developer.hashicorp.com/terraform/intro#how-does-terraform-work

O núcleo (core) do Terraform usa duas fontes de entrada: 
- Seus arquivos de configuração (seu estado desejado)
- O estado atual, que é gerenciado pelo Terraform

Providers: Os provedores expõem recursos, o que possibilita a criação de infraestrutura em todas essas plataformas:
- IaaS: AWS, GCP, Azure
- PaaS: Kubernetes, Heroku, Digital Ocean
- SaaS: New Relic, Datadog  
<br>

O fluxo de trabalho principal do Terraform consiste em três etapas:

- Escrever (**write**): Você define os recursos, que podem estar em vários provedores e serviços de nuvem. Por exemplo, você pode criar uma configuração para implementar um aplicativo em máquinas virtuais em uma rede de nuvem privada virtual (VPC) com grupos de segurança (Security Groups) e um balanceador de carga (Load Balancers).<br>

- Plano (**plan**): O Terraform cria um plano de execução que descreve a infraestrutura que será criada, atualizada ou destruída com base na infraestrutura existente e na sua configuração.<br>

- Aplicar (**apply**): Após a aprovação, o Terraform executa as operações propostas na ordem correta, respeitando todas as dependências de recursos. Por exemplo, se você atualizar as propriedades de uma VPC e alterar o número de máquinas virtuais nessa VPC, o Terraform recriará a VPC antes de dimensionar as máquinas virtuais.
<br><br>

A força do Terraform está em sua capacidade de fornecer uma maneira consistente, controlada por versão e reproduzível de gerenciar a infraestrutura.

Ele abstrai as especificidades de diferentes provedores de infraestrutura, permitindo que você defina a infraestrutura como código e automatize o provisionamento e o gerenciamento de recursos em vários ambientes.
