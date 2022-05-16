create database DarwinABC_db; 

create table Customer (
    CustEmail varchar(100) NOT NULL,
    CustFName varchar(100) NOT NULL,
    CustLName varchar(100) NOT NULL,
    Title text,
    Address varchar(255) NOT NULL,
    City varchar(100) NOT NULL,
    State varchar(100) NOT NULL,
    Country varchar(100) NOT NULL,
    Postcode varchar(100) NOT NULL,
    Phone integer(100) NOT NULL UNIQUE,
    CONSTRAINT PK_Customer PRIMARY KEY (CustEmail)
)ENGINE=InnoDB, DEFAULT CHARACTER SET utf8;

create table Purchase (
    PurchaseNo integer(255) NOT NULL UNIQUE,
    CustEmail varchar(100) NOT NULL,
    Date DEFAULT GETDATE(),
    CONSTRAINT PK_Purchase PRIMARY KEY (PurchaseNo),
    CONSTRAINT FK_Purchase FOREIGN KEY (CustEmail)
)ENGINE=InnoDB, DEFAULT CHARACTER SET utf8;

create table PurchaseItem (
    ItemNo integer(255) NOT NULL UNIQUE,
    Quantity varchar(255),
    PurchaseNo integer(255) NOT NULL UNIQUE,
    ProductNo integer(255) NOT NULL UNIQUE,
    CONSTRAINT PK_Purchase PRIMARY KEY (ItemNo),
    CONSTRAINT FK_Purchase FOREIGN KEY (PurchaseNo),
    CONSTRAINT FK_Purchase FOREIGN KEY (ProductNo)
)ENGINE=InnoDB, DEFAULT CHARACTER SET utf8;

create table Product (
    ProductNo integer(255) NOT NULL UNIQUE,
    Description text(255),
    Price integer(100) Not NULL,
    Category varchar(100) Not NULL,
    Color text(100),
    Size integer(100),
    CONSTRAINT PK_Purchase PRIMARY KEY (ProductNo)
)ENGINE=InnoDB, DEFAULT CHARACTER SET utf8;







