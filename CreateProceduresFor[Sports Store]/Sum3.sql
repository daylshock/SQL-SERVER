USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[Sum3]    Script Date: 20.10.2024 15:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sum3]
	@num1 INT,
	@num2 INT,
	@num3 INT
AS
BEGIN
	DECLARE @sum INT
	SET @sum = @num1 + @num2 + @num3
	SELECT @sum OUTPUT
END
