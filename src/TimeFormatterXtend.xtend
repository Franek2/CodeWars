public class TimeFormatterXtend {

	def static formatDuration(int seconds) {
		var secondsCop = seconds

		if (secondsCop == 0)
			return "now"

		var andString = "  and  "
		var result = ""
		var years = 0
		var days = 0
		var hours = 0
		var minutes = 0
		val minutesSeconds = 60
		val hourSeconds = minutesSeconds * 60
		val daysSeconds = hourSeconds * 24
		val yearSeconds = daysSeconds * 365
		
		while (secondsCop >= 60) {
			var flagContinue = true
			
			if (secondsCop >= yearSeconds && flagContinue) {
				years++
				secondsCop -= yearSeconds
				flagContinue = false
			} else if (secondsCop >= daysSeconds && flagContinue) {
				days++
				secondsCop -= daysSeconds
				flagContinue = false
			} else if (secondsCop >= hourSeconds && flagContinue) {
				hours++
				secondsCop -= hourSeconds
				flagContinue = false
			} else if (secondsCop >= minutesSeconds && flagContinue) {
				minutes++;
				secondsCop -= minutesSeconds
				flagContinue = false
			}
		}
		if (years != 0) {
			switch (years) {
			case 1:
				result += "1 year,"

			default:
				result += years + " years,"
			}
		}
		if (years != 0 && days != 0 && minutes == 0 && secondsCop == 0) {
			result += andString;
		}

		if (days != 0) {
			switch (days) {
			case 1:
				result += " 1 day,"

			default:
				result += " " + days + " days,"
			}

		}
		if (days != 0 && hours != 0 && minutes == 0 && secondsCop == 0) {
			result += andString;
		}
		if (hours != 0) {
			switch (hours) {
			case 1:
				result += " 1 hour,"

			default:
				result += " " + hours + " hours,"
			}
		}
		if (hours != 0 && minutes != 0 && secondsCop == 0) {
			result += andString;
		}
		if (minutes != 0) {
			switch (minutes) {
			case 1:
				result += " 1 minute,"

			default:
				result += " " + minutes + " minutes,"
			}
			if (minutes != 0 && secondsCop != 0) {
				result += andString
			}
		}
		switch (secondsCop) {
		case 0:{}
		case 1:
			result += " 1 second"
		default:
			result += " " + secondsCop + " seconds"
		}

		return result.replace(",", " ").replace("   ", " ").replace("  ", ",").replaceAll(",", ", ").trim
	}
}