public class OddEvenSort {
	public static String sortMyString(String s) {
		int i = 0;
		String odd = "";
		String even = "";

		while (i < s.length()) {
			if (i == 0 || i % 2 == 0)
				odd += s.charAt(i);
			else if (i % 2 == 1)
				even += s.charAt(i);
			i++;
		}
		return odd + " " + even;
	}
}