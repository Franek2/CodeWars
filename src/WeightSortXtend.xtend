import java.util.ArrayList
import java.util.Collections
import java.util.Comparator

class WeightSortXtend {

	def static orderWeight(String strng) {

		if (areInputValuesWrong(strng))
			return ""

		var weightMans = new ArrayList<WeightMan>
		val cleanedValuesFromString = strng.trim.replaceAll(" +", " ").split(" ")
		
		for (strNumber : cleanedValuesFromString) {
			var sum = 0L
			var numb = Long.parseLong(strNumber)
			
			weightMans.add(new WeightMan(Long.parseLong(strNumber), sumOfWeightDigits(numb, sum)))
		}

		val comparatorForSortingWeight = new Comparator<WeightMan>() {
		
					override compare(WeightMan o1, WeightMan o2) {
						if (o1.digitsWeight.compareTo(o2.digitsWeight) == 0) {
							return o1.normalWeight.toString.compareTo(o2.normalWeight.toString)
						}
						return o1.digitsWeight.compareTo(o2.digitsWeight)
					}
				}
				
		Collections.sort(weightMans, comparatorForSortingWeight)
		
		return weightMans.toString.replace('[',"").replace(']',"").replace(',',"").trim
	}
	
	protected def static sumOfWeightDigits(long numb, long sum) {
		var copySum = sum
		var copyNumb = numb
		while (copyNumb > 0) {
			copySum += copyNumb % 10
			copyNumb /= 10
		}
		 copySum
	}
	
	protected def static boolean areInputValuesWrong(String strng) {
		strng.isEmpty || strng.trim.split(" ").length == 1
	}

	static class WeightMan {

		Long normalWeight
		Long digitsWeight

		private new(Long normalWeight, Long digitsWeight) {
			this.normalWeight = normalWeight
			this.digitsWeight = digitsWeight
		}

		override toString() {
			return normalWeight.toString
		}
	}
}
