CREATE PROCEDURE [dbo].[addresses_Add]
	@customer_ID int,
	@line varchar(100),
	@line2 varchar(100),
	@addressType int,
	@city varchar(50),
	@postalCode varchar(10), 
	@state varchar(50), 
	@country varchar(40)
AS
BEGIN
INSERT INTO dbo.[Addresses](
	customer_ID,
	address_Line,
	address_Line_2,
	address_type,
	city,
	postal_code,
	[state], 
	country)
VALUES(
	@customer_ID,
	@line,
	@line2,
	@addressType,
	@city,
	@postalCode,
	@state, 
	@country)
SELECT @@IDENTITY
END