-- sql is structural query language it stand 
-- Sql is standerd language for storing and retriving data from database 
--
-- UC1 Creating Database
CREATE DATABASE AddressBook_Service

--UC2 Creating address book table
CREATE TABLE AddressBook_DB
(
PersonId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR(50) NOT NULL
);

SELECT * FROM AddressBook_DB

-- UC3 Inserting new Contact 
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES
('Rushi','Koshti','3/5 Jay Bhavani Chawl','Mumbai','Maharastra',400078,1234567890,'rushikesh.kohti.@gmail.com'),
('Rutik','Koshti','3/5 Jay Bhavani Chawl','Mumbai','Maharastra',400078,1234567890,'rushikesh.kohti.@gmail.com'),
('Ron','Koshti','3/5 Jay Bhavani Chawl','Mumbai','Maharastra',400078,1234567890,'rushikesh.kohti.@gmail.com'),
('Roy','Koshti','3/5 Jay Bhavani Chawl','Mumbai','Maharastra',400078,1234567890,'rushikesh.kohti.@gmail.com')

