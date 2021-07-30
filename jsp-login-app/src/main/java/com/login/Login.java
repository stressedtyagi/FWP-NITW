package com.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
//        System.out.println("name:" + username + ", pass: " + password);
//        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String host, user, pass;
            host = "jdbc:mysql://localhost:3306/divyanshu";
            user = "root";
            pass = "";
            Connection con = DriverManager.getConnection(host, user, pass);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM testuser");
            while (rs.next()) {
                System.out.println(rs.getString("name") + " -- " + rs.getString("password"));
                if (rs.getString("name").equals(username) && rs.getString("password").equals(password)) {
                    System.out.println("IN HERE");
                    flag = true;
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("flag : " + flag);
        if (flag) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    }
}
