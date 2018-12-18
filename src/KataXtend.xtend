class KataXtend {

  def static high(String s) {
	  var bestScoreWord = ""
	  var tempscore =0
	  var int score
	  
for (word : s.split(" ")) {
	score=0
	for(var i =0;word.length()>i;i++) {
		score += word.charAt(i) as int-96
	}
	if (tempscore<score) {
		tempscore = score
		bestScoreWord =word
	}
}	  
    bestScoreWord
  }

}