CREATE TABLE Listings (

    Listing_ID INT AUTO_INCREMENT PRIMARY KEY,

    Listing_No VARCHAR(20) NOT NULL UNIQUE,

    Member_ID INT NOT NULL,

    Game_ID INT NOT NULL,

    Server_ID INT NOT NULL,

    Listing_Type ENUM(
        '帳號',
        '遊戲幣',
        '物品'
    ) NOT NULL,

    Title VARCHAR(200) NOT NULL,

    Price DECIMAL(12,2) NOT NULL,

    Negotiable BOOLEAN DEFAULT FALSE,

    Status ENUM(
        '上架中',
        '交易中',
        '已售出',
        '已下架'
    ) DEFAULT '上架中',

    View_Count INT DEFAULT 0,

    Favorite_Count INT DEFAULT 0,

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    Update_Time DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (Member_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Game_ID)
        REFERENCES Games(Game_ID),

    FOREIGN KEY (Server_ID)
        REFERENCES Servers(Server_ID)

);