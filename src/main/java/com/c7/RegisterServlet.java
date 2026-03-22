package com.c7;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

import com.c7.db.DBConnection;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = DBConnection.getConnection();

        try {
            // 🔹 Check if user already exists
            String checkQuery = "SELECT * FROM records WHERE username=?";
            PreparedStatement ps1 = conn.prepareStatement(checkQuery);
            ps1.setString(1, username);

            ResultSet rs = ps1.executeQuery();

            if (rs.next()) {
                
                response.getWriter().println("Username already exists!");
            } else {
                
                String insertQuery = "INSERT INTO records (username, password) VALUES (?, ?)";
                PreparedStatement ps2 = conn.prepareStatement(insertQuery);

                ps2.setString(1, username);
                ps2.setString(2, password);

                ps2.executeUpdate();

                
                response.sendRedirect("Login.jsp");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}