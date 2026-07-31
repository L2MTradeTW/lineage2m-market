CREATE TABLE Waiting_Queue (

    Queue_ID INT AUTO_INCREMENT PRIMARY KEY,

    Member_ID INT NOT NULL,

    Queue_Type ENUM(
        '收購',
        '販售'
    ) NOT NULL,

    Server_ID INT NOT NULL,

    Queue_Number INT NOT NULL,

    Status ENUM(
        '等待中',
        '通知中',
        '完成',
        '取消'
    ) DEFAULT '等待中',

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    Expire_Time DATETIME,

    FOREIGN KEY (Member_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Server_ID)
        REFERENCES Servers(Server_ID)

);