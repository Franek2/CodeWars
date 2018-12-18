
class OddEvenSortXtend {
		def static sortMyString(String s) {
		var i = 0
		var odd = ""
		var even = ""

		while (i < s.length()) {
			if (i == 0 || i % 2 == 0)
				odd += s.charAt(i);
			if (i % 2 == 1)
				even += s.charAt(i);
			i++;
		}
		 odd + " " + even
	}}