
public class BeadsCounter {
	public static int countRedBeads(final int nBlue) {
		switch (nBlue) {
		case 0:
			return 0;

		case 1:
			return 0;

		default:
			return (nBlue-1)*2;
		}
	}
}
