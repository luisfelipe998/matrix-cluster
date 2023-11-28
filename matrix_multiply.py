from mpi4py import MPI
import numpy as np
import sys
import time

start = time.time()
comm = MPI.COMM_WORLD
rank = comm.Get_rank()
size = comm.Get_size()


def matrix_multiplication(A, B):
    return np.dot(A, B)


rows, cols = int(sys.argv[1]), int(sys.argv[1])
matrix_size = rows * cols

A = np.random.rand(matrix_size).reshape(rows, cols)
B = np.random.rand(matrix_size).reshape(rows, cols)

local_rows = rows // size
local_A = np.empty((local_rows, cols))
comm.Scatter(A, local_A)

local_C = matrix_multiplication(local_A, B)

C = np.empty((rows, cols))
comm.Gather(local_C, C)

if rank == 0:
    end = round(time.time() - start, 2)
    print('Time elasped: ' + str(end) + ' seconds\n')
    print("Matriz Resultante:")
    print(C)
    np.savetxt("resultado_matriz.txt", C, delimiter=" ", fmt="%s")
