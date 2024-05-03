CREATE TRIGGER shift_insert
ON Shift
INSTEAD OF INSERT
AS
IF EXISTS ( SELECT * FROM Shift INNER JOIN  inserted i ON i.staff_id=Shift.staff_id AND i.day_of_month=Shift.day_of_month)
BEGIN
RAISERROR('Duplicate Data',1,1)
ROLLBACK
END
GO

CREATE TRIGGER receipt_delete
ON Receipt
INSTEAD OF DELETE
AS
BEGIN
RAISERROR('Deleting data is not allowed',1,2)
ROLLBACK
END
GO


