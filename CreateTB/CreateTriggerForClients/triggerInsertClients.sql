USE [Sports Store]
GO
/****** Object:  Trigger [dbo].[triggerInsertClients]    Script Date: 19.10.2024 13:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[triggerInsertClients]
   ON  [dbo].[Clients]
   INSTEAD OF INSERT
AS 
BEGIN
IF NOT EXISTS (SELECT Email FROM inserted WHERE Email IN(SELECT Email FROM dbo.Clients))
	BEGIN
    INSERT INTO Clients (BuyersFullName, Email, OrderHistory, DiscountPercentage, SubscribeToTheNewsletter)
    SELECT BuyersFullName, Email, OrderHistory, DiscountPercentage, SubscribeToTheNewsletter FROM INSERTED
    PRINT 'Клиент успешно зарегистрирован'
	END
ELSE
	BEGIN
	RAISERROR ('Добавление сущ. клиентов запрещено', 16, 1)
    ROLLBACK TRANSACTION
	END
END
