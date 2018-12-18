public class TimeFormatter {

	public static String formatDuration(int seconds) {

		if (seconds == 0)
			return "now";

		String andString = "  and  ";
		String result = "";
		int years = 0;
		int days = 0;
		int hours = 0;
		int minutes = 0;

		while (seconds >= 60) {
			final int minutesSeconds = 60;
			final int hourSeconds = minutesSeconds * 60;
			final int daysSeconds = hourSeconds * 24;
			final int yearSeconds = daysSeconds * 365;
			
			if (seconds >= yearSeconds) {
				years++;
				seconds -= yearSeconds;
				continue;
			} else if (seconds >= daysSeconds) {
				days++;
				seconds -= daysSeconds;
				continue;
			} else if (seconds >= hourSeconds) {
				hours++;
				seconds -= hourSeconds;
				continue;
			} else if (seconds >= minutesSeconds) {
				minutes++;
				seconds -= minutesSeconds;
			}
		}
		if (years != 0) {
			switch (years) {
			case 1:
				result += "1 year,";
				break;

			default:
				result += years + " years,";
				break;
			}
		}
		if (years != 0 && days != 0 && minutes == 0 && seconds == 0) {
			result += andString;
		}

		if (days != 0) {
			switch (days) {
			case 1:
				result += " 1 day,";
				break;

			default:
				result += " " + days + " days,";
				break;
			}

		}
		if (days != 0 && hours != 0 && minutes == 0 && seconds == 0) {
			result += andString;
		}
		if (hours != 0) {
			switch (hours) {
			case 1:
				result += " 1 hour,";
				break;

			default:
				result += " " + hours + " hours,";
				break;
			}
		}
		if (hours != 0 && minutes != 0 && seconds == 0) {
			result += andString;
		}
		if (minutes != 0) {
			switch (minutes) {
			case 1:
				result += " 1 minute,";
				break;

			default:
				result += " " + minutes + " minutes,";
				break;
			}
			if (minutes != 0 && seconds != 0) {
				result += andString;
			}
		}
		switch (seconds) {
		case 0:
			break;
		case 1:
			result += " 1 second";
			break;
		default:
			result += " " + seconds + " seconds";
			break;
		}

		return result.replace(",", " ").replace("   ", " ").replace("  ", ",").replaceAll(",", ", ").trim();
	}
}