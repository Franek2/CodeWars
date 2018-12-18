import java.util.HashSet;

class FindOddXtend {
	def static findIt(int[] a) {
		var countedElements = new HashSet
		
		for (var i = 0; i < a.length; i++) {
			
			if (!countedElements.contains(a.get(i))) {
				var j = i + 1
				var count = 1

				while (j < a.length) {
					if (a.get(i) == a.get(j)) {
						count++
					}
					j++
				}
				if (count % 2 == 1) {
					return a.get(i)
				}
				countedElements.add(a.get(i))
			}
		}
		return a.get(0)
	}
}