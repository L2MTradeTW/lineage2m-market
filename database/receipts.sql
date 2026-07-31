CREATE TABLE Receipts (

    Receipt_ID INT AUTO_INCREMENT PRIMARY KEY,

    Receipt_No VARCHAR(20) NOT NULL UNIQUE,

    Order_ID INT NOT NULL,

    Receipt_Type ENUM(
        '帳號交易',
        '遊戲幣交易',
        '物品交易'
    ) NOT NULL,

    Issue_Date DATETIME DEFAULT CURRENT_TIMESTAMP,

    Receipt_Status ENUM(
        '有效',
        '作廢'
    ) DEFAULT '有效',

    Notes TEXT,

    FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID)

);