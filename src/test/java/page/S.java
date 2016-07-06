package page;

public class S extends F{

	private int s=2;

	public S(int m) {
		super(m);
		this.s=m;
	}

	
	
	public static void main(String[] args) {
		System.err.println(new S(5));
		S ss=new S(7);
	}
}
