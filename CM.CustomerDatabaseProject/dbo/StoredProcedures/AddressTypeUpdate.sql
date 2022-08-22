CREATE PROCEDURE [dbo].[AddressType_Update]
	@addressTypeID int,
	@type varchar(20)
AS
BEGIN

UPDATE dbo.AddressType
SET
	[Type] = @type
	WHERE address_type_ID = @addressTypeID

END