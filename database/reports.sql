CREATE TABLE Reports (

    Report_ID INT AUTO_INCREMENT PRIMARY KEY,

    Reporter_ID INT NOT NULL,

    Reported_Member_ID INT,

    Listing_ID INT,

    Order_ID INT,

    Report_Type ENUM(
        '詐騙',
        '不實刊登',
        '惡意留言',
        '其他'
    ) NOT NULL,

    Report_Content TEXT NOT NULL,

    Report_Status ENUM(
        '待處理',
        '處理中',
        '已完成',
        '駁回'
    ) DEFAULT '待處理',

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (Reporter_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Reported_Member_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Listing_ID)
        REFERENCES Listings(Listing_ID),

    FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID)

);