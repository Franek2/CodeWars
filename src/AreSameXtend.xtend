import java.util.ArrayList;

class AreSameXtend {

	def static comp(int[] a, int[] b) {

		var ArrayList<Integer> copyOfA = new ArrayList
		var ArrayList<Integer> copyOfB = new ArrayList

		if (a == null || b == null)
			return false
		if (a.length == 0 && b.length == 0)
			return true
		if (!(a.length == b.length) || a.length == 0 || b.length == 0)
			return false

		for (var i = 0; i < a.length; i++) {
			copyOfA.add(a.get(i))
			copyOfB.add(b.get(i))
		}

		for (integer : copyOfA) {
			var tempElement = integer as int * integer as int;
			if (!copyOfB.contains(tempElement)) {
				return false
			}
			copyOfB.remove(tempElement as Integer)
		}
		copyOfB.isEmpty();
	}
}