<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>FWP LAB - Assignment 4</title>
</head>
<body>
    <center>
        <code>
            Divyanshu Tyagi <br>
            207919, MCA <br>
            Assignment 4, Question 4<br>
        </code>
    </center>
    <hr>
<br/>
    <center>
        <%
            String name = "Divyanshu Tyagi";
            out.println("<h1> " + name + " </h1>");
        %>
        <h1>
            Today's date: <%= (new java.util.Date()).toLocaleString()%>
        </h1>
    </center>
</body>
</html>