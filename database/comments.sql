CREATE TABLE Comments (

    Comment_ID INT AUTO_INCREMENT PRIMARY KEY,

    Listing_ID INT NOT NULL,

    Member_ID INT NOT NULL,

    Comment_Content TEXT NOT NULL,

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (Listing_ID)
        REFERENCES Listings(Listing_ID)
        ON DELETE CASCADE,

    FOREIGN KEY (Member_ID)
        REFERENCES Members(Member_ID)

);