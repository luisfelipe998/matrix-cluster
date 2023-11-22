FROM ubuntu:22.04

WORKDIR /app
COPY ./matrix_multiply.py .
COPY ./scripts .
COPY ./sshd_config .

RUN chmod +x entrypoint.sh
RUN chmod +x run-master.sh
RUN chmod +x run-two-nodes.sh
RUN chmod +x run-three-nodes.sh
RUN chmod +x run-four-nodes.sh
RUN chmod +x run-five-nodes.sh

RUN apt update && apt -y install mpich python3-mpi4py python3-numpy
RUN apt update && apt install -y openssh-server openssh-client sshpass vim

EXPOSE 22
ENTRYPOINT [ "./entrypoint.sh" ]