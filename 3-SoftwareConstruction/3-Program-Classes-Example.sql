CREATE OR REPLACE TYPE Payment_type as(
    payId INT,
    paymentMethod VARCHAR(50)
);
/
CREATE OR REPLACE TYPE MeteoService_type as(
    meteosvcId INT,
    meteosvcName VARCHAR(100),
    cost INT,
    dateTime DATE,
    payId INT
);
/
CREATE OR REPLACE TYPE OnlineApplication_type as(
    appId INT,
    userData VARCHAR(1000)
);
/
CREATE OR REPLACE TYPE User_type as(
    userId INT,
    fullName VARCHAR(120),
    address VARCHAR(200),
    accountNumber INT,
    appId INT,
    meteosvcId INT
);
/
