class SolutionXtend {

	def solution(int number) {
		var sum = 0
		for (var i = 0; i < number; i++) {
			if (i % 3 == 0 || i % 5 == 0) {
				sum += i
			}
		}
		sum;
	}
}
