class FindUniqeNumberXtend {
	def static double findUniq(double[] arr) {
		var break = true
		for (var i = 0; i < arr.length; i++) {
			var int j
			for (j = 0; j < arr.length; j++) {
				break = true
				if (arr.get(i) == arr.get(j) && i != j)
					break = false
				if (j == arr.length - 1 && break)
					return arr.get(i)
			}
		}
	}
}
