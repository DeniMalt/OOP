package repository;

import java.sql.*;

public class connect_db {
    private final static String URL = "jdbc:mysql://localhost:3306/lab10";
    private final static String USERNAME = "root";
    private final static String PASSWORD = "tonykart";
    private Connection connection;
    public connect_db() {
        try {
            try{
                Driver driver = new com.mysql.cj.jdbc.Driver();
                DriverManager.registerDriver(driver);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("verno");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }
}
