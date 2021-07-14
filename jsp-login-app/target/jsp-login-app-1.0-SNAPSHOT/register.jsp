<%--
  Created by IntelliJ IDEA.
  User: tyagi
  Date: 14-07-2021
  Time: 05:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register new user</title>
</head>
<body>
    <form action="Register" method="post">
        Enter name:  <input type="text" placeholder="Enter name" name="name" id="name"> <br/>
        Enter email id: <input type="email" placeholder="Enter email" name="email" id="email"> <br/>
        Enter password: <input type="password" placeholder="Enter passowrd" name="password" id="password"> <br/>
        <p>
            <input type="submit" value="Submit" name="submt" id="submit">
            <input type="reset" value="Reset">
        </p>
    </form>
    <a href="index.jsp">HOME</a> <br/>
</body>
</html>
