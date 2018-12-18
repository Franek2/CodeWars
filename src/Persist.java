public class Persist {
	public static int persistence(long n) {
		if (n<10) return 0;
		long multi=1;
		int sum=0;
		while (n>=10) {
		    while (n > 0) {
                multi *= n % 10;
                n /= 10;
            }
		    n=multi;
		    multi=1;
		    sum++;
		}
		return sum;
	}
}