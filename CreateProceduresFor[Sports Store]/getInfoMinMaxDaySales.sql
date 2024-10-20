USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getInfoMinMaxDaySales]    Script Date: 20.10.2024 15:27:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getInfoMinMaxDaySales]
	@start date,
	@end date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Sales WHERE Sales.[Date] >= @start and Sales.[Date] <= @end
END
