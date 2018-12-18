
public class EnglishBeggars {
	public static int[] beggars(int[] values, int n) {
		int[] result = new int[n];
		int j = 0;
		if (n==0) {
			return result;
		}
		for (int i = 0; i < values.length; i++) {
			result[j] = result[j] + values[i];
			if (j == result.length-1) {
				j = 0;
			} else {
				j++;
			}
		}

		return result;
	}
}