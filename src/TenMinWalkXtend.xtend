class TenMinWalkXtend {
	def static isValid(char[] walk) {

		var northSouthSum = 0
		var westEastSum = 0
		val char n = 'n'
		val char s = 's'
		val char w = 'w'
		val char e = 'e'

		if (walk.length != 10 || walk.length % 2 != 0) {
			return false
		} else {
			for (var i = 0; i <= walk.length - 1; i++) {
				switch walk.get(i) {
					case n:
						northSouthSum++
					case s:
						northSouthSum--
					case w:
						westEastSum++
					case e:
						westEastSum--
				}
			}
			if (northSouthSum == 0 && westEastSum == 0) {
				return true
			}
		}
		false
	}
}
