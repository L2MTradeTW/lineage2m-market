CREATE TABLE Members (
    Member_ID INT AUTO_INCREMENT PRIMARY KEY,
    Member_No VARCHAR(20) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Nickname VARCHAR(50) NOT NULL,
    Line_ID VARCHAR(100),
    WeChat_ID VARCHAR(100),
    Gender ENUM('男','女','其他') DEFAULT '其他',
    Email_Verified BOOLEAN DEFAULT FALSE,
    Status ENUM('正常','停權','封鎖') DEFAULT '正常',
    Register_Time DATETIME DEFAULT CURRENT_TIMESTAMP,
    Last_Login DATETIME NULL
);