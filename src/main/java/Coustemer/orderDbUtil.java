package Coustemer;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class orderDbUtil {

    private Connection con;

    public orderDbUtil(Connection con) {
        this.con = con;
    }

    public boolean insertOrder(Order model) {
        boolean result = false;
        PreparedStatement pst = null;

        try {
            String query = "INSERT INTO orders(p_id, u_id, o_quantity, o_date) VALUES (?, ?, ?, ?)";
            pst = con.prepareStatement(query);
            pst.setInt(1, model.getId());
            pst.setInt(2, model.getUid());
            pst.setInt(3, model.getQuantity());
            pst.setString(4, model.getDate());

            // Logging the SQL query being executed
            System.out.println("Executing query: " + pst.toString());

            int rowsInserted = pst.executeUpdate();
            if (rowsInserted > 0) {
                result = true;
                System.out.println("Order inserted successfully.");
            } else {
                System.out.println("Order insertion failed: no rows inserted.");
            }
        } catch (Exception e) {
            System.out.println("Exception occurred while inserting order.");
            e.printStackTrace();
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.out.println("Error closing PreparedStatement: " + e.getMessage());
            }
        }

        return result;
    }
}
