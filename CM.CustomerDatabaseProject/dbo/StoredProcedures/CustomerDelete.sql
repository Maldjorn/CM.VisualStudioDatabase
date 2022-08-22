CREATE PROCEDURE [dbo].[customers_Delete]
	@customerID int

AS
BEGIN

DELETE FROM dbo.[Customers]
WHERE customer_ID = @CustomerId

END