USE [Barber Shop]
GO

/****** Object:  StoredProcedure [dbo].[getCountBarbersCurPosition]    Script Date: 22.10.2024 18:07:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getCountBarbersCurPosition]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT COUNT(*) FROM dbo.Barbers WHERE Position = 'ñèíüîð-áàðáåðî' AND Position = 'äæóíèîð-áàðáåð' 
END
GO


