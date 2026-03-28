-- Tạo bảng
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Thêm dữ liệu mẫu
INSERT INTO users (name, email) VALUES
('Quang', 'quang@example.com'),
('An', 'an@example.com');