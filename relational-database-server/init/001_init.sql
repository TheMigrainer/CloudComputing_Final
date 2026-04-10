CREATE DATABASE IF NOT EXISTS minicloud;
USE minicloud;
CREATE TABLE IF NOT EXISTS notes(
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL
);
INSERT INTO notes(title) VALUES ('Hello from MariaDB!');

CREATE DATABASE IF NOT EXISTS studentdb;
USE studentdb;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id VARCHAR(10),
    fullname VARCHAR(100)
);
INSERT INTO students (student_id, fullname) VALUES 
('SV001', 'Nguyen Van A'),
('SV002', 'Tran Thi B');