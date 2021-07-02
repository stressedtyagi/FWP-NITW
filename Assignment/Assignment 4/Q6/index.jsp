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
            Assignment 4, Question 6<br>
        </code>
    </center>
    <hr>
<br/>
    <center>
        <form action="index.jsp" method="post">
            Enter value of N : <input type="number" name="range" id="range"
                                      placeholder="Enter value of n (>= 2) for fibonacci series" style="width: 300px;">
            <input type="submit" name="submit" id="submit">
        </form>
        <br />
        <code>
            <%
                if(request.getParameter("submit") != null) {
                    int n = Integer.parseInt(request.getParameter("range"));
                    int fibo[] = new int[n];
                    fibo[0] = 0;
                    fibo[1] = 1;
            %>
                    Fibonacci Series :
            <%
                    for(int i = 2; i < n; i++) {
                        fibo[i] = fibo[i-1] + fibo[i-2];
                    }
                    for (int i:
                         fibo) {
            %>
                            <%=i %>
            <%
                    }
            %>
            <%
                }
            %>
        </code>
    </center>
</body>
</html>