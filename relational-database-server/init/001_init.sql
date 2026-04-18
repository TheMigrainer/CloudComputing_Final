CREATE DATABASE IF NOT EXISTS minicloud;
USE minicloud;
CREATE TABLE IF NOT EXISTS notes(
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO notes(title) VALUES ('Hello from MariaDB!');

-- 2. YÊU CẦU MỞ RỘNG 3: Database sinh viên (studentdb)
CREATE DATABASE IF NOT EXISTS studentdb;
USE studentdb;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id VARCHAR(10),
    fullname VARCHAR(100),
    dob DATE,
    major VARCHAR(50)
);

INSERT INTO students (student_id, fullname, dob, major) VALUES 
('SV001', 'Nguyen Van A', '2003-01-01', 'Cloud Computing'),
('SV002', 'Tran Thi B', '2003-05-10', 'Software Engineering'),
('SV003', 'Le Van C', '2003-09-20', 'Information Security');