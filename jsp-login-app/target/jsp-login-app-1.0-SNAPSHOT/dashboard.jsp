<%--
  Created by IntelliJ IDEA.
  User: tyagi
  Date: 13-07-2021
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DashBoard</title>
</head>
<body>
        <%
            if(session.getAttribute("username") == null){
                System.out.println("in dashboard");
                response.sendRedirect("index.jsp");
            }
        %>
        <iframe
                width="560"
                height="315"
                src="https://www.youtube.com/embed/-964sSBviK0?autoplay=1"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
                >
        </iframe>
        <form action="Logout">
            <input type="submit" value="Logout">
        </form>
</body>
</html>
