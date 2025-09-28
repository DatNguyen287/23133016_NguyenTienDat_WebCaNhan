package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class SimpleTestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Test Servlet</title>");
        out.println("<link rel='stylesheet' href='assets/css/style.css'>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='container'>");
        out.println("<h1>Test Servlet Working!</h1>");
        out.println("<div class='assignment-grid'>");
        
        // Simple HTML assignments
        for (int i = 1; i <= 3; i++) {
            out.println("<div class='assignment-item'>");
            out.println("<div class='assignment-header-info'>");
            out.println("<h3 class='assignment-title'>Bài " + i + "</h3>");
            out.println("<span class='assignment-date'>28/9/2025</span>");
            out.println("</div>");
            out.println("<div class='assignment-content'>");
            out.println("<div class='assignment-link'>");
            out.println("<p><strong>Link:</strong> <a href='#' class='assignment-url'>https://example.com/bai" + i + "</a></p>");
            out.println("</div>");
            out.println("<div class='assignment-info'>");
            out.println("<p><strong>Sinh vien:</strong> Nguyen Tien Dat</p>");
            out.println("<p><strong>MSSV:</strong> 23133016</p>");
            out.println("<p><strong>Lớp:</strong> 23133C</p>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
        }
        
        out.println("</div>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
}