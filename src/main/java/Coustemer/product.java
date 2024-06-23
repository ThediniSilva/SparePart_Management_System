package Coustemer;

import java.sql.Blob;

@SuppressWarnings("unused")
public class product {

    private int id;
    private String name;
    private String price;
    private byte[] image; // Change to byte array for BLOB data

    public product() {}
        public product(int id, String name, String price2, byte[] image) {
        this.id = id;
        this.name = name;
        this.price = price2;
        this.image = image;
    }

    // Getters and setters
    
    public byte[] getImage() {
        return image;
    }

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public void setImage(byte[] image) {
        this.image = image;
    }
}
