
class PhoneDirXtend {
		def static phone(String strng, String num) {
    	var name=""
    	var address=""
    	var alreadyFound = false
    	
    	for (String line : strng.split("\n")) {
    		if (line.contains("+"+num)) {
    			if (alreadyFound) {
					return "Error => Too many people: "+num
				}
    			name = line.substring(line.indexOf("<")+1, line.indexOf(">"))
    			
				address = line.replace("<"+name+">", "")
						.replace("+"+num, "")
						.replace("_", " ")
						.replaceAll("[;:/,*?!$]", "")
						.replace("  ", " ")
						.trim
				
				alreadyFound = true
			}
		}
		
    	if (alreadyFound) {
    		"Phone => "+num+", Name => "+name+", Address => "+address
		} else {
			"Error => Not found: "+num
		}
    }}