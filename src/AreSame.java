import java.util.ArrayList;

public class AreSame {

	public static boolean comp(int[] a, int[] b) {

		ArrayList<Integer> copyOfA = new ArrayList<>();
		ArrayList<Integer> copyOfB = new ArrayList<>();

		if (a == null || b == null)
			return false;
		if (a.length == 0 && b.length == 0)
			return true;
		if (!(a.length == b.length) || a.length == 0 || b.length == 0)
			return false;

		for (int i = 0; i < a.length; i++) {
			copyOfA.add(a[i]);
			copyOfB.add(b[i]);
		}

		for (Integer integer : copyOfA) {
			int tempElement = (int) integer * (int) integer;
			if (!copyOfB.contains(tempElement)) {
				return false;
			}
			copyOfB.remove((Integer) tempElement);
		}
		return copyOfB.isEmpty();
	}
}