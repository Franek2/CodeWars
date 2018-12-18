class PersistXtend {
	def static int persistence(long n) {
	var multi = 1L
	
	if(n/10==0) {
	return 0
	} 
	
	for(var number = n; number!=0 ; number /=10 ){
		multi*=number%10L
	}
	persistence(multi)+1
	}
}