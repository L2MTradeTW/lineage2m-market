CREATE TABLE Servers (
    Server_ID INT AUTO_INCREMENT PRIMARY KEY,

    Game_ID INT NOT NULL,

    Server_Name VARCHAR(100) NOT NULL COMMENT '伺服器名稱',

    Currency_Name VARCHAR(50) DEFAULT NULL COMMENT '遊戲幣名稱',

    Platform_Buy_Rate DECIMAL(10,2) DEFAULT 0 COMMENT '平台收購比例',

    Platform_Sell_Rate DECIMAL(10,2) DEFAULT 0 COMMENT '平台販售比例',

    Current_Stock BIGINT DEFAULT 0 COMMENT '目前庫存',

    Status ENUM('啟用','停用') DEFAULT '啟用',

    Home_Display BOOLEAN DEFAULT TRUE COMMENT '首頁是否顯示',

    Sort_Order INT DEFAULT 0,

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID)
);