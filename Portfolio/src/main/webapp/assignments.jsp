<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.0/css/all.min.css" />
    
    <!-- Reset & Style CSS -->
    <link rel="stylesheet" href="./assets/css/reset.css" />
    <link rel="stylesheet" href="./assets/css/style.css" />
    
    <title>Quản lý bài tập - My Portfolio</title>
</head>

<body>
    <!-- Header -->
    <header style="background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%); padding: 60px 0;">
        <div class="container">
            <div style="text-align: center; color: white;">
                <a href="./" style="color: white; text-decoration: none;">
                    <h1 style="font-size: 3rem; margin-bottom: 20px;">MyPortfolio</h1>
                </a>
                <nav>
                    <a href="./" style="color: #c9d2da; margin: 0 15px; text-decoration: none;">← Quay về trang chủ</a>
                </nav>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main style="padding: 60px 0; background: #f8f9fa; min-height: 70vh;">
        <div class="container">
            <div style="text-align: center; margin-bottom: 40px;">
                <h2 class="section-heading">Quản lý bài tập</h2>
                <p class="section-desc">Danh sách bài tập được quản lý bằng Java Servlet và Database</p>
            </div>

            <!-- Add Assignment Button -->
            <div class="assignment-header">
                <a href="assignment-form.jsp" class="btn btn-primary add-assignment-btn">
                    <i class="fas fa-plus"></i> Thêm bài tập mới
                </a>
            </div>

            <!-- Assignment Grid -->
            <div class="assignment-grid">
                <%
                    java.util.List<model.Assignment> assignments = (java.util.List<model.Assignment>) request.getAttribute("assignments");
                    if (assignments != null && !assignments.isEmpty()) {
                        for (model.Assignment assignment : assignments) {
                %>
                    <!-- Assignment Item -->
                    <div class="assignment-item">
                        <div class="assignment-header-info">
                            <h3 class="assignment-title"><%= assignment.getAssignmentName() %></h3>
                            <span class="assignment-date">
                                <script>document.write(new Date().toLocaleDateString('vi-VN'))</script>
                            </span>
                        </div>
                        <div class="assignment-content">
                            <div class="assignment-link">
                                <p><strong>Link:</strong> 
                                    <a href="<%= assignment.getAssignmentLink() %>" target="_blank" class="assignment-url">
                                        <%= assignment.getAssignmentLink() %>
                                    </a>
                                </p>
                            </div>
                            <div class="assignment-info">
                                <p><strong>Sinh viên:</strong> Nguyễn Tiến Đạt</p>
                                <p><strong>MSSV:</strong> 23133016</p>
                                <p><strong>Lớp:</strong> 23133C</p>
                            </div>
                        </div>
                        <div class="assignment-actions">
                            <a href="assignments?action=edit&id=<%= assignment.getId() %>" class="btn btn-secondary">
                                <i class="fas fa-edit"></i> Sửa
                            </a>
                            <button class="btn btn-danger" onclick="deleteAssignment('<%= assignment.getId() %>')">
                                <i class="fas fa-trash"></i> Xóa
                            </button>
                        </div>
                    </div>
                <%
                        }
                    } else {
                %>
                    <!-- Empty State -->
                    <div class="empty-state">
                        <div class="empty-icon">
                            <i class="fas fa-clipboard-list"></i>
                        </div>
                        <h3>Chưa có bài tập nào</h3>
                        <p>Hãy thêm bài tập đầu tiên của bạn!</p>
                        <a href="assignment-form.jsp" class="btn btn-primary">
                            <i class="fas fa-plus"></i> Thêm bài tập đầu tiên
                        </a>
                    </div>
                <%
                    }
                %>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer style="background: #10375c; color: white; text-align: center; padding: 40px 0;">
        <div class="container">
            <p>2024 MyPortfolio. Quản lý bài tập - Nguyễn Tiến Đạt - 23133C</p>
        </div>
    </footer>

    <script>
        // Delete assignment function
        function deleteAssignment(id) {
            if (confirm("Bạn có chắc chắn muốn xóa bài tập này không?")) {
                window.location.href = 'assignments?action=delete&id=' + id;
            }
        }
    </script>
</body>
</html>