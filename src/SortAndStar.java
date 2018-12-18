public class SortAndStar {

  public static String twoSort(String[] s) {
	  String result = "";
	  for(int i=65;i<123;i++) {
for (String word : s) {
	if (word.charAt(0)== (char)i) {
		for(int j =0; j<=word.length()-1;j++){
			if (j==word.length()-1) {
				result += word.charAt(j);
				return result;
			}
		result += word.charAt(j)+"***";
		}
		return result;
	}
	}
  }
	  return null;
  }
}