public class Fracts {
	// sth is Wrong in this code and i tried to long
//	private static HashSet<Long> commonDenominators = new HashSet<>();
//	
//  public static String convertFrac(long[][] lst) {
//	  Long biggestCommonDenominator = lst[0][1];
//	  for (int i = 1; i < lst.length; i++) {
//		long[] ls = lst[i];
//		biggestCommonDenominator *= ls[1];
//	}
//	  
//	  for (int i = 0; i < lst.length; i++) {
//		long[] ls = lst[i];
//		HashSet<Long> denominatorsFromThisNumber = new HashSet<>();
//		long k = ls[1];
//			if (commonDenominators.isEmpty()) {
//				for(Long j = ls[1] ; j <= biggestCommonDenominator ; j+=k) {
//					commonDenominators.add(j);
//				}
//			} else {
//				for(Long j = ls[1] ; j <= biggestCommonDenominator ; j+=k) {
//					if (commonDenominators.contains(j)) {
//						denominatorsFromThisNumber.add(j);
//					}
//				}
//				commonDenominators = denominatorsFromThisNumber;
//			}
//	}
//	  Long smallestDenominator = Collections.min(commonDenominators);
//	  String result = "";
//	  for (int i = 0; i < lst.length; i++) {
//		long[] ls = lst[i];
//		Long multiply = smallestDenominator/ls[1];
//		result += "("+ls[0]*multiply+","+smallestDenominator+")";
//	}
//	  
//	  
//	  
//	  return result;
//  }
		public static String convertFrac(long[][] lst) {
		      if(lst.length==0) return "";
		      long lcm = lst[0][1];
		      String result="";
		      for(int i=0; i<lst.length;i++){
		        lcm = getLCM(lcm, lst[i][1]);
		      }
		      for(int i=0; i<lst.length;i++){
		        
		        lst[i][0] = (lcm/lst[i][1])*lst[i][0];
		        lst[i][1] = lcm;
		        result+="("+lst[i][0]+","+lst[i][1]+")";
		      }
		      return result;
		  }
		  public static long getGCD(long a, long b){
		        if (b == 0) {
		            return a;
		        }
		        return getGCD(b, a % b);
		  }
		  
		  public static long getLCM(long a, long b){
		    return a * (b / getGCD(a, b));
		  }

	}
	
