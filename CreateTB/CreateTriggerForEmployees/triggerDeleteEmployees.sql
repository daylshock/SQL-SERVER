USE [Sports Store]
GO
/****** Object:  Trigger [dbo].[triggerDeleteEmployees]    Script Date: 19.10.2024 13:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[triggerDeleteEmployees]
ON [dbo].[Employees]
FOR DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM dbo.Dismissed WHERE DateofAdmission < '2015-01-01')
    BEGIN
        RAISERROR ('Удаление сотрудников, принятых до 2015 года, запрещено.', 16, 1)
        ROLLBACK TRANSACTION
    END
END
