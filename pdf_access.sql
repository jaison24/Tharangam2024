CREATE DATABASE pdf_access_db;

CREATE TABLE pdf_access (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each record
    password VARCHAR(255) UNIQUE NOT NULL,  -- Password field (must be unique)
    pdf_path VARCHAR(255) NOT NULL        -- Path to the associated PDF file
);


INSERT INTO pdf_access (password, pdf_path) VALUES
('Jaison', "C:\\Users\\ASUS\\Downloads\\Jaison_Coupon.pdf");

SELECT * FROM pdf_access;
