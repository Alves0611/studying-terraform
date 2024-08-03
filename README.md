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


A força do Terraform está em sua capacidade de fornecer uma maneira consistente, controlada por versão e reproduzível de gerenciar a infraestrutura.

Ele abstrai as especificidades de diferentes provedores de infraestrutura, permitindo que você defina a infraestrutura como código e automatize o provisionamento e o gerenciamento de recursos em vários ambientes.


## Por que utilizar Terraform? 

**Infraestrutura como Código (IaC)**
- O Terraform permite que você defina sua infraestrutura e configurações de aplicativos como código.
- Isso significa que você pode usar práticas de codificação familiares, como controle de versão (git e github) e revisões de código (Pull Request e Code Review), para gerenciar sua infraestrutura, tornando-a mais confiável e fácil de manter.

**Configuração Declarativa**
- O Terraform usa uma abordagem declarativa, em que você define o estado final desejado de sua infraestrutura.
- O Terraform então descobre como fazer as alterações necessárias para atingir esse estado, tratando automaticamente das dependências e da ordem das operações.


**Gerenciamento de Dependências de Recursos**
- O Terraform gerencia automaticamente as dependências entre recursos, garantindo que os recursos sejam criados ou atualizados na ordem correta.
- Você pode especificar dependências explicitamente, e o Terraform cuidará do restante.

**Gerenciamento de Estado**
- O Terraform mantém um arquivo de estado que acompanha o estado atual de sua infraestrutura.
- Isso ajuda a entender o que está atualmente implantado e permite que o Terraform detecte e faça alterações incrementalmente.

**Planejamento de Alterações**
- O Terraform fornece um comando "plan" que mostra quais alterações ele fará em sua infraestrutura antes de aplicá-las.
- Isso ajuda a evitar alterações não planejadas e permite a revisão e aprovação de modificações na infraestrutura.

**Modularidade e Reutilização**
- Você pode criar componentes de infraestrutura reutilizáveis usando módulos do Terraform.
- Isso promove a reutilização de código e simplifica o gerenciamento de configurações complexas.

**Escalabilidade**
- O Terraform pode gerenciar infraestruturas de qualquer tamanho, desde pequenos projetos até ambientes grandes e complexos.
- Ele se dimensiona de acordo com suas necessidades e pode gerenciar milhares de recursos de forma eficiente.

**Controle de Custos**
Ao definir sua infraestrutura como código e usar o Terraform para gerenciá-la, você ganha uma melhor visibilidade dos custos de infraestrutura e pode implementar estratégias de economia de custos.

**Segurança e Conformidade**
O Terraform permite que você implemente políticas de segurança e conformidade como código, garantindo que sua infraestrutura siga as melhores práticas e os requisitos regulatórios.

**Integração com CI/CD**
O Terraform pode ser integrado aos seus pipelines de integração contínua e implantação contínua (CI/CD), permitindo automatizar alterações na infraestrutura junto com as implantações de aplicativos.