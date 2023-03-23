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

-- UC4 Edit Contact
UPDATE AddressBook_DB SET LastName = 'Ko' WHERE FirstName = 'Rushi'
UPDATE AddressBook_DB SET Address = 'Room no5 chawl no3 ' WHERE FirstName = 'Rushi'
UPDATE AddressBook_DB SET City = 'Sangali' WHERE FirstName = 'Roy'
UPDATE AddressBook_DB SET State = 'Goa' WHERE FirstName = 'Ron'
UPDATE AddressBook_DB SET Zip = 400098 WHERE FirstName = 'Rushi'
UPDATE AddressBook_DB SET PhoneNumber = 9664977978 WHERE FirstName = 'Rushi'
UPDATE AddressBook_DB SET Email = 'koshti3.gmail' WHERE FirstName = 'Rushi'

-- UC5 Delete contact
DELETE FROM AddressBook_DB WHERE FirstName = 'Rushi'

-- UC6 Retrive By City or State
SELECT * FROM AddressBook_DB WHERE City = 'Mumbai'
SELECT * FROM AddressBook_DB WHERE State = 'Maharastra'

-- UC7 Size of Address book 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY City 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY State

SELECT COUNT (*) FROM AddressBook_DB WHERE City = 'Mumbai' GROUP BY City
SELECT COUNT (*) FROM AddressBook_DB WHERE State = 'Maharastra' GROUP BY State

SELECT COUNT (*) AS CityCount,City FROM AddressBook_DB GROUP BY City
SELECT COUNT (*) AS StateCount,State FROM AddressBook_DB GROUP BY State

-- UC8 Sort By First Name For City
SELECT * FROM AddressBook_DB WHERE City = 'Sangali' ORDER BY FirstName

-- UC9 Add coloum to Address Book Table
ALTER TABLE AddressBook_DB ADD AddressBookType VARCHAR(50)
ALTER TABLE AddressBook_DB ADD AddressBookName VARCHAR(50)

UPDATE AddressBook_DB
SET AddressBookType = 'Friend'
WHERE City = 'Mumbai'

UPDATE AddressBook_DB
SET AddressbookType = 'Profession'
WHERE City = 'Sangali'

UPDATE AddressBook_DB
SET AddressbookName = 'Jon'
WHERE City = 'Sangali'

UPDATE AddressBook_DB
SET AddressbookName = 'Sam'
WHERE City = 'Mumbai'

UPDATE AddressBook_DB
SET AddressbookName = FirstName + LastName
WHERE City = 'Sangali'

-- UC10 get number of contact persons
SELECT AddressBookType, COUNT (AddressBookType) AS NoOfContactPresent FROM AddressBook_DB GROUP BY AddressBookType


-- UC11 add person to both Friend and Family
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,AddressBookType,AddressBookName)
VALUES ('Ram','Sn','jk chawle','Mumbai','Maharastra',400092,1234512345,'adiwbe.gmail.com','Friend','RamSn'),
('Ram','Sn','jk chawle','Mumbai','Maharastra',400092,1234512345,'adiwbe.gmail.com','Family','RamSn')