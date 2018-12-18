import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class WeightSort {

	public static String orderWeight(String strng) {
		ArrayList<WeightMan> weightMans = new ArrayList<>();
		if (strng.isEmpty() || strng.trim().split(" ").length == 1)
			return "";
		for (String strNumber : strng.trim().replaceAll(" +", " ").split(" ")) {
			Long sum = 0L;
			Long numb = Long.parseLong(strNumber);
			
			while (numb > 0) {
				sum += numb % 10;
				numb /= 10;
			}
			weightMans.add(new WeightMan(Long.parseLong(strNumber), sum));
		}

		Collections.sort(weightMans, new Comparator<WeightMan>() {
			@Override
			public int compare(WeightMan o1, WeightMan o2) {
				if (o1.digitsWeight.compareTo(o2.digitsWeight) == 0) {
					return o1.normalWeight.toString().compareTo(o2.normalWeight.toString());
				}
				return o1.digitsWeight.compareTo(o2.digitsWeight);
			}
		});
		return weightMans.toString().replace("[", "").replace("]", "").replace(",", "");
	}

	public static class WeightMan {

		private Long normalWeight;
		private Long digitsWeight;

		private WeightMan(Long normalWeight, Long digitsWeight) {
			this.normalWeight = normalWeight;
			this.digitsWeight = digitsWeight;
		}

		@Override
		public String toString() {
			return normalWeight.toString();
		}
	}
}