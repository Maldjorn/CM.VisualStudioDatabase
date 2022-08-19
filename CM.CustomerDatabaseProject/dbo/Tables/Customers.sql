CREATE TABLE Customers
(
	customer_ID int IDENTITY(1,1) PRIMARY KEY,
	first_name varchar(50),
	last_name varchar(50) NOT NULL,
	phone_number varchar(20) CONSTRAINT phone_number_chk CHECK(phone_number LIKE '+[1-9]' + REPLICATE('[0-9]', 14) OR phone_number LIKE '[1-9]' + REPLICATE('[0-9]', 14)),
	email varchar(50) CONSTRAINT email_chk CHECK(email LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'),
	notes varchar(100) NOT NULL,
	total_purchases_amount decimal,

);