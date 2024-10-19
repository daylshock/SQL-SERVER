USE [Sports Store]
GO
/****** Object:  Trigger [dbo].[triggerInsertProducts]    Script Date: 19.10.2024 13:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[triggerInsertProducts]
   ON  [dbo].[Products]
   INSTEAD OF INSERT
AS 
BEGIN
	IF EXISTS(SELECT Manufacturer FROM inserted WHERE Manufacturer = 'Спорт, солнце и штанга')
	BEGIN
		RAISERROR ('Добавление этой фирмы запрещено', 16, 1)
		ROLLBACK TRANSACTION
	END
	ELSE
	BEGIN
		INSERT INTO dbo.Products(ProductName, TypeofProduct, amount1, Price, Manufacturer, SalePrice) 
		SELECT ProductName, TypeofProduct,amount1, Price, Manufacturer, SalePrice FROM inserted
	END
END
