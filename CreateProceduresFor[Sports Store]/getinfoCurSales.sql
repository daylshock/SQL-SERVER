USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getInfoCurSales]    Script Date: 20.10.2024 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getInfoCurSales]
	@date date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Sales WHERE @date = Sales.[Date]
END
