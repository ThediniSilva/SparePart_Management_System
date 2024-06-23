package Coustemer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class productDbUtil {

    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public productDbUtil(Connection con) {
        this.con = con;
    }

    public List<product> getAllProducts() {
        List<product> products = new ArrayList<>();
        try {
            query = "SELECT p_id, p_name, price, img FROM product";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("p_id");
                String name = rs.getString("p_name");
                String price = rs.getString("price");
                byte[] imageBytes = rs.getBytes("img");

                product row = new product(id, name, price, imageBytes);
                products.add(row);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }
    
    public List<cart> getAllcartProducts(ArrayList<cart> cartList) {
        List<cart> products = new ArrayList<>();

        try {
            for (cart item : cartList) {
                query = "SELECT p_id, p_name, price FROM product WHERE p_id = ?";
                pst = this.con.prepareStatement(query);
                pst.setInt(1, item.getId());
                rs = pst.executeQuery();

                if (rs.next()) {
                    item.setName(rs.getString("p_name"));
                    double price = Double.parseDouble(rs.getString("price"));
                    item.setPrice(price); // Assuming you have a setter for price in cart class
                    item.setTotalPrice(price * item.getQuantity());
                    products.add(item);

                    // Debug information
                    System.out.println("Product ID: " + item.getId());
                    System.out.println("Product Name: " + item.getName());
                    System.out.println("Product Price: " + price);
                    System.out.println("Product Quantity: " + item.getQuantity());
                    System.out.println("Total Price: " + item.getTotalPrice());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }
}