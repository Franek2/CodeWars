import java.util.HashSet;

public class FindOdd {
	public static int findIt(int[] a) {
		HashSet<Integer> countedElements = new HashSet<>();
		
		for (int i = 0; i < a.length; i++) {
			
			if (!countedElements.contains(a[i])) {
				int j = i + 1;
				int count = 1;

				while (j < a.length) {
					if (a[i] == a[j]) {
						count++;
					}
					j++;
				}
				if (count % 2 == 1) {
					return a[i];
				}
				countedElements.add(a[i]);
			}
		}
		return a[0];
	}
}