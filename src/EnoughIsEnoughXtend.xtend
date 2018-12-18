import java.util.ArrayList;

class EnoughIsEnoughXtend {

	def static deleteNth(int[] elements, int maxOccurrences) {
		if (!checkInput(elements, maxOccurrences)) {
			
			var resultList = createArrayListWithoutOccurences(elements, maxOccurrences)
			var result = createArrayFromArrayList(resultList)
			
			return result
		}
		newIntArrayOfSize(0)
	}

	def static ArrayList<Integer> createArrayListWithoutOccurences(int[] elements, int maxOccurrences) {
		var resultList = addElementsToArrayList(elements)

		for (var i = 0; i < resultList.size(); i++) {
			var repeat = 1
			var j = i + 1
			resultList = findAndDeleteOccurences(maxOccurrences, resultList, i, repeat, j);
		}
		return resultList;
	}

	def static createArrayFromArrayList(ArrayList<Integer> resultList) {
		var result = newIntArrayOfSize(resultList.size)
		var i = 0;
		for (integer : resultList) {
			result.set(i,integer)
			i++
		}
		result
	}

	def static findAndDeleteOccurences(int maxOccurrences, ArrayList<Integer> resultList, int i, int repeat,int j) {
				var copyRepeat = repeat;
				var copyJ = j
		while (copyJ < resultList.size) {
			if (resultList.get(i).equals(resultList.get(copyJ))) {
				copyRepeat++
				if (copyRepeat > maxOccurrences) {
					resultList.remove(resultList.lastIndexOf(resultList.get(i)))
					copyJ--
				}
			}

			copyJ++
		}
		resultList
	}

	def static addElementsToArrayList(int[] elements) {
		var resultList = new ArrayList

		for (var i = 0; i < elements.length; i++) {
			resultList.add(elements.get(i))
		}
		
		resultList
	}

	def static boolean checkInput(int[] elements, int maxOccurrences) {
		elements.equals(null) || elements.length == 0 || maxOccurrences == 0
	}

}