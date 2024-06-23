package Coustemer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CoustemerDbUtil {
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static boolean validate(String username, String password) {
        try {
            con = databaseConnection.getConnection();
            stmt = con.createStatement();
            String sql = "select * from register where username='" + username + "' and password='" + password + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
    
    // Get customer details based on username
    public static User getCustomerDetails(String username) {
        User customer = null;

        try {
            con = databaseConnection.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM register WHERE username = '" + username + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                String fname = rs.getString("fname");
                String lname = rs.getString("lname");
                String email = rs.getString("email");
                String contactNumber = rs.getString("contactNumber");
                String address = rs.getString("address");
                String password = rs.getString("password");
                int id = rs.getInt("id");

                customer = new User(id, fname, lname, email, contactNumber, address, username, password);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return customer;
    }

    // Display the data in a profile page
    public static List<User> getCustomers(int id) {
        ArrayList<User> customers = new ArrayList<>();

        try {
            con = databaseConnection.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM register WHERE id = '" + id + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int userId = rs.getInt("id");
                String fname = rs.getString("fname");
                String lname = rs.getString("lname");
                String email = rs.getString("email");
                String contactNumber = rs.getString("contactNumber");
                String address = rs.getString("address");
                String username = rs.getString("username");
                String password = rs.getString("password");

                User customer = new User(userId, fname, lname, email, contactNumber, address, username, password);
                customers.add(customer);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customers;
    }

    // Insert data into the table
    public static boolean insertCoustemer(String fname, String lname, String email, String contactNumber, String address, String username, String password) {
        boolean isSuccess = false;
        try {
            con = databaseConnection.getConnection();
            stmt = con.createStatement();
            // Insert query
            String sql = "INSERT INTO register (fname, lname, email, contactNumber, address, username, password) VALUES ('" + fname + "', '" + lname + "', '" + email + "', '" + contactNumber + "', '" + address + "', '" + username + "', '" + password + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Retrieve customer by username
    public static User getCustomerByUsername(String username) {
        User customer = null;

        try {
            con = databaseConnection.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM register WHERE username = '" + username + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int id = rs.getInt("id");
                String fname = rs.getString("fname");
                String lname = rs.getString("lname");
                String email = rs.getString("email");
                String contactNumber = rs.getString("contactNumber");
                String address = rs.getString("address");
                String password = rs.getString("password");

                customer = new User(id, fname, lname, email, contactNumber, address, username, password);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customer;
    }

    // Update customer details
    public static boolean updateCustomer(String id, String firstName, String lastName, String email, String contactNumber, String address, String username, String password) {
        try {
            con = databaseConnection.getConnection();
            stmt = con.createStatement();
            // Update query
            String sql = "UPDATE register SET fname = '" + firstName + "', lname = '" + lastName + "', email = '" + email + "', contactNumber = '" + contactNumber + "', address = '" + address + "', username = '" + username + "', password = '" + password + "' WHERE id = " + id;
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Delete customer details
    public static boolean deleteCustomer(String username) {
        try {
            con = databaseConnection.getConnection();
            stmt = con.createStatement();
            // Delete query
            String sql = "DELETE FROM register WHERE id = " + username;
            int r = stmt.executeUpdate(sql);

            if (r > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
}
