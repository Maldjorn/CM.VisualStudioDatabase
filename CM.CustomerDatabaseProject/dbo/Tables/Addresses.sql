CREATE TABLE Addresses
(
	address_ID int IDENTITY(1,1) PRIMARY KEY,
	customer_ID int,
	address_Line varchar(100) NOT NULL,
	address_Line_2 varchar(100),
	address_type int NOT NULL default 1,
	city varchar(50) NOT NULL,
	postal_code varchar(6) NOT NULL,
	[state] varchar(50) NOT NULL,
	country varchar(40) NOT NULL CONSTRAINT country_chk CHECK(country IN('United States','Canada')),
	CONSTRAINT FK_Address_type FOREIGN KEY (address_type) REFERENCES AddressType(address_type_ID),
	CONSTRAINT FK_Customer_ID FOREIGN KEY (customer_ID) REFERENCES Customers(customer_ID)
);