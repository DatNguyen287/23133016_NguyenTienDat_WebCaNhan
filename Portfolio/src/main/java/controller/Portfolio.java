package controller;

import dao.AssignmentService;
import model.Assignment;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;
@WebServlet("/assignments")
public class Portfolio extends HttpServlet {
    private AssignmentService assignmentService;

    @Override
    public void init() {
        assignmentService = new AssignmentService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteAssignment(request, response);
                break;
            default: // list
                listAssignments(request, response);
                break;
        }
    }

    private void listAssignments(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Assignment> assignments = assignmentService.findAll();
        request.setAttribute("assignments", assignments);
        RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
        rd.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        Assignment assignment = assignmentService.find(id); // dùng findById
        request.setAttribute("assignment", assignment);
        RequestDispatcher rd = request.getRequestDispatcher("/assignment-form.jsp");
        rd.forward(request, response);
    }

    private void deleteAssignment(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        assignmentService.delete(id);
        response.sendRedirect(request.getContextPath() + "/");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // tránh lỗi tiếng Việt
        String idParam = request.getParameter("id");
        String name = request.getParameter("assignmentName");
        String link = request.getParameter("assignmentLink");

        System.out.println("DEBUG: Processing form - Name: " + name + ", Link: " + link + ", ID: " + idParam);
        
        if (idParam == null || idParam.isEmpty()) {
            // Thêm mới
            Assignment assignment = new Assignment(name, link);
            assignmentService.insert(assignment);
            System.out.println("DEBUG: Inserted new assignment");
        } else {
            // Cập nhật
            Long id = Long.parseLong(idParam);
            Assignment assignment = assignmentService.find(id); // lấy entity ra
            if (assignment != null) {
                assignment.setAssignmentName(name);
                assignment.setAssignmentLink(link);
                assignmentService.update(assignment);
                System.out.println("DEBUG: Updated assignment with ID: " + id);
            }
        }

        response.sendRedirect(request.getContextPath() + "/assignments");
    }
}
