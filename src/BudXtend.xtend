class BudXtend {
	def static buddy(long start, long limit) {

		for (var i = start; i <= limit; i++) {
			var sumOfDivisors_i = addAllMyDivisors(i);
			var sumOfDivisorsIminus = addAllMyDivisors(sumOfDivisors_i - 1);
			
			if (sumOfDivisorsIminus == i + 1 && sumOfDivisors_i-1>i) {
				return "(" + i + " " + (sumOfDivisors_i - 1) + ")"
			}
		}
		"Nothing"
	}

	private def static addAllMyDivisors(long input) {
		var maxD = Math.ceil(Math.sqrt(input)) as long
		var sum = 1L
		for (var i = 2; i <= maxD; i++) {
			if (input % i == 0) {
				sum += i
				var d = Math.ceil(input/i) as long
				if (d != i && d*i==input)
					sum += d
			}
		}
		sum
	}
}