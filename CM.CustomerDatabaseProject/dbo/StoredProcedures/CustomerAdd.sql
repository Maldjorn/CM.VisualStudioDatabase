CREATE PROCEDURE [dbo].[Customers_Add]
    @firstName varchar(50),
    @lastName varchar(50),
    @phoneNumber varchar(20),   
    @email varchar(50), 
	@notes varchar(50),
    @totalPurchasesAmount int
AS
BEGIN
INSERT INTO dbo.[Customers](
	firs_name, 
	last_name, 
	phone_number, 
	email, 
	notes,
	total_purchases_amount)
VALUES(
    @firstName, 
	@lastName, 
	@phoneNumber, 
	@email, 
	@notes,
	@totalPurchasesAmount)
	
SELECT @@IDENTITY
END