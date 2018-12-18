
public class BumpsTheRoad {
	public static String bumps(final String road) {
		int bumps = 0;
		for (int i = 0; i < road.length() - 1; i++) {
			if (road.charAt(i) == 'n') {
				bumps++;
				if (bumps >= 15) {
					return "Car Dead";
				}
			}
		}
		return "WooHoo!";
	}

	public static String bumps2(final String road) {

		return road.split("n", -1).length - 1 <= 15 ? "Woohoo!" : "Car Dead";
	}
}