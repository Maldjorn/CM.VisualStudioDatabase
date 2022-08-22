CREATE PROCEDURE [dbo].[AddressType_Add]
	@addressTypeID int,
	@type varchar(20)
AS
BEGIN
INSERT INTO dbo.[AddressType](
	address_type_ID,
	[Type]
		)
VALUES(
	@addressTypeID,
	@type
	)
SELECT @@IDENTITY
END