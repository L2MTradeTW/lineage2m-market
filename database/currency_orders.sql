CREATE TABLE Currency_Orders (

    Currency_Order_ID INT AUTO_INCREMENT PRIMARY KEY,

    Order_No VARCHAR(20) NOT NULL UNIQUE,

    Member_ID INT NOT NULL,

    Server_ID INT NOT NULL,

    Order_Type ENUM(
        '收購',
        '販售'
    ) NOT NULL,

    Diamond_Amount INT NOT NULL,

    Unit_Price DECIMAL(10,2) NOT NULL,

    Total_Amount DECIMAL(12,2) NOT NULL,

    Status ENUM(
        '待處理',
        '交易中',
        '已完成',
        '已取消'
    ) DEFAULT '待處理',

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (Member_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Server_ID)
        REFERENCES Servers(Server_ID)

);