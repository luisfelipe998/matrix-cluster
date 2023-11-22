#!/bin/sh

mpiexec -n 4 --allow-run-as-root --host master-node,node1,node2,node3 python3 matrix_multiply.py 10000
