<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        Assignment 4, Question 2<br>
    </code>
</center>
<hr>
<br/>
<center>
    <form action="index.jsp">
        Enter name <br />
        <input type="text" name="name" id="name" placeholder="Enter name"> <br /><br />
        Enter Roll No <br />
        <input type="number" name="rollno" id="rollno" placeholder="Enter roll no"> <br /><br />
        Enter Address <br />
        <input type="text" name="address" id="address" placeholder="Enter address"> <br /><br />
        <input type="submit" value="submit" name="submit">
    </form>
    <%
        if(request.getParameter("submit") != null) {
            String name = request.getParameter("name");
            Integer roll = Integer.parseInt(request.getParameter("rollno"));
            String address = request.getParameter("address");
            out.println("<html><body>");
            out.println("<h1>" + "Name : " + name  + "</h1>");
            out.println("<h1>" + "Roll : " + roll  + "</h1>");
            out.println("<h1>" + "Address : " + address  + "</h1>");
            out.println("</body></html>");
        }
    %>
</center>

</body>
</html>