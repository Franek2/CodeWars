
class MorseCodeDecoderXtend {
	    def static String decode(String morseCode) {
	    	
	var String morseCodeCopy = morseCode.trim
    var StringBuilder decodedMorseLetter = new StringBuilder
    var StringBuilder decodedMorseCode = new StringBuilder
    var i =0
    
   while (morseCodeCopy.length>=i) {
	if (morseCodeCopy.length>i && (morseCodeCopy.charAt(i)=='.' || morseCodeCopy.charAt(i)=='-')) {
		decodedMorseLetter.append(morseCodeCopy.charAt(i))
		i++
	} else if (i==morseCodeCopy.length || morseCodeCopy.charAt(i)==' ' ) {
		decodedMorseCode.append(MorseCode.get(decodedMorseLetter.toString))
		decodedMorseLetter = new StringBuilder
		
		if (morseCodeCopy.length-1>i+2 && morseCodeCopy.charAt(i+1)==' ' && morseCodeCopy.charAt(i+2)==' ') {
			decodedMorseCode.append(" ")
			i+=3
		} else {
			i++
		}
	} 
	}
     decodedMorseCode.toString
    }
}