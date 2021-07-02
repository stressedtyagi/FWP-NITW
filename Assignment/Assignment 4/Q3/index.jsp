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
            Assignment 4, Question 3<br>
        </code>
    </center>
    <hr>
<br/>
    <center>
        <form action="index.jsp" method="post">
            Enter first number <br/>
            <input type="text" name="num1" id="num1" placeholder="Number 1"> <br /> <br />
            Enter second number <br/>
            <input type="number" name="num2" id="num2" placeholder="Number 2"> <br /> <br />
            <input type="submit" value="Submit" name="submit">
        </form>
    </center>
    <%
        if(request.getParameter("submit") != null) {
            Integer n1 = Integer.parseInt(request.getParameter("num1"));
            Integer n2 = Integer.parseInt(request.getParameter("num2"));
            out.println("<center> Result : " +  (n1 + n2) +
                    " </center>");
        }
    %>
</body>
</html>