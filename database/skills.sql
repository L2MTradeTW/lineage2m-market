CREATE TABLE Skills (

    Skill_ID INT AUTO_INCREMENT PRIMARY KEY,

    Account_ID INT NOT NULL,

    Profession VARCHAR(50) NOT NULL COMMENT '法師、大劍、弓箭...',

    Skill_Name VARCHAR(100) NOT NULL,

    Skill_Level ENUM(
        '一般',
        '紅',
        '紫',
        '金'
    ) NOT NULL,

    Is_Equipped BOOLEAN DEFAULT TRUE,

    Notes VARCHAR(255),

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (Account_ID)
        REFERENCES Accounts(Account_ID)

);