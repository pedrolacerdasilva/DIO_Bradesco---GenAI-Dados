-- Create table: Collections
CREATE TABLE tbl_collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    CollectionSetName VARCHAR(255) NOT NULL,
    ReleaseDate DATE,
    TotalCardsInCollection INT
);

-- Create table: Cards
CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    HP INT,
    Name VARCHAR(255) NOT NULL,
    Type VARCHAR(100),
    Stage VARCHAR(100),
    Info TEXT,
    Attack VARCHAR(255),
    Damage VARCHAR(50),
    Weak VARCHAR(100),
    Resistance VARCHAR(100),
    Retreat VARCHAR(100),
    CardNumberInCollection INT,

    -- Foreign key: each card belongs to a collection set
    CollectionID INT,
    CONSTRAINT fk_collection
        FOREIGN KEY (CollectionID)
        REFERENCES tbl_collections(id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);
