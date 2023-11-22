# cluster

Projeto de um cluster com containers docker para a atividade acadêmica de Arquitetura de computadores II (GB). São subidos 1 a 5 nós (1 master e 4 slaves) para executar um script que calcula uma multiplicação de matriz 10000 x 10000. O resultado é salvo em um arquivo `resultado_matriz.txt` dentro do container master.

Para a comunicação entre os nós do cluster, foi utilizado o MPI através de uma conexão ssh via chaves RSA assinadas.

## Como rodar
- É necessário ter o docker instalado na máquina;
- Rodar `docker compose up --build -d` para subir os containers e configurá-los;
- Rodar `docker exec -it -u 0 master-node /bin/sh` para loggar no nó master;
- Rodar `sh run-five-nodes.sh` para rodar o script com os 5 nós ativos;
- Alternativamente, rodar `sh run-master.sh` para o rodar o script apenas no nó master.

## Resultados das execuções

Os resultados das execuções com cada configuração pode ser conferido no arquivo `RESULTADOS.MD`.