USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getInfoClients]    Script Date: 20.10.2024 15:28:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getInfoClients]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Clients
END
