USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[arithmeticMean]    Script Date: 20.10.2024 15:29:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[arithmeticMean]
	@num1 INT,
	@num2 INT,
	@num3 INT
AS
BEGIN
	DECLARE @RES int
	SET NOCOUNT ON;
	SET @RES = (@num1 + @num2 + @num3) / 3
	SELECT @RES OUTPUT
END
