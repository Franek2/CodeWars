class BumpsTheRoadXtend {
	def static bumps(String road) {
		var bumps = 0
		for (var i = 0; i < road.length - 1; i++) {
			if (road.charAt(i) == 'n') {
				bumps++
				if (bumps >= 15) {
					return "Car Dead"
				}
			}
		}
		"WooHoo!---Xtend1"
	}

	def static bumps2(String road) {
		return if(road.split("n", -1).length - 1 <= 15) "Woohoo!---Xtend2" else "Car Dead"
	}
}
