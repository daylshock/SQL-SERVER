USE [Sports Store]
GO
/****** Object:  Trigger [dbo].[triggerDelete]    Script Date: 19.10.2024 13:53:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[triggerDelete]
   ON [dbo].[Clients]
   INSTEAD OF DELETE 
AS 
BEGIN
	ROLLBACK
    RAISERROR('ERROR, DELETEs not permitted in Clients!!!',16,1)
    RETURN
END
