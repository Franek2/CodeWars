public class Braking {
    private static double g = 9.81; 
    private static double t = 1; // 1s
    private static double metersOnSec = 0.2777777778;
    
    public static double dist(double v, double mu) {
		return ((((v*metersOnSec)*(v*metersOnSec))/(2*mu*g))+((v*metersOnSec)*t));
    }
    public static double speed(double d, double mu) {
		return ((-t+Math.sqrt((t*t)+(2*d)/(mu*g)))*mu*g)*(1/metersOnSec);
    }
}