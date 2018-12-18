public class Bud {
	public static String buddy(long start, long limit) {

		for (long i = start; i <= limit; i++) {
			long sumOfDivisors_i = addAllMyDivisors(i);
			long sumOfDivisorsIminus = addAllMyDivisors(sumOfDivisors_i - 1);
			
			if (sumOfDivisorsIminus == i + 1 && sumOfDivisors_i-1>i) {
				return "(" + i + " " + (sumOfDivisors_i - 1) + ")";
			}
		}
		return "Nothing";
	}

	private static long addAllMyDivisors(long input) {
		long maxD = (long) Math.ceil(Math.sqrt(input));
		long sum = 1;
		for (int i = 2; i <= maxD; i++) {
			if (input % i == 0) {
				sum += i;
				long d = (long) Math.ceil(input/i);
				if (d != i && d*i==input)
					sum += d;
			}
		}
		return sum;
	}
}