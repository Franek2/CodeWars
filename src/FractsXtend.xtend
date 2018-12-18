
class FractsXtend {

		def static convertFrac(long[][] lst) {
		      if(lst.length==0) return ""
		      var lcm = lst.get(0).get(1)
		      var result=""
		      for(var i=0; i<lst.length;i++){
		        lcm = getLCM(lcm, lst.get(i).get(1))
		      }
	
		      for(var i=0; i<lst.length;i++){
		        result+="("+(lcm/lst.get(i).get(1))*lst.get(i).get(0)+","+lcm+")"
		      }
		      result
		  }
		  def static long getGCD(long a, long b){
		        if (b == 0) {
		            return a;
		        }
		         getGCD(b, a % b)
		  }
		  
		  def static getLCM(long a, long b){
		      a * (b / getGCD(a, b))
		  }

	}
	
