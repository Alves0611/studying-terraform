## Terraform vs Alternativas

- https://developer.hashicorp.com/terraform/intro/vs 
- https://developer.hashicorp.com/terraform/intro/vs/chef-puppet 
- https://developer.hashicorp.com/terraform/intro/vs/cloudformation


O Terraform oferece uma abstração flexível de recursos e provedores.

Esse modelo permite representar tudo, desde hardware físico, máquinas virtuais e contêineres até provedores de e-mail e DNS.

Devido a essa flexibilidade, o Terraform pode ser usado para resolver muitos problemas diferentes.

Isso significa que há várias ferramentas existentes que se sobrepõem aos recursos do Terraform.<br><br>

**Terraform vs. Chef, Puppet, etc.**

As ferramentas de gerenciamento de configuração instalam e gerenciam software em uma máquina que já existe. O Terraform não é uma ferramenta de gerenciamento de configuração e permite que as ferramentas existentes se concentrem em seus pontos fortes: inicialização e manutenção de recursos.

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