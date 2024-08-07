# Standard Module Structure

https://developer.hashicorp.com/terraform/language/modules/develop/structure

A estrutura de módulo padrão segue o layout documentado abaixo. Embora a lista possa parecer extensa, tudo é opcional, exceto o módulo raiz. A maioria dos módulos não precisa de ajustes adicionais para seguir essa estrutura.

### Módulo Raiz
Este é o único elemento obrigatório. Os arquivos do Terraform devem estar no diretório raiz do repositório, sendo o ponto de entrada principal para o módulo. O módulo raiz deve ser opinativo; por exemplo, o módulo Consul configura um cluster Consul completo, fazendo várias suposições. Usuários avançados podem usar módulos aninhados para um controle mais detalhado.

### README
O módulo raiz e quaisquer módulos aninhados devem incluir arquivos README, nomeados como README ou README.md (tratado como Markdown). O README deve descrever o módulo e seu uso. Exemplos de uso combinados com outros recursos podem ser colocados em um diretório de exemplos. Considera-se incluir um diagrama visual dos recursos de infraestrutura e seus relacionamentos.

O README não precisa documentar entradas ou saídas do módulo, pois as ferramentas do Terraform geram isso automaticamente. Se incluir links ou imagens do repositório, use URLs absolutas específicas de commits para garantir que apontem para a versão correta no futuro.

### LICENÇA
Este arquivo especifica a licença sob a qual o módulo está disponível. Para módulos públicos, uma licença clara é essencial, pois muitas organizações não adotarão módulos sem ela. Recomenda-se sempre incluir um arquivo de licença, mesmo que não seja de código aberto.

### Arquivos Terraform Principais
Os arquivos principais recomendados são main.tf, variables.tf e outputs.tf, mesmo que estejam vazios. O main.tf deve ser o ponto de entrada principal; em módulos simples, pode conter todos os recursos. Em módulos complexos, os recursos podem ser divididos em vários arquivos, mas chamadas de módulos aninhados devem estar no arquivo principal. O variables.tf e outputs.tf devem conter declarações de variáveis e saídas, respectivamente.

Todas as variáveis e saídas devem ter descrições breves para documentação. Consulte a documentação para mais detalhes sobre a configuração de variáveis e saídas.

### Módulos Aninhados
Módulos aninhados devem estar no subdiretório `modules/`. Módulos aninhados com README.md são considerados utilizáveis por usuários externos. Se um README não existir, o módulo é considerado apenas para uso interno. Embora isso seja consultivo, o Terraform não impede o uso de módulos internos. Módulos aninhados ajudam a dividir comportamentos complexos em módulos menores, permitindo que usuários avançados escolham conforme necessário. Por exemplo, o módulo Consul tem um módulo aninhado para criar o cluster e outro para configurar políticas de IAM.

Chamadas para módulos aninhados devem usar caminhos relativos, como `./modules/consul-cluster`, para que o Terraform os trate como parte do mesmo repositório ou pacote.

Em repositórios com vários módulos aninhados, é ideal que sejam compostos pelo chamador, em vez de chamarem diretamente uns aos outros, evitando uma árvore de módulos profundamente aninhada.

### Exemplos
Exemplos de uso do módulo devem estar no subdiretório `examples/` na raiz do repositório. Cada exemplo pode ter um README explicando seu objetivo e uso. Exemplos para submódulos também devem ser colocados no diretório `examples/`.