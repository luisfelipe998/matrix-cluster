#!/bin/sh

mpiexec -n 1 --allow-run-as-root --host master-node python3 matrix_multiply.py 10000
