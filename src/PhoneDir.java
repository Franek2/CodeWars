class PhoneDir {

	public static  String phone(String strng, String num) {
    	String name="";
    	String address="";
    	boolean alreadyFound = false;
    	
    	for (String line : strng.split("\n")) {
    		if (line.contains("+"+num)) {
    			if (alreadyFound) {
					return "Error => Too many people: "+num;
				}
    			name = line.substring(line.indexOf("<")+1, line.indexOf(">"));
				address = line.replace("<"+name+">", "")
						.replace("+"+num, "")
						.replace("_", " ")
						.replaceAll("[;:/,*?!$]", "")
						.replace("  ", " ")
						.trim();
				
				alreadyFound = true;
			}
		}
    	if (alreadyFound) {
    		return  "Phone => "+num+", Name => "+name+", Address => "+address;
		} else {
			return "Error => Not found: "+num;
		}
    }
}