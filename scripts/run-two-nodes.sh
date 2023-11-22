#!/bin/sh

mpiexec -n 2 --allow-run-as-root --host master-node,node1 python3 matrix_multiply.py 10000
