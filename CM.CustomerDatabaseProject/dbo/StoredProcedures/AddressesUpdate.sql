CREATE PROCEDURE [dbo].[addresses_Update]
	@addressID int,
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

UPDATE dbo.Addresses
SET customer_ID = @customer_ID,
	address_Line = @line,
	address_Line_2 = @line2,
	address_type = @addressType,
	city = @city,
	postal_code = @postalCode,
	[state] = @state,
	country = @country

WHERE address_ID = @addressID

END