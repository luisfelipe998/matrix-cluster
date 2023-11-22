# Resultados

Nesta seção será apresentado os resultados obtidos da multiplicação da matriz com 10000 linhas por 10000 colunas nas configurações de 1 a 5 nodes, com variações no número de processos (oversubscription) em cada configuração. A matriz é inicializada com valores entre 0 e 1 em cada célula.

Foi utilizado um ambiente docker disponibilizando como recursos 5 CPUs e 8 GB de RAM para a execução da tarefa.

## Comparativo

A seguir, apresenta-se uma tabela dos resultados obtidos nas diferentes configurações de execução.

| Nodes | Processos | Tempo de execução (s) |
| :---: | :-------: | :-------------------: |
|   1   |     1     |         956.85        |
|   2   |     2     |         teste         |
|   3   |     3     |         teste         |
|   4   |     4     |         stest         |
|   5   |     5     |       tetesttws       |

Observa-se que, dado um ambiente configurado com apenas uma CPU, o tempo de execução da tarefa é drasticamente impactado com a paralelização, sendo reduzida em valores que tendem a se a proximar da metade do total a cada adição de um novo node. A redução não é exatamente a metade pois há um overhead de comunicação dos dados via rede entre os nós, algo que não existe na execução sequencial.