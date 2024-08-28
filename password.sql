CREATE DATABASE qr_system;

USE qr_system;

CREATE TABLE user_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    pdf_file VARCHAR(255) NOT NULL
);

-- Insert sample data
INSERT INTO user_data (password, pdf_file) VALUES 
('Jaison', 'file1.pdf'),
('Jenin', 'file2.pdf');

select * from  user_data;