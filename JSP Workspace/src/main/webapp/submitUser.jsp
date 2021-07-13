<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Submit User Data</title>
</head>
<body>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String host, user, password;
    host = "jdbc:mysql://localhost:3306/divyanshu";
    user = "root";
    password = "";
    Connection con = DriverManager.getConnection(host, user, password);

    String name, age, gender, aid, rid, vname, dod;
    name = request.getParameter("name");
    age = request.getParameter("age");
    gender = request.getParameter("gender");
    aid = request.getParameter("aid");
    rid = request.getParameter("rid");
    vname = request.getParameter("vname");
    dod = request.getParameter("dod");
    System.out.println(name + age + gender + aid + rid + vname + dod);
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM users");

    boolean flag = false;

    while (rs.next()) {
        if (rs.getString("name").equals(name)) {
            flag = true;
            out.println("User with the name " + name + " already exists in data base!");
            break;
        }
    }

    if (!flag) {
        try {
            st.executeUpdate("INSERT INTO `users`(`name`, `age`, `gender`, `aid`, `rid`, `v_name`, `dod`) VALUES ('"
                    + name + "', '" + age + "', '" + gender + "', '" + aid + "', '" + rid + "','" + vname
                    + "', '" + dod + "')");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            out.println("User data saved successfully.<br />");
        }
    }


%>
<br>
<a href="searchUser.html">Search USER</a> <br>
<a href="index.html">Home</a>
</body>
</html>