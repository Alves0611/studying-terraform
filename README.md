## O que é Terraform? (Hashicorp)

https://developer.hashicorp.com/terraform/intro

O HashiCorp Terraform é uma ferramenta de infraestrutura como código que permite definir recursos na nuvem e no local em arquivos de configuração legíveis por humanos que podem ser versionados, reutilizados e compartilhados.

Em seguida, você pode usar um fluxo de trabalho consistente para provisionar e gerenciar toda a sua infraestrutura durante todo o ciclo de vida.

O Terraform pode gerenciar componentes de baixo nível, como computação, armazenamento e recursos de rede, bem como componentes de alto nível, como entradas de DNS e recursos de SaaS (New Relic, Datadog).

### O que é Terraform? (ChatGPT)

"É como uma ferramenta mágica que permite criar uma cidade inteira de Lego de uma só vez, sem ter que construir cada peça separadamente.

Você pode dizer ao Terraform como deseja que sua cidade fique, e ele moldará o terreno, colocará os prédios no lugar e criará estradas de acordo com suas instruções.

É como ter um superpoder para fazer sua cidade dos sonhos de Lego ganhar vida de forma fácil e rápida." 

![alt text](./images/example.png)



## Como o Terraform funciona?

https://developer.hashicorp.com/terraform/intro#how-does-terraform-work

O núcleo (core) do Terraform usa duas fontes de entrada: 
- Seus arquivos de configuração (seu estado desejado)
- O estado atual, que é gerenciado pelo Terraform


Providers: Os provedores expõem recursos, o que possibilita a criação de infraestrutura em todas essas plataformas:
- IaaS: AWS, GCP, Azure
- PaaS: Kubernetes, Heroku, Digital Ocean
- SaaS: New Relic, Datadog


- Escrever (**write**): Você define os recursos, que podem estar em vários provedores e serviços de nuvem. Por exemplo, você pode criar uma configuração para implementar um aplicativo em máquinas virtuais em uma rede de nuvem privada virtual (VPC) com grupos de segurança (Security Groups) e um balanceador de carga (Load Balancers).

- Plano (plan): O Terraform cria um plano de execução que descreve a infraestrutura que será criada, atualizada ou destruída com base na infraestrutura existente e na sua configuração.

- Aplicar (apply): Após a aprovação, o Terraform executa as operações propostas na ordem correta, respeitando todas as dependências de recursos. Por exemplo, se você atualizar as propriedades de uma VPC e alterar o número de máquinas virtuais nessa VPC, o Terraform recriará a VPC antes de dimensionar as máquinas virtuais.


![alt text](./images/fluxo.png)

A força do Terraform está em sua capacidade de fornecer uma maneira consistente, controlada por versão e reproduzível de gerenciar a infraestrutura.

Ele abstrai as especificidades de diferentes provedores de infraestrutura, permitindo que você defina a infraestrutura como código e automatize o provisionamento e o gerenciamento de recursos em vários ambientes.
