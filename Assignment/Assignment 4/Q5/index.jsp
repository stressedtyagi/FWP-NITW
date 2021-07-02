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
            Assignment 4, Question 5<br>
        </code>
    </center>
    <hr>
<br/>
    <center>
        <form action="index.jsp" method="post">
            Enter Name : <input type="text" name="name" id="name" placeholder="enter name">
            <input type="submit" name="submit" id="submit">
        </form>
        <br />
        <%
            if (request.getParameter("submit") != null) {
                String user=request.getParameter("name");
                Date d=new Date();
                if(d.getHours() < 12) {
        %>
                    Good Morning,
        <%
                } else if(d.getHours() < 17) {
        %>
                    Good Afternoon,
        <%
                } else {
        %>
                    Good Evening,
        <%
                }

        %>
        <b>
            <%
                out.println(user);
            }
            %>
        </b>
    </center>
</body>
</html>