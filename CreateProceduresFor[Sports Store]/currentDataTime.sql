USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[currentDataTime]    Script Date: 20.10.2024 15:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[currentDataTime]
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT GETDATE() OUTPUT;
END
