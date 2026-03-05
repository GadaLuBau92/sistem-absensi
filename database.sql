-- SQL Schema for Attendance System

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    date DATE NOT NULL,
    time_in TIME NOT NULL,
    time_out TIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(100) NOT NULL,
    schedule TIME NOT NULL
);

CREATE TABLE ClassAttendance (
    class_attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    class_id INT,
    attendance_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id),
    FOREIGN KEY (attendance_id) REFERENCES Attendance(attendance_id)
);