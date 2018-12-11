
def computeAvg(matrix) {
	println matrix
	def result = []
	matrix.eachWithIndex { a, i ->
  		result.add(a.sum() / a.size())
	}
	return result	
}

def matrix =  [[1, 23, 5, 4], [2, 4, 5, 6, 7, 8]]
println computeAvg(matrix)
