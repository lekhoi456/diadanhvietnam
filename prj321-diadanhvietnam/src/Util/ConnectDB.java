package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    private static final String DB_URL = "jdbc:mysql://35.220.149.40:3306;" + "databaseName=admin_prj321;";
    private static final String USERNAME = "admin_prj321";
    private static final String PASSWORD = "Sudo@123";
    private static Connection conn = null;

    public static java.sql.Connection getConnection() {
        getConnection(DB_URL, USERNAME, PASSWORD);
        return conn;
    }


    public static java.sql.Connection getConnection(String dbURL, String userName, String password) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, userName, password);
            // System.out.println("Connect to DB Successfully!");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Connect to DB Failure!");
            e.printStackTrace();
        }
        return conn;
    }
}
