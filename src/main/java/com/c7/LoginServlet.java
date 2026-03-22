package com.c7;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

import com.c7.db.DBConnection;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = DBConnection.getConnection();
        ResultSet rs = null;

        try {
            String query = "SELECT * FROM records WHERE username=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(query);

            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();

            if (rs.next()) {
                
                request.setAttribute("username", username);
                RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
                rd.forward(request, response);
            } else {
                
                response.getWriter().println("Invalid username or password");
            }

        } catch (Exception ex) {
            System.out.println("Error: " + ex.getMessage());
        }
    }
}