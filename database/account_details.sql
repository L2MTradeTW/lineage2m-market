CREATE TABLE Account_Details (

    Detail_ID INT AUTO_INCREMENT PRIMARY KEY,

    Account_ID INT NOT NULL,

    Defense INT,

    Damage_Reduction INT,

    Skill_Resistance INT,

    Damage INT,

    Hit INT,

    Critical_Rate DECIMAL(5,2),

    Critical_Damage DECIMAL(5,2),

    Collection_Percent DECIMAL(5,2),

    Soul_Register DECIMAL(5,2),

    Soul_Complete DECIMAL(5,2),

    Awakening_Level INT,

    Notes TEXT,

    Update_Time DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (Account_ID)
        REFERENCES Accounts(Account_ID)

);