## Visão geral
Nada mais é que um pequeno programa Java, uma classe normal como qualquer outra, capz de receber e responder a requisições Web geralmente por meio do protocolo HTTP.
Com um Servlet, podemos criar objetos e trabalhar com eles gerando páginas HTML dinamicamente.
Com Servlets podemos trabalhar, por exemplo, com arquitetura multicamadas repassando pedidos e trabalhar com colaboração entre pessoas por meio do uso compartilhado de um mesmo módulo por vários clientes.

Servlet é um meio parar criar páginas Web dinâmicas com Java. Utilizando linguagem Java para criar classes com capacidade de gerar páginas HTML dinamicamente.
A ideia de um Servlet é que ele seja tratado como um pequeno servidor "serv-let" capaz de atender a requisições por meio de um protocolo HTTP, por exemplo GET e POST, e processar estas requisições e, em seguida, devolver uma resposta por meio de um conteúdo dinâmico que será apresentado ao cliente.
Além de receber e responder a requisições de clientes Web por meio de bibliotecas específicas que permitem trabalhar com o protocolo HTTP, um Servlet tem acesso a toda a família de APIs Java, incluindo a API JDBC de acesso a banco de dados.

## Hierarquia de um Servlet
Servlet é uma classe Java, mas que segue uma estrutura bem definida na qual implementa a interface javax.servlet.Servlet.
Para implementar essa classe, você pode escrever um servlet genérico que estende a classe javax.servlet.GenericServlet ou um servlet HTTP, que estende a classe javax.servlet.http.HttpServlet.
- A classe GenericServlet serve para atender a requisições genéricas de qualquer protocolo
- A classe HttpServlet serve para atender a requisições via protocolo HTTP

## Ciclo de vida de um Servlet
A interface Servlet define métodos para inicializar um servlet para solicitações de serviços e para remover um servlet do servidor.
Esses métodos são chamados na seguinte sequencia:
	1. O Servlet é construido e então inicializado com o método *init*
	2. Todas as chamadas são manipuladas pelo método *service*
	3. O Servlet é retirado de serviços e, em seguida, destruído por meio do método *destroi*
A inicialização pode ocorrer de duas formas:
- Quando o proprio servidor é iniciado 
-  Quando é recebida a primeira requisição mapeada para a aplicação que contém o Servlet.
Depois de incializado, o Servlet está pronto para atender as requisições Web enquanto o servidor estiver ativo e a aplicação que contém o Servlet estiver carregada.

O servlet é finalizado somente se a aplicação que contém o Servlet se tornar inativa ou caso o servidor for finalizado.

## Inicializando um Servlet
Na inicialização de um servlet o método init() é chamado, possibilitando executar passos necessários para sua inicialização, como:
- Realizar configurações por meio de leitura de parâmetros obtidos do web.xml
- Inicializar conexões com banco de dados
- Inicializar variáveis estáticas 
## A interface ServletContext
Diferentemente da interface ServletConfig que define parametros de inicialização de um determinado Servlet, a interface javax.servlet.ServletContext permite compartilhar informações entre todos os Servlets contidos no Servlet Container.

## Finalizando um Servlet
O responsável pelo tratamento de finalizações de um servlet é o método destroy(). Deve ser implementado sempre que houver a necessidade de um tratamento especial no momento da finalização de um servlet, por exemplo, encerrar conexões com o banco.

## Atendimento de requisições
A fase de atendimento de requisições ocorre entre a fase de inicialização e finalização do servlet. O método que atende ás requisições, relacionado a essa fase, é o método service(); pertence á classe javax.servlet.GenericServlet.
Toda vez que uma requisição é recebida o método service() é chamado pelo ServletContainer