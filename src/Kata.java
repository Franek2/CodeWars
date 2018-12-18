public class Kata {

  public static String high(String s) {
	  String bestScoreWord = "";
	  int tempscore =0;
	  int score;
	  
for (String word : s.split(" ")) {
	score=0;
	for(int i =0;word.length()>i;i++) {
		score += (int)word.charAt(i)-96;
	}
	if (tempscore<score) {
		tempscore = score;
		bestScoreWord =word;
	}
}	  
    return bestScoreWord;
  }

}