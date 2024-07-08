package Coustemer;

public class Order extends product {
	
	private int orederId;
	private int uid;
	private int quantity;
	private String date;
	
	
	public Order() {}


	public Order(int orederId, int uid, int quantity, String date) {
		super();
		this.orederId = orederId;
		this.uid = uid;
		this.quantity = quantity;
		this.date = date;
	}


	public Order(int uid, int quantity, String date) {
		super();
		this.uid = uid;
		this.quantity = quantity;
		this.date = date;
	}


	public int getOrederId() {
		return orederId;
	}


	public void setOrederId(int orederId) {
		this.orederId = orederId;
	}


	public int getUid() {
		return uid;
	}


	public void setUid(int uid) {
		this.uid = uid;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}

	
}
