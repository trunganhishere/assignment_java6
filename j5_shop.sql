CREATE TABLE Categories (
    id varchar(100) PRIMARY KEY,
    name NVARCHAR (100) NOT NULL
);

CREATE TABLE Products (
    id INT PRIMARY KEY IDENTITY (1, 1),
    name NVARCHAR (100) NOT NULL,
    image NVARCHAR(100),
    price float,
    Categoryid VARCHAR(100) NOT NULL,
    Createdate DATE NOT NULL,
    available tinyint,
    FOREIGN KEY (Categoryid) REFERENCES Categories(id)
);

CREATE TABLE Accounts(
    username varchar(100) PRIMARY KEY,
    password nvarchar(100) NOT NULL,
    fullname nvarchar(100) NOT NULL,
    email nvarchar(100) NOT NULL,
    photo nvarchar(500),
    activated tinyint,
    admin tinyint
);

create table Orders(
    id BIGINT PRIMARY KEY IDENTITY (1, 1),
    address NVARCHAR (100),
    Createdate DATE NOT NULL,
    Username varchar(100),
    FOREIGN KEY (Username) REFERENCES Accounts(username)
);

create table OrderDetails(
    id BIGINT PRIMARY KEY IDENTITY (1, 1),
    price float,
    quantity int,
    Productid INT NOT NULL,
    Orderid BIGINT NOT NULL,
    FOREIGN KEY (Productid) REFERENCES Products(id),
    FOREIGN KEY (Orderid) REFERENCES Orders(id)
);
