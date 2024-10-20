USE [Sports Store]
GO
/****** Object:  Trigger [dbo].[triggerUpdate]    Script Date: 19.10.2024 13:58:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[triggerUpdate]
   ON  [dbo].[Products]
   AFTER UPDATE
AS 
BEGIN
	INSERT INTO dbo.Arhive(ProductName, SaleStatus, TypeofProduct, Manufacturer, ProductID)
	SELECT ProductName, 'Продан', TypeofProduct, Manufacturer, ID FROM INSERTED WHERE amount1 < 1

	INSERT INTO dbo.ProductUnit(ProductName, TypeofProduct, Amount, Price, Manufacturer, SalePrice)
	SELECT ProductName, TypeofProduct, amount1, Price, Manufacturer, SalePrice FROM INSERTED WHERE amount1 = 1
END
