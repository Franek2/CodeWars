public class FindUniqeNumber {
	public static double findUniq(double arr[]) {
		for (int i = 0; i < arr.length; i++) {
			int j;
			for (j = 0; j < arr.length; j++) {
				if (arr[i] == arr[j] && i != j)
					break;
				if (j == arr.length - 1)
					return arr[i];
			}
		}
		return 0;
	}
}