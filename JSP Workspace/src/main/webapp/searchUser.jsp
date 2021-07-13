<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Search User Data</title>
</head>
<body>
<a href="index.html">Home</a>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String host, user, password;
    host = "jdbc:mysql://localhost:3306/divyanshu";
    user = "root";
    password = "";
    Connection con = DriverManager.getConnection(host, user, password);

    String name, age, gender, aid, rid, vname, dod;

    name = request.getParameter("name");

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM users WHERE name='" + name + "'");

    if (rs.next() == false) {
        out.println("<h2>This user's name is not available in your database.</h2>");
    } else {
        age = rs.getString("age");
        gender = rs.getString("gender");
        aid = rs.getString("aid");
        rid = rs.getString("rid");
        vname = rs.getString("v_name");
        dod = rs.getString("dod");

        out.println("<br>");
        out.println("User Name: " + name + "<br />");
        out.println("Age: " + age + "<br />");
        out.println("Gender: " + gender + "<br />");
        out.println("Aadhar ID: " + aid + "<br />");
        out.println("Reference ID: " + rid + "<br />");
        out.println("Vaccine Name: " + vname + "<br />");
        out.println("Date of dose: " + dod + "<br />");
    }



%>
<a href="searchUser.html">Search User</a>
</body>
</html>