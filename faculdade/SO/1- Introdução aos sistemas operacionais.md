## Diferença entre hardware e software

- **Hardware:** Refere-se ao componentes físicos do computador
- **Software:** É a parte lógica do computador.

O sistema operacional, sendo um software, assume um papel centralizado e vital para o bom funcionamento de um computador.
Todos os demais aplicativos dependem do sistema operacional para a propria execução.

Para garantir segurança e estabilidade ao sistema operacional, existe a divisão de responsabilidades entre o **modo núcleo** e o **modo usuário**.

- Modo núcleo: Cérebro do sistema, reponsável por tarefas críticas, como gerenciar a memória e os dispositivos.
- Modo usuário: Onde os seus aplicativos, como navegadores e editores de texto, são executados, sem acesso direto aos componentes de hardware.

Essa separação impede que um software com falhas cause instabilidade no sistema como um todo.

## Funções de um sistema operacional

SO é o software fundamental que permite a comunicação entre o hardware do computador e os aplicativos. Atua como um intermediário, facilitando a execução de tarefas e o gerenciamento de recursos.

Funções de um SO:

1. Gerenciar recursos e hardwares:
	1. Cabe ao SO gerenciar o uso do hardware por parte dos softwares. O SO é responsável por gerenciar o:
			1. Processador
			2. Memória
			3. Dispositivos de entrada/ saida
			4. Dispositivos de armazenamento de arquivos
2. Proteção e segurança
	1. O SO deve implementar mecanismos que elevem a proteção contra ataques internos e externos
		1. Internos: Acessos não autorizados
		2. Externos: Vírus
3. Fornecer uma interface com o usuário
	1. Interface de linha de comando (CLI)
	2. Interface gráfica do usuário (GUI)
4. Suportar a execução de aplicaivos
	1. Promove suporte a hardware e software mediante a provisão da biblioteca de sistemas (drivers) e interpretadores de programas

## As gerações de computadores e os sistemas operacionais

Tanenbaum considera 5 geracoes de computadores.

**Primeira geração:** Não existiam sistemas operacionais. O gerenciamento do hardware era feito de forma manual com válvulas. Os usuários programavam diretamente o hardware. A execução de tarefas era sequencial.

**Segunda geração:** Introdução dos transistores, substituindo válvulas eletronicas. Surgimento dos *mainframes*. Surgimento dos SOs FMS (Fortran Monitor System) e o IBSYS, ambos da IBM. Desenvolvimento da multprogramação, que é a técnica que permite ao sistema operacional manter vários jobs na memória principal, alternando entre eles para maximizar o uso do processador. Enquanto um job aguarda a finalização de uma operação de entrada e saída, outro pode utilizar a CPU, tornando o processamento mais eficiente.

**Terceira geração:** Consolidou a multiprogramação. Trouxe o SPOOL (Simultaneous Peripheral Operation On Line) e o timesharing. O SPOOL desacopla as operações de E/ S do processamento principal, utilizando áreas de armazenamento em disco, como buffers. Isso permite que a leitura e a gravação de dados ocorram em paralelo com o processamento.

O timesharing permitiu que multiplos usuários utilizassem o mesmo computador simultaneamente a partir de terminais conectados. O SO divide o tempo de processamento entre os usuários.

**Quarta geração:** Democratizou o acesso à tecnologia. Surgimento de microcomputadores. MS-DOS com CLI, conquistou o mercado corporativo e domestico. Apple Macintosh, que utilizava o macOS que popularizou GUIs.

**Quinta geração:** Miniaturização e criação de notebooks, tablets e smartphones, seguindo a Lei de Moore.Nas categorias “smartphones” e “tablets”, encontramos a necessidade de outros
sistemas operacionais, em especial, o iOS e o Android.


## Tipos de Sistemas Operacionais

Tanenbaum classifica os SOs em nove categorias:

1. **Sistemas operacionais de computadores de grande porte**

Mainframes são sistemas robustos. Os OSs devem ser projetadoss para lidar com um grande volume de dados e multiplas tarefas simultaneas, com foco em alta disponibilidade e segurança.

2. **Sistemas operacionais de servidores**

Os servidores não precisam ser necessariamente de grande porte, projetados para fornecer serviços e recursos a outros computadores em uma rede. SOs como Linux, Windows Server, Solaris e FreeBSD, são frequentemente utilizados em servidores. Oferecem CLI e GUI.

3. **Sistemas operacionais de multiprocessadores**

Faz a gestão de multiplos processadores interconectados. Com isso, há um aumento no poder de processamento. Versões específicas do Linux e Windows Server, são responsáveis por gerenciar a comunicação entre os processadores.

4. **Sistemas operacionais de computadores pessoais**

São projetados para oferecer uma experiencia amigável e eficiente em tarefas cotidianas.

5. **Sistemas operacionais de computadores portáteis**

Sistemas como Android e o IOS se destacam pela interface gráfica intuitiva, projetada para telas sensíveis ao toque, dispensando o uso de mouse e teclado na maioria das tarefas.

6. **Sistemas operacionais de cartões inteligentes**

Um exemplo são os cartões bancários. Incorporam um chip que funciona como uma pequena unidade de processamento. Essa CPU, por sua vez, necessita de um SO para funcionar. Esses SOs são extremamente compactos e otimizados para as capacidades limitadas de processamento e memória do chip.
Além dos cartões bancários, os cartões SIM (Subscriber Identity Module), também são exemplos de smart cards, armazenando informações do usuário e controlando o acesso á rede móvel.

7. **Sistemas operacionais embarcados**

Diferente dos SOs para computadores os sistemas embarcados são otimizados para funcionar em dispositivos específicos, com recursos de hardware limitados. Utilizam microcontroladores ou microprocessadores com baixo consumo de energia, pouca memória RAM e armazanamento em memória flash para o sistema operaciaonal e as aplicações.
A crescente onda da Internet das Coisas (IoT) impulsionou ainda mais o
desenvolvimento e a aplicação de sistemas operacionais embarcados. Afinal,
conectar dispositivos, como eletrodomésticos, sensores industriais e weara-
bles à internet, exige sistemas operacionais leves, eficientes e com recursos
de comunicação robustos.

8. **Sistemas operacionais de nós sensores (sensor node)**

São pequenos computadores com capacidade de processamento, memória e comunicação, geralmente sem fio. SOs para nós sensores são responsáveis por gerenciar os recursos limitados desses dispositivos, coletar os dados dos sensores, processa-los localmente e transmiti-los para uma central de monitoramento.

9. **Sistemas operacionais de tempos real**

É aquele em que a correção de uma operação depende não apenas da lógica computacional, mas também do tempo em que ela é realizada. Sistemas de controle de voo, equipamentos médicos, linhas de produção automatizadas.

Embora o autor Andrew S. Tanenbaum separe as últimas três categorias de forma
separada no livro Sistemas Operacionais Modernos, na prática, elas são utiliza-
das de forma conjunta, afinal, um nó sensor nada mais é do que um dispositivo
embarcado com capacidade de comunicação e foco em coleta de dados, muitas
vezes, operando sob restrições de tempo real.
	Exemplos de sistema operacional
	- eCos (embedded Configurable operating system): SO de código aberto
	- FreeRTOS: codigo-aberto, gratuito e portável, ideal para aplicações com recursos limitados
	- RTEMS: codigo-aberto, utilizado em aplicações espaciais, médicas e de automação
	- Nucleus RTOS: SO com foco em segurança, utilizado em dispositivos médicos, industriais e automotivos
	- Amazon FreeRTOS: versao do FreeRTOS com integração para a nuvem da Amazon

