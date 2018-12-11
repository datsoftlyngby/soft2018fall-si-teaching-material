result = []
matrix =  [[1, 23, 5, 4], [2, 4, 5, 6, 7, 8]]
for vector in matrix:
    result.append(sum(vector) / len(vector))
print(result)
