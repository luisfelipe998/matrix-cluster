#!/bin/sh

mpirun -np 3 --allow-run-as-root --host master-node,node1,node2 python3 matrix_multiply.py 10000
