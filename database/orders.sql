CREATE TABLE Orders (

    Order_ID INT AUTO_INCREMENT PRIMARY KEY,

    Order_No VARCHAR(20) NOT NULL UNIQUE,

    Listing_ID INT NOT NULL,

    Buyer_ID INT NOT NULL,

    Seller_ID INT NOT NULL,

    Total_Amount DECIMAL(12,2) NOT NULL,

    Order_Status ENUM(
        '待付款',
        '待交易',
        '交易完成',
        '已取消'
    ) DEFAULT '待付款',

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    Update_Time DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (Listing_ID)
        REFERENCES Listings(Listing_ID),

    FOREIGN KEY (Buyer_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Seller_ID)
        REFERENCES Members(Member_ID)

);