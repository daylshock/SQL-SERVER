USE [Barber Shop]
GO

/****** Object:  StoredProcedure [dbo].[getInfoRegularClients]    Script Date: 22.10.2024 18:06:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInfoRegularClients] 
	@Count int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ClientID, COUNT(*)
	FROM dbo.ArhiveBarberShop
	GROUP BY ClientID
	HAVING COUNT(*) >= @Count
END
GO


