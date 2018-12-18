public class MorseCodeDecoder {
	public static String decode(String morseCode) {

		morseCode = morseCode.trim();
		StringBuilder decodedMorseLetter = new StringBuilder();
		StringBuilder decodedMorseCode = new StringBuilder();
		int i = 0;

		while (morseCode.length() >= i) {
			if (morseCode.length() > i && (morseCode.charAt(i) == '.' || morseCode.charAt(i) == '-')) {
				decodedMorseLetter.append(morseCode.charAt(i));
				i++;
			} else if (i == morseCode.length() || morseCode.charAt(i) == ' ') {
				decodedMorseCode.append(MorseCode.get(decodedMorseLetter.toString()));
				decodedMorseLetter = new StringBuilder();

				if (morseCode.length() - 1 > i + 2 && morseCode.charAt(i + 1) == ' '
						&& morseCode.charAt(i + 2) == ' ') {
					decodedMorseCode.append(" ");
					i += 3;
				} else {
					i++;
				}
			}
		}
		return decodedMorseCode.toString();
	}
}