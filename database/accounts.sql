CREATE TABLE Accounts (

    Account_ID INT AUTO_INCREMENT PRIMARY KEY,

    Listing_No VARCHAR(20) NOT NULL UNIQUE COMMENT 'GN000001',

    Member_ID INT NOT NULL,

    Game_ID INT NOT NULL,

    Server_ID INT NOT NULL,

    Title VARCHAR(150) NOT NULL,

    Profession VARCHAR(50),

    Level VARCHAR(20),

    Description TEXT,

    Price DECIMAL(12,2) NOT NULL,

    Negotiable BOOLEAN DEFAULT FALSE,

    Status ENUM(
        '上架中',
        '交易中',
        '已售出',
        '已下架'
    ) DEFAULT '上架中',

    View_Count INT DEFAULT 0,

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    Update_Time DATETIME NULL,

    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),

    FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID),

    FOREIGN KEY (Server_ID) REFERENCES Servers(Server_ID)

);