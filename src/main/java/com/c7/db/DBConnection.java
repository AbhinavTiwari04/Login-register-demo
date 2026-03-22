package com.c7.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        Connection conn = null;

        try {
        	Class.forName("oracle.jdbc.OracleDriver");

            conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:xe",
                "javabked",
                "oradb"
            );

            System.out.println("Connected successfully");

        } catch (Exception ex) {
            System.out.println("DB Connection Error:");
            ex.printStackTrace(); // MUST
        }

        return conn;
    }
}