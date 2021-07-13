<%--
  Created by IntelliJ IDEA.
  User: tyagi
  Date: 13-07-2021
  Time: 09:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <%
        if(session.getAttribute("username") == null){
            System.out.println("in welcome");
            response.sendRedirect("index.jsp");
        }
    %>
    <h1>Welcome ${username}</h1>
    <a href="dashboard.jsp"> Watch video</a>
    <form action="Logout">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
