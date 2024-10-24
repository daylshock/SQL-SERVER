USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getFactorial]    Script Date: 20.10.2024 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getFactorial]
	@number int
AS
BEGIN
	DECLARE @result bigint = 1
	DECLARE @i int = 1

	WHILE @i <= @number
	BEGIN
		SET @result = @result * @i
		SET @i = @i + 1
	END
	SELECT @result OUTPUT
END
