package com.login;

import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String host, user, pass;
            host = "jdbc:mysql://localhost:3306/divyanshu";
            user = "root";
            pass = "";
            Connection con = DriverManager.getConnection(host, user, pass);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM testuser");
            boolean flag = false;
            while(rs.next()) {
                if(rs.getString("name") == name) {
                    flag = true;
                    out.println("<h1>User Already exist in database</h1><br/>");
                    out.println("<a href=\"index.jsp\">HOME</a>");
                }
            }
            if(!flag) {
                String query = "INSERT INTO `testuser`(`name`, `email`, `password`) VALUES ('" + name + "','" + email +
                        "','" + password + "')";
                System.out.println(query);
                try {
                    st.executeUpdate(query);
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    out.println("User data saved successfully.<br />");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String name = request.getParameter("name");
//        String rollno = request.getParameter("rollno");
//        String regno = request.getParameter("regno");
//        String semester = request.getParameter("sem");
//        String phno = request.getParameter("phno");
//        String email = request.getParameter("email");
//
//        PrintWriter out = response.getWriter();
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            String host, user, pass;
//            host = "jdbc:mysql://localhost:3306/divyanshu";
//            user = "root";
//            pass = "";
//            Connection con = DriverManager.getConnection(host, user, pass);
//            Statement st = con.createStatement();
//            ResultSet rs = st.executeQuery("SELECT * FROM student");
//            boolean flag = false;
//            while(rs.next()) {
//                if(rs.getString("reg_no") == regno) {
//                    flag = true;
//                    out.println("<h1>User Already exist in database</h1><br/>");
//                }
//            }
//            if(!flag) {
//                String query = "INSERT INTO `student`(`name`, `roll_no`, `reg_no`, `sem`, `ph_no`, `email`) VALUES " +
//                        "(' " + name + " ',' " + rollno + " ',' " + regno + " ',' " + semester + " ',' " + phno + "',' " + email +" ')";
//                System.out.println(query);
//                try {
//                    st.executeUpdate(query);
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                } finally {
//                    out.println("User data saved successfully.<br />");
//                }
//            }
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        }
//
//    }

}
