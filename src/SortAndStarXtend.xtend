
class SortAndStarXtend {
	  def static twoSort(String[] s) {
	  var result = ""
	  for(var i=65;i<123;i++) {
for (String word : s) {
	if (word.charAt(0)== i as int) {
		for(var j =0; j<=word.length()-1;j++){
			if (j==word.length()-1) {
				result += word.charAt(j)
				return result
			}
			result += word.charAt(j)+"***"
			}
			return result
			}
		}
 	 }	  
  }
}