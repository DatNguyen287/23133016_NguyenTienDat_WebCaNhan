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
        <title>My Portfolio - Bài tập lập trình web</title>
        <!-- responsive css -->
        <link rel="stylesheet" href="./assets/css/responsive.css" />
    </head>

    <body>
        <!-- header -->
        <header class="header">
            <div class="container">
                <div class="header-top">
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
                        <ul class="navbar__list" id="navbar__list--pc">
                            <li class="navbar__item">
                                <a
                                    href="#home"
                                    class="navbar__link navbar__link--active"
                                    >Home</a
                                >
                            </li>
                            <li class="navbar__item">
                                <a href="#skills" class="navbar__link"
                                    >Skills</a
                                >
                            </li>
                            <li class="navbar__item">
                                <a href="#projects" class="navbar__link"
                                    >Projects</a
                                >
                            </li>
                            <li class="navbar__item">
                                <a href="#about" class="navbar__link">About</a>
                            </li>
                            <li class="navbar__item">
                                <a href="#contact" class="navbar__link"
                                    >Contact</a
                                >
                            </li>
                            <li class="navbar__item">
                                <a href="#submit" class="navbar__link"
                                    >Submission</a
                                >
                            </li>
                        </ul>
                    </nav>
                    <!-- cta action -->
                    <div class="header__action"></div>
                </div>

                <!-- hero -->
                <section class="hero" id="home">
                    <!-- hero left -->
                    <section class="hero__content">
                        <h1 class="hero__heading">
                            Hello, I'm a Data Engineer
                        </h1>
                        <p class="hero__desc">
                           Là sinh viên năm 3 đam mê công nghệ, luôn tìm kiếm cơ hội để học hỏi, phát triển kỹ năng và sáng tạo trong thế giới số đầy tiềm năng.
                        </p>
                        <div class="hero__row">
                            <a href="#projects" class="btn">View My Work</a>
                            <span class="hero__phone"
                                >Let's create something amazing!</span
                            >
                        </div>
                    </section>

                    <!-- hero right -->
                    <div class="hero__media">
                        <figure class="hero__images">
                            <img
                                src="./assets/img/avatar1.jpg"
                                alt="Web Developer Portfolio"
                                class="hero__img hero__img-large"
                            />
                            <img
                                src="./assets/img/avatar2.jpg"
                                alt="Web Development"
                                class="hero__img hero__img-small"
                            />
                        </figure>
                    </div>
                </section>
            </div>
        </header>

        <!-- Mobile Header -->
        <div class="mobile-header">
            <input
                type="checkbox"
                id="menu-checkbox"
                name="menu-checkbox"
                class="menu-checkbox"
                hidden
            />
            <label for="menu-checkbox">
                <svg
                    class="menu-header__icon"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 448 512"
                >
                    <path
                        fill="currentColor"
                        d="M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z"
                    />
                </svg>
            </label>

            <!-- overlay -->
            <label for="menu-checkbox" class="menu-overlay"></label>

            <!-- menu-content -->
            <div class="menu-drawer">
                <!-- menu-top -->
                <div class="menu-drawer__top">
                    <a href="./"
                        ><h3
                            style="
                                color: #fff;
                                font-size: 2rem;
                                font-weight: 600;
                            "
                        >
                            MyPortfolio
                        </h3></a
                    >
                    <label for="menu-checkbox">
                        <svg
                            class="close__menu"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 640 640"
                        >
                            <path
                                fill="currentColor"
                                d="M320 112C434.9 112 528 205.1 528 320C528 434.9 434.9 528 320 528C205.1 528 112 434.9 112 320C112 205.1 205.1 112 320 112zM320 576C461.4 576 576 461.4 576 320C576 178.6 461.4 64 320 64C178.6 64 64 178.6 64 320C64 461.4 178.6 576 320 576zM231 231C221.6 240.4 221.6 255.6 231 264.9L286 319.9L231 374.9C221.6 384.3 221.6 399.5 231 408.8C240.4 418.1 255.6 418.2 264.9 408.8L319.9 353.8L374.9 408.8C384.3 418.2 399.5 418.2 408.8 408.8C418.1 399.4 418.2 384.2 408.8 374.9L353.8 319.9L408.8 264.9C418.2 255.5 418.2 240.3 408.8 231C399.4 221.7 384.2 221.6 374.9 231L319.9 286L264.9 231C255.5 221.6 240.3 221.6 231 231z"
                            />
                        </svg>
                    </label>
                </div>
                <!-- nav-mobile -->
                <ul id="nav__list--mobile"></ul>

                <div class="separate"></div>

                <div class="show-on-mobile">
                    <li class="navbar__item">
                        <a href="#submit" class="navbar__link">Nộp bài tập</a>
                    </li>
                    <li class="navbar__item">
                        <a
                            href="mailto:your.email@example.com"
                            class="navbar__link"
                            >Send Email</a
                        >
                    </li>
                </div>
            </div>
        </div>

        <!-- main -->
        <main>
            <!-- skills -->
            <section class="service" id="skills">
                <div class="container">
                    <h2 class="service__heading section-heading">My Skills</h2>
                    <p class="service__desc section-desc">
                        Với niềm đam mê công nghệ, tôi ứng dụng các nền tảng và giải pháp kỹ thuật để xây dựng những trải nghiệm số vượt trội.
                    </p>

                    <div class="service__row">
                        <!-- skills left -->
                        <figure>
                            <img
                                src="./assets/img/avatar3.jpg"
                                alt="Web Development Skills"
                                class="service__img"
                            />
                        </figure>
                        <!-- skills right -->
                        <div class="service__list">
                            <!-- skill 1 -->
                            <section class="service-item">
                                <div class="service-item__icon">
                                    <i
                                        class="fas fa-code"
                                        style="font-size: 2.4rem"
                                    ></i>
                                </div>
                                <div class="service-item__body">
                                    <div class="service-item__heading">
                                        Frontend Development
                                    </div>
                                    <div class="service-item__desc">
                                        HTML5, CSS3, JavaScript, React.js,
                                        Vue.js và các responsive design
                                        frameworks hiện đại.
                                    </div>
                                </div>
                            </section>

                            <!-- skill 2 -->
                            <section class="service-item">
                                <div class="service-item__icon">
                                    <i
                                        class="fas fa-server"
                                        style="font-size: 2.4rem"
                                    ></i>
                                </div>
                                <div class="service-item__body">
                                    <div class="service-item__heading">
                                        Backend Development
                                    </div>
                                    <div class="service-item__desc">
                                        Java Servlet, JSP, Node.js, PHP, thiết
                                        kế cơ sở dữ liệu và phát triển RESTful
                                        API.
                                    </div>
                                </div>
                            </section>

                            <!-- skill 3 -->
                            <section class="service-item">
                                <div class="service-item__icon">
                                    <i
                                        class="fas fa-mobile-alt"
                                        style="font-size: 2.4rem"
                                    ></i>
                                </div>
                                <div class="service-item__body">
                                    <div class="service-item__heading">
                                        MVC Architecture
                                    </div>
                                    <div class="service-item__desc">
                                        Model-View-Controller pattern,
                                        Servlet/JSP, và phát triển ứng dụng web
                                        theo mô hình MVC.
                                    </div>
                                </div>
                            </section>
                            <a href="#projects" class="btn service__btn"
                                >View Projects</a
                            >
                        </div>
                    </div>
                </div>
            </section>

            <!-- projects -->
            <section class="work" id="projects">
                <div class="container">
                    <h2 class="section-heading">My Projects</h2>
                    <p class="section-desc work__desc">
                        Dưới đây là một số dự án trong quá trình học của
                        tôi, thể hiện kỹ năng và sự sáng tạo.
                    </p>

                    <div class="work__list">
                        <!-- project 1 -->
                        <section class="work-item">
                            <i
                                class="fas fa-coffee work-item__icon"
                                style="font-size: 4rem; color: #2e80ce"
                            ></i>
                            <h3 class="work-item__heading">
                                Coffee Shop Manager
                            </h3>
                            <p class="work-item__desc">
                                Quản lý vận hành quán cà phê hiệu quả và chuyên nghiệp. Tối ưu quy trình, nguyên liệu và trải nghiệm khách hàng.
                            </p>
                            <a href="https://github.com/DatNguyen287/CoffeShopManage" class="work-item__more">Xem Project</a>
                        </section>

                        <!-- project 2 -->
                        <section class="work-item">
                            <i
                                class="fas fa-music work-item__icon"
                                style="font-size: 4rem; color: #2e80ce"
                            ></i>
                            <h3 class="work-item__heading">Music Analytics</h3>
                            <p class="work-item__desc">
                                Ứng dụng các kỹ thuật phân tích và trực quan hóa để hiểu sâu hơn về thế giới âm nhạc số. Kết hợp công nghệ và sáng tạo để biến dữ liệu thành những câu chuyện đầy cảm hứng.
                            </p>
                            <a href="https://github.com/KateTc1/Py" class="work-item__more">Xem Project</a>
                        </section>

                        <!-- project 3 -->
                        <section class="work-item">
                            <i
                                class="fas fa-hospital work-item__icon"
                                style="font-size: 4rem; color: #2e80ce"
                            ></i>
                            <h3 class="work-item__heading">
                                Fetal Data Analysis
                            </h3>
                            <p class="work-item__desc">
                                Phân tích dữ liệu thai nhi giúp theo dõi và đánh giá sự phát triển trong giai đoạn trước sinh.
                            </p>
                            <a href="https://github.com/DatNguyen287/Fetal-Health" class="work-item__more">Xem Project</a>
                        </section>
                    </div>
                </div>
            </section>

            <!-- about -->
            <section class="about" id="about">
                <div class="container">
                    <div class="about-row">
                        <!-- about left -->
                        <div class="about__media">
                            <figure class="about__img">
                                <img
                                    src="./assets/img/avatar4.jpg"
                                    alt="About Me"
                                    class="about__img--big"
                                />
                                <img
                                    src="./assets/img/avatar5.jpg"
                                    alt="Web Developer"
                                    class="about__img--small"
                                />
                            </figure>
                        </div>
                        <!-- about right -->
                        <section class="about-content">
                            <h2 class="section-heading">About Me</h2>
                            <p class="section-desc">
                                Tôi là một sinh viên đam mê phát triển web với
                                kinh nghiệm tạo ra các trang web hiện đại và
                                responsive. Tôi thích chuyển đổi các vấn đề phức
                                tạp thành những thiết kế đơn giản, đẹp mắt mang
                                lại trải nghiệm người dùng tuyệt vời.
                            </p>
                            <p class="section-desc">
                                <strong>Kỹ năng chuyên môn:</strong><br />
                                • Java, Servlet/JSP, MVC Pattern<br />
                                • HTML5, CSS3, JavaScript, Bootstrap<br />
                                • MySQL, Database Design<br />
                                • Git, Maven, Tomcat Server
                            </p>
                            <a href="#contact" class="btn about-content__btn"
                                >Liên hệ</a
                            >
                        </section>
                    </div>
                </div>
            </section>

            <!-- contact -->
            <section class="appointment" id="contact">
                <div class="container">
                    <div class="appointment__inner">
                        <h2 class="section-heading appointment__heading">
                            Thông tin liên hệ
                        </h2>
                        <p class="section-desc appointment__desc">
                            <strong>Email:</strong> 23133016@student.hcmute.edu.vn<br />
                            <strong>Điện thoại:</strong> 0374001900<br />
                            <strong>Địa chỉ:</strong> Biên Hòa, Việt Nam
                        </p>
                        <a
                            href="mailto:23133016@student.hcmute.edu.vn"
                            class="btn appointment__btn"
                            >Gửi Email</a
                        >
                    </div>
                </div>
            </section>

            <!-- Assignment Management -->
            <section class="submission" id="submit">
                <div class="container">
                    <div class="submission__inner">
                        <h2 class="section-heading">Quản lý bài tập</h2>
                        <p class="section-desc submission__desc">
                            Danh sách bài tập được quản lý bằng Java Servlet và Database
                        </p>

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
                                        <!-- <span class="assignment-date">
                                            <script>document.write(new Date().toLocaleDateString('vi-VN'))</script>
                                        </span> -->
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
                </div>
            </section>
        </main>

        <!-- footer -->
        <footer class="footer">
            <div class="container">
                <!-- top footer -->
                <div class="footer__top">
                    <!-- column 1 -->
                    <div class="footer__column footer-hidden-tablet">
                        <!-- logo -->
                        <a href="./"
                            ><h3
                                style="
                                    color: #fff;
                                    font-size: 2.5rem;
                                    font-weight: 600;
                                "
                            >
                                MyPortfolio
                            </h3></a
                        >
                        <p class="footer__desc">
                            Bài tập lập trình web - Portfolio cá nhân được xây
                            dựng với HTML, CSS, JavaScript và Java Servlet theo
                            mô hình MVC.
                        </p>
                    </div>
                    <!-- column 2 -->
                    <div class="footer__column">
                        <h3 class="footer__heading">Quick Links</h3>
                        <ul class="footer__list">
                            <li class="footer__item">
                                <a href="#home" class="footer__link">Home</a>
                            </li>
                            <li class="footer__item">
                                <a href="#skills" class="footer__link"
                                    >Skills</a
                                >
                            </li>
                            <li class="footer__item">
                                <a href="#projects" class="footer__link"
                                    >Projects</a
                                >
                            </li>
                            <li class="footer__item">
                                <a href="#about" class="footer__link">About</a>
                            </li>
                        </ul>
                    </div>
                    <!-- column 3 -->
                    <div class="footer__column">
                        <h3 class="footer__heading">Thông tin</h3>
                        <ul class="footer__list">
                            <li class="footer__item">
                                <span class="footer__link"
                                    >Sinh viên: Nguyễn Tiến Đạt</span
                                >
                            </li>
                            <li class="footer__item">
                                <span class="footer__link">MSSV: 23133016</span>
                            </li>
                            <li class="footer__item">
                                <span class="footer__link">Lớp: 23133C</span>
                            </li>
                        </ul>
                    </div>
                    <!-- column 4 -->
                    <div class="footer__column">
                        <h3 class="footer__heading">Liên hệ</h3>
                        <ul class="footer__list">
                            <li class="footer__item">
                                <span class="footer__link"
                                    >Email: 23133016@student.hcmute.edu.vn</span
                                >
                            </li>
                            <li class="footer__item">
                                <span class="footer__link"
                                    >SĐT: 0374001900</span
                                >
                            </li>
                            <li class="footer__item">
                                <a href="#submit" class="footer__link"
                                    >Nộp bài tập</a
                                >
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- copyright -->
                <div class="footer__copyright">
                    <p class="footer__copyright-text">
                        2024 MyPortfolio. Bài tập lập trình web - Nguyễn Tiến
                        Đạt - 23133C - Lập trình web
                    </p>
                </div>
            </div>
        </footer>

        <script>
            // Mobile navigation
            const navPC = document.querySelector("#navbar__list--pc");
            const navMobile = document.querySelector("#nav__list--mobile");
            if (navPC && navMobile) {
                navMobile.innerHTML = navPC.innerHTML;
            }

            // Smooth scrolling for anchor links
            document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
                anchor.addEventListener("click", function (e) {
                    e.preventDefault();
                    const target = document.querySelector(
                        this.getAttribute("href")
                    );
                    if (target) {
                        target.scrollIntoView({
                            behavior: "smooth",
                            block: "start",
                        });
                    }
                });
            });

            // Form validation
            document
                .querySelector(".submission__form")
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
                        return false;
                    }

                    // Check if running with backend or just HTML
                    const formAction = this.getAttribute("action");
                    if (
                        formAction === "submit" ||
                        formAction.includes("servlet")
                    ) {
                        // Show loading message for real backend
                        const submitBtn = this.querySelector(
                            'button[type="submit"]'
                        );
                        submitBtn.innerHTML = "Đang xử lý...";
                        submitBtn.disabled = true;
                    } else {
                        // Demo mode - show success message without backend
                        e.preventDefault();
                        this.showDemoSuccess();
                        return false;
                    }
                });

            // Demo success function for HTML-only mode
            if (document.querySelector(".submission__form")) {
                document.querySelector(".submission__form").showDemoSuccess =
                    function () {
                        const formData = new FormData(this);
                        const studentName = formData.get("studentName");
                        const assignmentTitle = formData.get("assignmentTitle");

                        // Create success message
                        const successDiv = document.createElement("div");
                        successDiv.innerHTML =
                            `
                        <div style="background: #d4edda; border: 1px solid #c3e6cb; color: #155724; 
                                    padding: 20px; border-radius: 8px; margin: 20px 0; text-align: center;">
                            <h3>✅ Demo: Nộp bài thành công!</h3>
                            <p><strong>Sinh viên:</strong> ${studentName}</p>
                            <p><strong>Bài tập:</strong> ${assignmentTitle}</p>
                            <p><strong>Thời gian:</strong> ` +
                            new Date().toLocaleString("vi-VN") +
                            `</p>
                            <hr style="margin: 15px 0; border: none; border-top: 1px solid #c3e6cb;">
                            <p><em>Đây là chế độ demo. Để sử dụng đầy đủ tính năng, cần cài đặt Java + Maven + MySQL.</em></p>
                            <button onclick="this.parentElement.parentElement.remove()" 
                                    style="background: #28a745; color: white; border: none; padding: 8px 16px; 
                                           border-radius: 4px; cursor: pointer; margin-top: 10px;">
                                Đóng
                            </button>
                        </div>
                    `;

                        // Insert after form
                        this.parentNode.insertBefore(
                            successDiv,
                            this.nextSibling
                        );

                        // Scroll to success message
                        successDiv.scrollIntoView({
                            behavior: "smooth",
                            block: "center",
                        });

                        // Reset form
                        this.reset();
                    };
            }

            // Delete assignment function
            function deleteAssignment(id) {
                if (confirm("Bạn có chắc chắn muốn xóa bài tập này không?")) {
                    // Redirect to controller to delete
                    window.location.href = 'assignments?action=delete&id=' + id;
                }
            }
        </script>
    </body>
</html>
