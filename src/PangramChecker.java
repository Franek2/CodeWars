import java.util.HashSet;

public class PangramChecker {
  public boolean check(String sentence){
	  HashSet<Character> letters = new HashSet<>();
	  for (int i =0;i<sentence.length();i++) {
		  letters.add(sentence.toLowerCase().charAt(i));
	  }
	  for(int j = 97;j<123;j++) {
		  char check = (char) j;
		  if (!letters.contains(check)) {
			return false;
		}
	  }
	  return true;
  }
}