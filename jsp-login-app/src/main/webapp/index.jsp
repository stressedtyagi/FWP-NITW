<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP - Login/Logout App</title>
    </head>
    <body>
            <form action="Login">
                Enter your username : <input type="text" id="username" name="username"> <br/>
                Enter your password : <input type="password" id="password" name="password"> <br/>
                <input type="submit" name="submit" id="submit" value="Login">
            </form>
            <a href="register.jsp">REGISTER</a>
    </body>
</html>