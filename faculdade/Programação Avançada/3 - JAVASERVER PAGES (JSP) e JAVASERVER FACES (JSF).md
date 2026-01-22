
O JSP permite que o código java seja intercalado com o cunteúdo de marcação estático, resultando na páfina sendo compilada e executada no servidor para ser entregue num documento HTML, XHTML ou XML.
O JSF é um framework MVC de aplicação Web que se destina a simplificar o desenvolvimento de interfaces de usuário baseadas em web.

## O que é JSP?

Fazendo uso de tags específicas que começam com <% e terminam com %> o JSP suporta conteúdo dinâmico com código java em páginas HTML e XHTML.

## O SCRIPTLET
É um pedaço de código Java embutido em um código JSP semelhante a um código HTML.
Exemplo de sintaxe de Scriptlet:

<% fragmento de código %>

Todo o texto, tags HTML ou JSP que você escrever devem permanecer fora do scriptlet.

## O que é JSF?
O Java Server Faces (JSF) é um framework de componentes do lado do servidor para a construção de aplicações web baseadas em tecnologia Java. JSF consiste em uma API para representar componentes de gerenciamento de estado, manipulação de eventos, validação do lado do servidor, conversão de dados e definição de navegação de página.
O JSF possui bibliotecas de tags para a adição de componentes para páginas web e para conectar componentes a objetos do lado do servidor. Essas características facilitam significativamente a construção e manutenção de aplicações web com interfaces de usuário do lado do servidor (UIs).

## Arquitetura JSF
O JSF é baseado no MVC. O MVC é um padrão de arquitetura que tem por objetivo isolar a lógica de negocio da lógica de apresentação de uma aplicação.
O MVC divide a aplicação em três tipos de componentes:
- Modelo: Encapsula os dados e as funcionalidades da aplicação
- Visão: É reponsável pela exibição de informações, cujos dados são obtidos do modelo
- Controlador: Recebe as requisições do usuário e aciona o modelo e/ou visão 


## MANAGED BEANS
São objetos utilizados nas applicações JSF e possuem três responsabilidades principais:
1. Receber os dados enviados pelo usuário por meio das telas da aplicação
2. Executar as lógicas para tratar as requisições dos usuários
3. Disponibilizar os dados que devem ser apresentados nas telas da aplicação

