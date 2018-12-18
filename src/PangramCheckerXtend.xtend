import java.util.HashSet

class PangramCheckerXtend {
	  def static check(String sentence){
	  var HashSet<Character> letters = new HashSet
	  
	  for (var i =0 ; i<sentence.length() ; i++) {
		  letters.add(sentence.toLowerCase.charAt(i))
	  }
	  
	  for(var j = 97 ; j<123 ; j++) {
		  var check = j as char
		  if (!letters.contains(check)) {
			return false;
		}
	  }
	  true;
  }
}