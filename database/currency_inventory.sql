CREATE TABLE Currency_Inventory (

    Inventory_ID INT AUTO_INCREMENT PRIMARY KEY,

    Game_ID INT NOT NULL,

    Server_ID INT NOT NULL,

    Currency_Name VARCHAR(50) NOT NULL,

    Stock_Amount INT DEFAULT 0,

    Buy_Rate DECIMAL(10,2) NOT NULL,

    Sell_Rate DECIMAL(10,2) NOT NULL,

    Is_Enabled BOOLEAN DEFAULT TRUE,

    Show_On_Home BOOLEAN DEFAULT TRUE,

    Update_Time DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (Game_ID)
        REFERENCES Games(Game_ID),

    FOREIGN KEY (Server_ID)
        REFERENCES Servers(Server_ID)

);