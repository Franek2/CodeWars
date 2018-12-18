class BrakingXtend {
    static double g = 9.81 
    static double t = 1 // 1s
    static double metersOnSec = 0.2777777778
    
    def static dist(double v, double mu) {
		((((v*metersOnSec)*(v*metersOnSec))/(2*mu*g))+((v*metersOnSec)*t))
    }
    def static speed(double d, double mu) {
		((-t+Math.sqrt((t*t)+(2*d)/(mu*g)))*mu*g)*(1/metersOnSec)
    }
}