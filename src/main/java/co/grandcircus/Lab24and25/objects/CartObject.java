package co.grandcircus.Lab24and25.objects;

public class CartObject {
	
	int conter;
	int id;
	
	
	
	public CartObject() {
		super();
	}
	public CartObject(int id) {
		super();
		this.id = id;
	}
	public CartObject(int conter, int id) {
		super();
		this.conter = conter;
		this.id = id;
	}
	public int getConter() {
		return conter;
	}
	public void setConter(int conter) {
		this.conter = conter;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "CartObject [conter=" + conter + ", id=" + id + "]";
	}

}
