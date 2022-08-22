CREATE PROCEDURE [dbo].[addressType_Delete]
	@addressTypeID int

AS
BEGIN

DELETE FROM dbo.AddressType
WHERE address_type_ID = @addressTypeID

END