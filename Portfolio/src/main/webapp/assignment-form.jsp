<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.0/css/all.min.css"
        />
        <!-- add favicon -->
        <link
            rel="apple-touch-icon"
            sizes="57x57"
            href="./assets/favicon/apple-icon-57x57.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="60x60"
            href="./assets/favicon/apple-icon-60x60.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="72x72"
            href="./assets/favicon/apple-icon-72x72.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="76x76"
            href="./assets/favicon/apple-icon-76x76.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="114x114"
            href="./assets/favicon/apple-icon-114x114.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="120x120"
            href="./assets/favicon/apple-icon-120x120.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="144x144"
            href="./assets/favicon/apple-icon-144x144.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="152x152"
            href="./assets/favicon/apple-icon-152x152.png"
        />
        <link
            rel="apple-touch-icon"
            sizes="180x180"
            href="./assets/favicon/apple-icon-180x180.png"
        />
        <link
            rel="icon"
            type="image/png"
            sizes="192x192"
            href="./assets/favicon/android-icon-192x192.png"
        />
        <link
            rel="icon"
            type="image/png"
            sizes="32x32"
            href="./assets/favicon/favicon-32x32.png"
        />
        <link
            rel="icon"
            type="image/png"
            sizes="96x96"
            href="./assets/favicon/favicon-96x96.png"
        />
        <link
            rel="icon"
            type="image/png"
            sizes="16x16"
            href="./assets/favicon/favicon-16x16.png"
        />
        <link rel="manifest" href="./assets/favicon/manifest.json" />
        <meta name="msapplication-TileColor" content="#ffffff" />
        <meta
            name="msapplication-TileImage"
            content="./assets/favicon/ms-icon-144x144.png"
        />
        <meta name="theme-color" content="#ffffff" />
        <!-- EMBED fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700&family=Sora:wght@300;400;500;600;700;800&display=swap"
            rel="stylesheet"
        />
        <!-- reset css -->
        <link rel="stylesheet" href="./assets/css/reset.css" />
        <!-- style css -->
        <link rel="stylesheet" href="./assets/css/style.css" />
        <title>Quản lý bài tập - My Portfolio</title>
        <!-- responsive css -->
        <link rel="stylesheet" href="./assets/css/responsive.css" />
    </head>

    <body>
        <!-- header với form bên trong -->
        <header
            class="header"
            style="
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                padding: 40px 0;
                min-height: 100vh;
                display: flex;
                flex-direction: column;
            "
        >
            <div class="container">
                <!-- Navigation top -->
                <div class="header-top" style="margin-bottom: 30px">
                    <!-- logo -->
                    <a href="./" class="logo header__logo">
                        <h2
                            style="
                                color: #fff;
                                font-size: 2.5rem;
                                font-weight: 600;
                            "
                        >
                            MyPortfolio
                        </h2>
                    </a>
                    <!-- nav -->
                    <nav class="navbar">
                        <ul class="navbar__list">
                            <li class="navbar__item">
                                <a href="assignments" class="navbar__link"
                                    >← Quay lại</a
                                >
                            </li>
                        </ul>
                    </nav>
                </div>

                <!-- Form trong header -->
                <div
                    class="form-container-in-header"
                    style="
                        flex: 1;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                    "
                >
                    <div class="form-container">
                        <% 
                        String assignmentId = request.getParameter("id");
                        model.Assignment assignment = (model.Assignment) request.getAttribute("assignment"); 
                        boolean isEdit = assignment != null;
                        String pageTitle = isEdit ? "Sửa bài tập" : "Thêm bài tập mới"; String submitText = isEdit ? "Cập nhật bài tập" : "Thêm bài tập"; 
                        %>

                        <div class="form-header">
                            <h1 class="form-title"><%= pageTitle %></h1>
                            <p class="form-subtitle">
                                <%= isEdit ? "Cập nhật thông tin bài tập" :
                                "Nhập thông tin bài tập mới" %>
                            </p>
                        </div>

                        <form
                            class="assignment-form"
                            method="post"
                            action="assignments"
                        >
                            <% if (isEdit) { %>
                            <input
                                type="hidden"
                                name="id"
                                value="<%= assignment.getId() %>"
                            />
                            <% } %>

							<div class="form-group">
							    <label for="assignmentName">Tên bài tập:</label>
							    <input type="text" id="assignmentName" name="assignmentName" required 
							           placeholder="Ví dụ: Bài tập 1 - Portfolio cá nhân" 
							           value="<%= isEdit ? assignment.getAssignmentName() : "" %>" />
							</div>

                            <div class="form-group">
                                <label for="assignmentLink"
                                    >Link bài tập:</label
                                >
                                <input type="url" id="assignmentLink"
                                name="assignmentLink" required
                                placeholder="https://github.com/username/project
                                hoặc link demo" value="<%= isEdit ?
                                assignment.getAssignmentLink() : "" %>" />
                            </div>

                            <div class="form-actions">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fas fa-save"></i> <%= submitText
                                    %>
                                </button>
                                <a href="assignments" class="btn btn-secondary">
                                    <i class="fas fa-times"></i> Hủy bỏ
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>

        <!-- main rỗng -->
        <main style="display: none"></main>

        <!-- footer -->
        <footer class="footer" style="margin-top: 0">
            <div class="container">
                <div class="footer__copyright">
                    <p class="footer__copyright-text">
                        2024 MyPortfolio. Quản lý bài tập - Nguyễn Tiến Đạt -
                        23133C
                    </p>
                </div>
            </div>
        </footer>

        <style>
            /* Override CSS để form nằm trong header gradient */
            body {
                margin: 0;
                padding: 0;
                font-family: "Open Sans", sans-serif;
            }

            .header-top {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .form-container {
                max-width: 600px;
                margin: 0 auto;
                background: rgba(255, 255, 255, 0.95);
                border-radius: 15px;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
                overflow: hidden;
                backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.2);
            }

            .form-header {
                background: rgba(255, 255, 255, 0.1);
                color: white;
                text-align: center;
                padding: 30px 20px;
                border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            }

            .form-title {
                font-size: 2.5rem;
                font-weight: 600;
                margin: 0 0 10px 0;
                color: #2d3748;
                text-shadow: 2px 2px 4px rgba(255, 255, 255, 0.8);
            }

            .form-subtitle {
                font-size: 1.4rem;
                margin: 0;
                color: #4a5568;
                text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.6);
            }

            .assignment-form {
                padding: 30px;
                background: white;
            }

            .form-group {
                margin-bottom: 25px;
            }

            .form-group label {
                display: block;
                margin-bottom: 8px;
                font-weight: 600;
                color: #333;
                font-size: 1.4rem;
            }

            .form-group input {
                width: 100%;
                padding: 15px;
                border: 2px solid #e1e5e9;
                border-radius: 8px;
                font-size: 1.4rem;
                transition: all 0.3s ease;
                box-sizing: border-box;
                background: rgba(255, 255, 255, 0.9);
            }

            .form-group input:focus {
                outline: none;
                border-color: #667eea;
                box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.15);
                background: white;
                transform: translateY(-1px);
            }

            .form-actions {
                display: flex;
                gap: 15px;
                justify-content: flex-start;
                margin-top: 30px;
                padding-top: 20px;
                border-top: 1px solid #eee;
            }

            .btn {
                display: inline-flex;
                align-items: center;
                gap: 8px;
                padding: 12px 24px;
                border: none;
                border-radius: 6px;
                font-size: 1.4rem;
                font-weight: 500;
                text-decoration: none;
                cursor: pointer;
                transition: all 0.3s ease;
            }

            .btn-primary {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                color: white;
                border: none;
                box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
            }

            .btn-primary:hover {
                background: linear-gradient(135deg, #5a67d8 0%, #6a42a0 100%);
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(102, 126, 234, 0.4);
            }

            .btn-secondary {
                background: rgba(108, 117, 125, 0.8);
                color: white;
                border: 2px solid rgba(255, 255, 255, 0.2);
                backdrop-filter: blur(10px);
            }

            .btn-secondary:hover {
                background: rgba(84, 91, 98, 0.9);
                transform: translateY(-2px);
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            }

            .navbar__link {
                color: white;
                text-decoration: none;
                font-size: 1.4rem;
                font-weight: 500;
            }

            .navbar__link:hover {
                color: #ffd700;
            }
        </style>

        <script>
            // Form validation
            document
                .querySelector(".assignment-form")
                ?.addEventListener("submit", function (e) {
                    const requiredFields = this.querySelectorAll("[required]");
                    let isValid = true;

                    requiredFields.forEach((field) => {
                        if (!field.value.trim()) {
                            isValid = false;
                            field.style.borderColor = "#e74c3c";
                        } else {
                            field.style.borderColor = "#ddd";
                        }
                    });

                    if (!isValid) {
                        e.preventDefault();
                        alert("Vui lòng điền đầy đủ các trường bắt buộc!");
                    }
                    // nếu hợp lệ thì để form gửi thật → KHÔNG preventDefault nữa
                });
        </script>
    </body>
</html>
