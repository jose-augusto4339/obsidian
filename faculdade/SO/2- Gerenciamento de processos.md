O SO deve gerenciar cinco grandes áreas para que o usuário tenha um boa experiencia:
- Gestão do processador
- Gestão de memória
- Gestão de dispositivos de entrada e saída
- Gestão de arquivos
- Gestão de proteção
A gestão do processador também é conhecida como gerência de processos ou atividades. Visa distribuir a capacidade de processamento entra as aplicações. Caso não ocorra uma distribuição igualitária, somente uma aplicação irá acessar o processador, acarretando na monopolização do hardware. Cabe ao SO gerenciar as múltiplas requisições de processos e coordenar o acesso aos núcleos de cada processador.

A principal função do processador é interpretar e executar instruções codificadas em linguagem de máquina, realizando operações básicas, como adição, subtração, comparação e deslocamento de bits. Essas instruções são organizadas em sequencias lógicas, formando programas que controlam o funcionamento do computador.

Todo processador possui ao menos um núcleo, que realiza uma única tarefa por vez (single-core). Para aumentar a quantidade de processamento simultâneos, foi desenvolvida a tecnologia de vários núcleos (multi-core).
Cabe ao SO usar estratégias para utilizar o máximo potencial desse hardware.

## Definição de processos e threads

### Processos
Um processo pode ser considerado um programa em execução. O SO aloca recursos do processador para a devida execução do programa, dando origem a um processo, ou seja, um programa em execução.

### Threads
Cada atividade de um processo é chamada de thread. O SO modernos são capazes de lidar com processos de múltiplas atividades. Nessa categoria, o processo é chamado de multithread.

A utilização de threads traz vantagens e desvantagens.
- Vantagens
	- Melhor aproveitamento dos recursos tanto de memória como processador
	- Aumento da capacidade de respostas do sistema operacional
- Desvantagens
	- Sincronização: é preciso garantir que as threads compartilhem os recursos de forma segura, evitando conflitos e inconsistências de dados.
	- Gerenciamento de erros: erros em uma thread podem afetar o funcionamento do processo como um todo.


## Estrutura de um processo

Silberschatz, Galvin e Gagne dividiram a estrutura de um processo em quatro áreas: PILHA, HEAP, DADOS e TEXTO. Essa divisão é chamada de estrutura de segmentos, que define um espaço de memória separado para cada processo, permitindo que o SO gerencie os recursos de forma segura e eficiente.
Os segmentos HEAP e PILHA podem aumentar de tamanho à medida que o processo é executado. O segmento de TEXTO contém  o código executável do programa, ou seja, as instruções que o processador executará (código-fonte). O jegmento de DADOS armazena as variáveis globais e estáticas do programa, que são alocadas durante a compilação. O segmento de HEAP armazena as variáveis alocadas dinamicamente durante a execução do programa. O segmento PILHA armazena informações locais, como variáveis locais, parâmetros de funções e endereços de retorno

## Criação do processo
Segundo Tanenbaum, um processo pode ser criado mediante quatro situações:
- Início do sistema
- Requisição de um usuário
- Criação de processo por um processo em execução
- Tarefas em lote(batch job)

## Termino do processo

O SO trabalha com 4 maneiras, conforme definido por Tanenbaum:
1. Termino normal
	1. O usuário também pode solicitar o termino voluntariamente
2. Termino por erro
	1. Ocorre quando o processo encontra um erro, não sendo fatal. Ele executa as ações necessárias para lidar com o erro e finaliza a execução.
3. Erro fatal
	1. Ocorre quando o processo encontra um erro que não pode ser tratado, levando a uma falha critica. O processo é interrompido abruptamente, sem a possibilidade de concluir a execução.
4. Cancelamento por outro processo
	1. Um proceso com privilégios especiais, como o SO ou um programa com permissões específicas, pode solicitar o termino de outro processo.


## Estado do processo
O SO sabe se o processo está em execução, ou não, mediante a técnica de troca de estados. Silberschatz, Galvin e Gagne definem cinco tipos de estados para os processos:

- NEW: Um processo recém-criado está neste estado. Ele ainda não está pronto para execução
- READY: Neste estado, o processo está pronto para execução, mas não tem um processador disponível. Ele está na fila de espera
- RUNNING: O processo está sendo executado pelo processador. É o único estado em que o processo está realmente executando suas tarefas.
- WAITING: O processo entra neste estado quando precisa aguardar um evento externo para continuar a execução.
- TERMINATED: O processo finaliza a execução

## Escalonamento de processos
Utilização de algoritmos para decidir qual processo deve ser executado. Tanenbaum define que, deve haver escalonamento em 4 situações:

- Termino de processos
- Criação de um novo processo
- Bloqueio de um processo por entrada/saída
- Ocorrência de interrupções de entrada/saída

Para lidar com essas situações e garantir a execução justa e eficiente dos processos, o sistema operacional dispõe de um conjunto diversificado de algoritmos de escalonamento. Esses algoritmos podem ser categorizados em duas classes principais:

- Algoritmos de escalonamento preemptivo: Interrompem a execução de um processo após um tempo máximo definido.
- Algoritmos de escalonamento não-preemptivo: Permite que um processo continue a ser executado até que termine naturalmente

### Primeiro a chegar, primeiro a ser servido (FCFS)
Não-preemptivo, o FIFO prioriza o processo que chega primeiro à fila de processamento, concedendo-lhe acesso irrestrito à CPU até a finalização. Após a conclusão, o próximo da fila é escalonado. Encontra maior aplicabilidade em sistemas de processamento em lote.

### Tarefa mais curta primeiro (SJF)
Prioriza a execução de tarefas mais curtas. Quando várias tarefas estão aguardando o acesso à CPU, o escalonador escolhe a tarefa com o menor tempo estimado de execução.

###  Próximo de menor tempo restante
Semelhante ao SJF, mas ele usa uma estratégia preemptiva, ou seja, envolvendo um tempo máximo fixado.

### Chaveamento circular (Round-Robin)
Aprimora o conceito de FCFS ao introduzir a preempção. Nesse processo, cada processo recebe uma fatia de tempo predefinida para utilizar a CPU, denominada quantum. Proporciona a experiencia de multitarefa.

Essa alternância constante e organizada, impulsionada pela velocidade das CPUs modernas, cria a percepção de que múltiplas tarefas estão sendo executadas simultaneamente, evitando que um único processo monopolize o processador e cause longos tempos de espera para os demais

### Escalonamento pro prioridade
O chaveamento circular trata todos os processos de forma igualitária, mas, em algumas situações, alguns processos são mais importantes que outros, e o sistema operacional pode decidir escalonar seguindo priorizações.
