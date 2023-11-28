#!/bin/sh

mpirun -np 5 --allow-run-as-root --host master-node,node1,node2,node3,node4 python3 matrix_multiply.py 10000
