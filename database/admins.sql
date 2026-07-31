CREATE TABLE Admins (
    Admin_ID INT AUTO_INCREMENT PRIMARY KEY,
    Admin_No VARCHAR(20) NOT NULL UNIQUE,
    Member_ID INT NOT NULL,

    Admin_Name VARCHAR(50) NOT NULL,

    Admin_Level TINYINT NOT NULL COMMENT '1=擁有者 2=高權限管理 3=專案管理者 4=客服 5=公會領導',

    Status ENUM('正常','停權','離職') DEFAULT '正常',

    Can_View_Member BOOLEAN DEFAULT TRUE,
    Can_Edit_Member BOOLEAN DEFAULT FALSE,
    Can_Manage_Listing BOOLEAN DEFAULT FALSE,
    Can_Manage_Currency BOOLEAN DEFAULT FALSE,
    Can_Manage_Report BOOLEAN DEFAULT FALSE,
    Can_View_Log BOOLEAN DEFAULT FALSE,
    Can_System_Setting BOOLEAN DEFAULT FALSE,

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);