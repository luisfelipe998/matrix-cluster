# Resultados

Nesta seção será apresentado os resultados obtidos da multiplicação da matriz com 10000 linhas por 10000 colunas nas configurações de 1 a 5 nodes, com variações no número de processos (oversubscription) em cada configuração. A matriz é inicializada com valores entre 0 e 1 em cada célula.

Foi utilizado um ambiente docker disponibilizando como recursos 1 CPU e 8 GB de RAM da máquina host para a execução da tarefa. Ressalta-se que os testes foram realizados localmente, em um MacBook de uso geral, portanto, os tempos de execução podem variar bastante se forem executados em outro computador, ou se a máquina estiver sob uso intenso de CPU por outros processos no momento da execução.

## Comparativo

A seguir, apresenta-se uma tabela dos resultados obtidos nas diferentes configurações de execução.

| Nodes | Processos | Tempo de execução (s) |
| :---: | :-------: | :-------------------: |
|   1   |     1     |        987.71         |
|   2   |     2     |        605.29         |
|   3   |     3     |        424.74         |
|   4   |     4     |        363.18         |
|   5   |     5     |        252.36         |

Observa-se que, dado um ambiente configurado com apenas uma CPU, o tempo de execução da tarefa é drasticamente impactado com a paralelização, sendo reduzida em valores que tendem a se aproximar do total dividido pelo número de nodes, a cada adição de um novo node. A redução não é exatamente a metade pois há um overhead de comunicação dos dados via rede entre os nós, algo que não existe na execução sequencial puramente sequencial. Apesar do MPI ser relativamente invasivo, uma vez que é necessário implementá-lo a nível de código, verifica-se que ele é uma poderosa ferramenta para programação paralela, podendo ser utilizado como alternativa quando se necessita extrair o máximo de desempenho em uma tarefa computacional. Com o ambiente configurado para 1 CPU de recurso, não foi identificado melhoria de performance realizando o oversubscription de processos (mais subdivisões em processos do que nodes disponíveis). Os tempos de execução permaneceram muito próximos aos apresentados na tabela anterior.
