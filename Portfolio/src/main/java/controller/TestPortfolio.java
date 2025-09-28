package controller;

import model.Assignment;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/test-assignments")
public class TestPortfolio extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Create dummy data for testing
        List<Assignment> assignments = new ArrayList<>();
        assignments.add(new Assignment(1L, "Bài 1", "https://giadinh2.odoo.com/"));
        assignments.add(new Assignment(2L, "Bài 2", "https://two3133016-nguyentiendat-tuan02-5.onrender.com/emailList?action=join"));
        assignments.add(new Assignment(3L, "Bài 3", "https://datnguyen287.github.io/23133016_NguyenTienDat_tuan03_web/"));
        
        request.setAttribute("assignments", assignments);
        
        RequestDispatcher rd = request.getRequestDispatcher("/assignments.jsp");
        rd.forward(request, response);
    }
}