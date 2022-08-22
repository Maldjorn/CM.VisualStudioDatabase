CREATE PROCEDURE [dbo].[addresses_Delete]
	@addressesID int

AS
BEGIN

DELETE FROM dbo.Addresses
WHERE address_ID = @addressesID

END