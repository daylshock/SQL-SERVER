USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getMaxValue]    Script Date: 20.10.2024 15:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getMaxValue]
    @num1 INT,
    @num2 INT,
    @num3 INT
AS
BEGIN
    DECLARE @maxValue INT

    IF @num1 >= @num2 AND @num1 >= @num3
        SET @maxValue = @num1
    ELSE IF @num2 >= @num1 AND @num2 >= @num3
        SET @maxValue = @num2
    ELSE
        SET @maxValue = @num3
        
    SELECT @maxValue OUTPUT
END

