class EnglishBeggarsXtend {
	def static beggars(int[] values, int n) {
		var int[] result = newIntArrayOfSize(n)
		var j = 0
		if (n == 0) {
			return result
		}
		for (var i = 0; i < values.length; i++) {
			result.set(j, result.get(j) + values.get(i))
			if (j == result.length - 1) {
				j = 0
			} else {
				j++
			}
		}

		result
	}
}
