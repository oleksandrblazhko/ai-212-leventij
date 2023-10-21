CREATE TABLE Payment(
    payId INT PRIMARY KEY NOT NULL,
    paymentMethod VARCHAR(50) NOT NULL
);

CREATE TABLE MeteoService(
    meteosvcId INT PRIMARY KEY NOT NULL,
    meteosvcName VARCHAR(100) NOT NULL,
    cost INT NOT NULL CHECK (cost >= 0),
    dateTime DATE NOT NULL CHECK (dateTime >= CURRENT_DATE),
    payId INT NOT NULL REFERENCES Payment(payId)
);

CREATE TABLE OnlineApplication(
    appId INT PRIMARY KEY NOT NULL,
    userData VARCHAR(1000) NOT NULL
);

CREATE TABLE User(
    userId INT PRIMARY KEY NOT NULL,
    fullName VARCHAR(120) NOT NULL CHECK (fullName REGEXP '^[A-Za-z ]+$'),
    address VARCHAR(200) NOT NULL CHECK (address REGEXP '^[A-Za-z0-9,.\- ]+$'),
    accountNumber INT NOT NULL CHECK (accountNumber >= 0),
    appId INT NOT NULL REFERENCES OnlineApplication(appId),
    meteosvcId INT NOT NULL REFERENCES MeteoService(meteosvcId)
);
