CREATE PROCEDURE [dbo].[Customers_Update]
    @customerID int,
    @firstName varchar(50),
    @lastName varchar(50),
    @phoneNumber varchar(20),   
    @email varchar(50),   
    @notes varchar(100),
    @totalPurchasesAmount int
AS
BEGIN
    
UPDATE dbo.Customers
SET 
    first_name = @firstName,
    last_name = @lastName,
    phone_number = @phoneNumber,
    email = @email,
    notes = @notes,
    total_purchases_amount = @totalPurchasesAmount
WHERE customer_ID = @customerID

END