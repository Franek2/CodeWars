public class TenMinWalk {
	public static boolean isValid(char[] walk) {
		int northSouthSum = 0;
		int westEastSum = 0;
		if (walk.length != 10 || walk.length % 2 != 0) {
			return false;
		} else {
			for (int i = 0; i <= walk.length - 1; i++) {
				switch (walk[i]) {
				case 'n':
					northSouthSum++;
					break;
				case 's':
					northSouthSum--;
					break;
				case 'w':
					westEastSum++;
					break;
				case 'e':
					westEastSum--;
					break;
				}
			}
			if (northSouthSum == 0 && westEastSum == 0) {
				return true;
			}
		}
		return false;
	}
}