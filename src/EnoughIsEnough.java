import java.util.ArrayList;

public class EnoughIsEnough {

	public static int[] deleteNth(int[] elements, int maxOccurrences) {
		if (!checkInput(elements, maxOccurrences)) {
			
			ArrayList<Integer> resultList = createArrayListWithoutOccurences(elements, maxOccurrences);
			int[] result = createArrayFromArrayList(resultList);
			
			return result;
		}
		return new int[0];
	}

	private static ArrayList<Integer> createArrayListWithoutOccurences(int[] elements, int maxOccurrences) {
		ArrayList<Integer> resultList = addElementsToArrayList(elements);

		for (int i = 0; i < resultList.size(); i++) {
			int repeat = 1;
			int j = i + 1;
			resultList = findAndDeleteOccurences(maxOccurrences, resultList, i, repeat, j);
		}
		return resultList;
	}

	private static int[] createArrayFromArrayList(ArrayList<Integer> resultList) {
		int[] result = new int[resultList.size()];
		int i = 0;
		for (Integer integer : resultList) {
			result[i] = integer;
			i++;
		}
		return result;
	}

	private static ArrayList<Integer> findAndDeleteOccurences(int maxOccurrences, ArrayList<Integer> resultList, int i, int repeat,
			int j) {
		while (j < resultList.size()) {
			if (resultList.get(i) == resultList.get(j)) {
				repeat++;
				if (repeat > maxOccurrences) {
					resultList.remove(resultList.lastIndexOf(resultList.get(i)));
					j--;
				}
			}

			j++;
		}
		return resultList;
	}

	private static ArrayList<Integer> addElementsToArrayList(int[] elements) {
		ArrayList<Integer> resultList = new ArrayList<>();

		for (int i = 0; i < elements.length; i++) {
			resultList.add(elements[i]);
		}
		return resultList;
	}

	private static boolean checkInput(int[] elements, int maxOccurrences) {
		return elements == null || elements.length == 0 || maxOccurrences == 0;
	}

}