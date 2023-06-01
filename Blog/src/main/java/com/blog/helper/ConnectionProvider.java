package com.blog.helper;

import java.sql.*;


public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null || con.isClosed()) {
                // Driver class load
                Class.forName("org.postgresql.Driver");

                // Create a connection
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/myblog","myuser", "123");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}
