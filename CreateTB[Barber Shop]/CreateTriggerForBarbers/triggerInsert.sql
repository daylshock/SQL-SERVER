USE [Barber Shop]
GO

/****** Object:  Trigger [dbo].[triggerInsert]    Script Date: 22.10.2024 18:00:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[triggerInsert]
   ON [dbo].[Barbers]
   INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	IF EXISTS (SELECT DateofAdmission FROM inserted WHERE DATEDIFF(YEAR, DateofAdmission, GETDATE()) <= 21)
    BEGIN
        RAISERROR ('Добавление барбера запрещено!', 16, 1)
        ROLLBACK TRANSACTION
    END
	ELSE
	BEGIN
		INSERT INTO dbo.Barbers(FullNameBarber, Gender, Number,
		Email, DateofBirth, DateofAdmission, Position, [Service], Price, Evaluations) 
		SELECT FullNameBarber, Gender, Number,
		Email, DateofBirth, DateofAdmission, Position, [Service], Price, Evaluations FROM inserted
	END
END
GO

ALTER TABLE [dbo].[Barbers] ENABLE TRIGGER [triggerInsert]
GO


