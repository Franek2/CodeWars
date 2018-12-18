import java.util.HashMap;

class FruitMachineXtend {
	def static fruit(String[][] reels,int[] spins) {
		var items = new HashMap
		items.put("Wild", 10)
		items.put("Star", 9)
		items.put("Bell", 8)
		items.put("Shell", 7)
		items.put("Seven", 6)
		items.put("Cherry", 5)
		items.put("Bar", 4)
		items.put("King", 3)
		items.put("Queen", 2)
		items.put("Jack", 1)

		val reel_0 = reels.get(0).get(0)
		val reel_1 = reels.get(1).get(1)
		val reel_2 = reels.get(2).get(2)

		if (reel_0 == reel_1 && reel_1 == reel_2) {
			return items.get(reel_0) * 10

		}  if ((reel_0 == reel_1 || reel_1 == reel_2 || reel_0 == reel_2)
				&& (reel_0 == "Wild" || reel_1 == "Wild" || reel_2 == "Wild")) {
			
			if ((reel_0 == reel_1) && (reel_0 != "Wild") || (reel_0 == reel_2) && (reel_0 != "Wild")) {
				return items.get(reel_0) * 2
			} else if((reel_1 == reel_2) && (reel_1 != "Wild")){
				return items.get(reel_1) * 2
			}
			
			
		} if (reel_0 == reel_1 || reel_1 == reel_2 || reel_0 == reel_2) {
			
			if (reel_0 == reel_1 || reel_0 == reel_2) {
				return items.get(reel_0)
			} else {
				return items.get(reel_1)
			}
		}
		0
	}
}