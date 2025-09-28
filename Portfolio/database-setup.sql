-- Tạo bảng assignments
CREATE TABLE IF NOT EXISTS assignments (
    id SERIAL PRIMARY KEY,
    assignment_name VARCHAR(255) NOT NULL,
    assignment_link VARCHAR(500) NOT NULL
);

-- Thêm data mẫu
INSERT INTO assignments (assignment_name, assignment_link) VALUES 
('Bài tập 1 - Portfolio cá nhân', 'https://github.com/nguyentiendat/portfolio'),
('Bài tập 2 - Quản lý sinh viên', 'https://github.com/nguyentiendat/student-management'),
('Bài tập 3 - Web API', 'https://github.com/nguyentiendat/web-api')
ON CONFLICT DO NOTHING;