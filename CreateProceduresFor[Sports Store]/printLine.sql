USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[printLine]    Script Date: 20.10.2024 15:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[printLine]
	@num1 INT,
    @sym nvarchar(1)
AS
BEGIN
	DECLARE @line nvarchar(30) = REPLICATE(@sym, @num1)
	PRINT @line
END
