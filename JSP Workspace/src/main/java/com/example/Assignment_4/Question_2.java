package com.example.Assignment_4;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Question_2", value = "/Question_2")
public class Question_2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        Integer roll = Integer.parseInt(request.getParameter("rollno"));
        String address = request.getParameter("address");


        response.setContentType("text/html");


        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + "Name : " + name  + "</h1>");
        out.println("<h1>" + "Roll : " + roll  + "</h1>");
        out.println("<h1>" + "Address : " + address  + "</h1>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
