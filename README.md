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

<br>

O fluxo de trabalho principal do Terraform consiste em três etapas:

- Escrever (**write**): Você define os recursos, que podem estar em vários provedores e serviços de nuvem. Por exemplo, você pode criar uma configuração para implementar um aplicativo em máquinas virtuais em uma rede de nuvem privada virtual (VPC) com grupos de segurança (Security Groups) e um balanceador de carga (Load Balancers).<br>

- Plano (**plan**): O Terraform cria um plano de execução que descreve a infraestrutura que será criada, atualizada ou destruída com base na infraestrutura existente e na sua configuração.<br>

- Aplicar (**apply**): Após a aprovação, o Terraform executa as operações propostas na ordem correta, respeitando todas as dependências de recursos. Por exemplo, se você atualizar as propriedades de uma VPC e alterar o número de máquinas virtuais nessa VPC, o Terraform recriará a VPC antes de dimensionar as máquinas virtuais.
<br><br>

A força do Terraform está em sua capacidade de fornecer uma maneira consistente, controlada por versão e reproduzível de gerenciar a infraestrutura.

Ele abstrai as especificidades de diferentes provedores de infraestrutura, permitindo que você defina a infraestrutura como código e automatize o provisionamento e o gerenciamento de recursos em vários ambientes.


## Por que utilizar Terraform? 

https://developer.hashicorp.com/terraform/intro#why-terraform

<br>

**Infraestrutura como Código (IaC)**
- O Terraform permite que você defina sua infraestrutura e configurações de aplicativos como código.
- Isso significa que você pode usar práticas de codificação familiares, como controle de versão (git e github) e revisões de código (Pull Request e Code Review), para gerenciar sua infraestrutura, tornando-a mais confiável e fácil de manter.<br><br>

**Configuração Declarativa**
- O Terraform usa uma abordagem declarativa, em que você define o estado final desejado de sua infraestrutura.
- O Terraform então descobre como fazer as alterações necessárias para atingir esse estado, tratando automaticamente das dependências e da ordem das operações.<br><br>


**Gerenciamento de Dependências de Recursos**
- O Terraform gerencia automaticamente as dependências entre recursos, garantindo que os recursos sejam criados ou atualizados na ordem correta.
- Você pode especificar dependências explicitamente, e o Terraform cuidará do restante.<br><br>

**Gerenciamento de Estado**
- O Terraform mantém um arquivo de estado que acompanha o estado atual de sua infraestrutura.
- Isso ajuda a entender o que está atualmente implantado e permite que o Terraform detecte e faça alterações incrementalmente.<br><br>

**Planejamento de Alterações**
- O Terraform fornece um comando "plan" que mostra quais alterações ele fará em sua infraestrutura antes de aplicá-las.
- Isso ajuda a evitar alterações não planejadas e permite a revisão e aprovação de modificações na infraestrutura.<br><br>

**Modularidade e Reutilização**
- Você pode criar componentes de infraestrutura reutilizáveis usando módulos do Terraform.
- Isso promove a reutilização de código e simplifica o gerenciamento de configurações complexas.<br><br>

**Escalabilidade**
- O Terraform pode gerenciar infraestruturas de qualquer tamanho, desde pequenos projetos até ambientes grandes e complexos.
- Ele se dimensiona de acordo com suas necessidades e pode gerenciar milhares de recursos de forma eficiente.<br><br>

**Controle de Custos**
Ao definir sua infraestrutura como código e usar o Terraform para gerenciá-la, você ganha uma melhor visibilidade dos custos de infraestrutura e pode implementar estratégias de economia de custos.<br><br>

**Segurança e Conformidade**
O Terraform permite que você implemente políticas de segurança e conformidade como código, garantindo que sua infraestrutura siga as melhores práticas e os requisitos regulatórios.<br><br>

**Integração com CI/CD**
O Terraform pode ser integrado aos seus pipelines de integração contínua e implantação contínua (CI/CD), permitindo automatizar alterações na infraestrutura junto com as implantações de aplicativos.<br><br>

**Suporte a Múltiplas Plataformas e Nuvem Híbrida**
- O Terraform é agnóstico em relação à nuvem e suporta vários provedores de nuvem, como AWS, Azure, Google Cloud e outros.
- Também suporta ambientes on-premises e de nuvem híbrida, fornecendo uma maneira unificada de gerenciar a infraestrutura em várias plataformas.<br><br>

**Comunidade e Ecossistema**
- O Terraform tem uma comunidade grande e ativa, o que significa que você pode encontrar uma variedade de recursos, módulos e melhores práticas.
- Esse ecossistema pode ajudá-lo a começar rapidamente e a resolver desafios comuns.<br><br>


Em resumo, o Terraform é uma ferramenta poderosa que simplifica e automatiza o gerenciamento de infraestrutura e recursos de nuvem.

Seja você uma pequena equipe gerenciando alguns servidores ou uma grande organização com implantações complexas na nuvem, o Terraform pode ajudá-lo a manter a consistência, confiabilidade e agilidade em suas práticas de gerenciamento de infraestrutura


## Terraform vs Alternativas

- https://developer.hashicorp.com/terraform/intro/vs 
- https://developer.hashicorp.com/terraform/intro/vs/chef-puppet 
- https://developer.hashicorp.com/terraform/intro/vs/cloudformation


O Terraform oferece uma abstração flexível de recursos e provedores.

Esse modelo permite representar tudo, desde hardware físico, máquinas virtuais e contêineres até provedores de e-mail e DNS.

Devido a essa flexibilidade, o Terraform pode ser usado para resolver muitos problemas diferentes.

Isso significa que há várias ferramentas existentes que se sobrepõem aos recursos do Terraform.<br><br>

**Terraform vs. Chef, Puppet, etc.**

A- s ferramentas de gerenciamento de configuração instalam e gerenciam software em uma máquina que já existe. O Terraform não é uma ferramenta de gerenciamento de configuração e permite que as ferramentas existentes se concentrem em seus pontos fortes: inicialização e manutenção de recursos.

- O Terraform se concentra na abstração de nível mais alto do data center e dos serviços associados, permitindo que você use ferramentas de gerenciamento de configuração em sistemas individuais. Ele também tem como objetivo trazer os mesmos benefícios da codificação da configuração do sistema para o gerenciamento da infraestrutura.

- Se você estiver usando o gerenciamento de configuração tradicional em suas instâncias de computação, poderá usar o Terraform para configurar o software de inicialização, como o cloud-init, para ativar o software de gerenciamento de configuração na primeira inicialização do sistema.<br><br>


**Terraform vs. CloudFormation, Heat, etc.**

- Ferramentas como CloudFormation, Heat etc. permitem que os detalhes de uma infraestrutura sejam codificados em um arquivo de configuração.

- Os arquivos de configuração permitem que a infraestrutura seja criada, modificada e destruída de forma elástica.

- O Terraform é inspirado nos problemas que eles resolvem.

- Da mesma forma, o Terraform usa arquivos de configuração para detalhar a configuração da infraestrutura, mas vai além por ser agnóstico em relação à nuvem e permitir que vários provedores e serviços sejam combinados e compostos.

- Por exemplo, o Terraform pode ser usado para orquestrar um cluster AWS e OpenStack simultaneamente, ao mesmo tempo em que permite que provedores de terceiros, como Cloudflare e DNSimple, sejam integrados para fornecer serviços de CDN e DNS.

- Isso permite que o Terraform represente e gerencie toda a infraestrutura com seus serviços de suporte, em vez de apenas o subconjunto existente em um único provedor. Ele fornece uma única sintaxe unificada, em vez de exigir que os operadores usem ferramentas independentes e não interoperáveis para cada plataforma e serviço.

- O Terraform também separa a fase de planejamento da fase de execução, usando o conceito de um plano de execução.

- Ao executar o terraform plan, o estado atual é atualizado e a configuração é consultada para gerar um plano de ação.

- O plano inclui todas as ações a serem tomadas: quais recursos serão criados, destruídos ou modificados.

- Ele pode ser inspecionado pelos operadores para garantir que seja exatamente o que se espera. Usando o gráfico de terraform, o plano pode ser visualizado para mostrar a ordenação dependente

- Depois que o plano é capturado, a fase de execução pode ser limitada apenas às ações do plano.

- Outras ferramentas combinam as fases de planejamento e execução, o que significa que os operadores são forçados a raciocinar mentalmente sobre os efeitos de uma mudança, o que rapidamente se torna intratável em grandes infraestruturas.

- O Terraform permite que os operadores apliquem mudanças com confiança, pois sabem exatamente o que acontecerá de antemão.