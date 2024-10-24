USE [Sports Store]
GO
/****** Object:  Trigger [dbo].[triggerInsert]    Script Date: 19.10.2024 13:59:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[triggerInsert] 
ON [dbo].[Sales] 
AFTER INSERT 
AS
BEGIN
	IF (SELECT TOP 1 OrderHistory FROM dbo.Clients, dbo.Sales WHERE Sales.ClientId = Clients.ID) > 3000
	BEGIN
		UPDATE dbo.Clients SET DiscountPercentage = 15
	END
	INSERT INTO dbo.History(ProductName, amount, SalePrice) select ProductName, Amount, SalePrice from inserted
	UPDATE dbo.Products SET amount1 = amount1 - Sales.Amount FROM dbo.Sales WHERE Sales.ID = (select max(Sales.ID) from dbo.Sales) and Sales.ProductID = Products.ID
END
