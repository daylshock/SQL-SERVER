USE [Barber Shop]
GO

/****** Object:  Trigger [dbo].[triggerDelete]    Script Date: 22.10.2024 17:59:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[triggerDelete]
   ON [dbo].[Barbers]
   INSTEAD OF DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	IF (SELECT COUNT(*) FROM dbo.Barbers WHERE Position = 'чиф-барбер') < 2
    BEGIN
        RAISERROR ('Удаление чиф-барбера запрещено!', 16, 1)
        ROLLBACK TRANSACTION
    END
	ELSE
	BEGIN
		DELETE FROM dbo.Barbers WHERE Position = 'чиф-барбер'
	END
END
GO

ALTER TABLE [dbo].[Barbers] ENABLE TRIGGER [triggerDelete]
GO


