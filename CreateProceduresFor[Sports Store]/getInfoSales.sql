USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getInfoSales]    Script Date: 20.10.2024 15:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getInfoSales]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Sales
END
