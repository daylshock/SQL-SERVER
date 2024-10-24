USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getAverageSalesPriceByYear]    Script Date: 20.10.2024 15:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getAverageSalesPriceByYear]
    @Year INT
AS
BEGIN
    SELECT AVG(SalePrice) OUTPUT
    FROM dbo.Sales
    WHERE YEAR([Date]) = @Year
END
