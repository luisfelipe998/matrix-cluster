# Resultados

Nesta seção será apresentado os resultados obtidos da multiplicação da matriz com 10000 linhas por 10000 colunas nas configurações de 1 a 5 nodes, com variações no número de processos (oversubscription) em cada configuração. A matriz é inicializada com valores entre 0 e 1 em cada célula.

Foi utilizado um ambiente docker disponibilizando como recursos 1 CPU e 8 GB de RAM da máquina host para a execução da tarefa.

## Comparativo

A seguir, apresenta-se uma tabela dos resultados obtidos nas diferentes configurações de execução.

| Nodes | Processos | Tempo de execução (s) |
| :---: | :-------: | :-------------------: |
|   1   |     1     |        956.85         |
|   2   |     2     |        560.21         |
|   3   |     3     |        381.67         |
|   4   |     4     |        297.06         |
|   5   |     5     |        227.17         |

Observa-se que, dado um ambiente configurado com apenas uma CPU, o tempo de execução da tarefa é drasticamente impactado com a paralelização, sendo reduzida em valores que tendem a se aproximar do total dividido pelo número de nodes, a cada adição de um novo node. A redução não é exatamente a metade pois há um overhead de comunicação dos dados via rede entre os nós, algo que não existe na execução sequencial puramente sequencial. Com o ambiente configurado para 1 CPU de recurso, não foi identificado melhoria de performance realizando o oversubscription de processos (mais subdivisões em processos do que nodes disponíveis). Os tempos de execução permaneceram muito próximos aos apresentados na tabela anterior.