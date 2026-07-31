CREATE TABLE Messages (

    Message_ID INT AUTO_INCREMENT PRIMARY KEY,

    Sender_ID INT NOT NULL,

    Receiver_ID INT NOT NULL,

    Listing_ID INT,

    Message_Content TEXT NOT NULL,

    Is_Read BOOLEAN DEFAULT FALSE,

    Create_Time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (Sender_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Receiver_ID)
        REFERENCES Members(Member_ID),

    FOREIGN KEY (Listing_ID)
        REFERENCES Listings(Listing_ID)
        ON DELETE SET NULL

);