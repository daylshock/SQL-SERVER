USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getPOW]    Script Date: 20.10.2024 15:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getPOW]
	@m int,
	@n int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT POWER(@m, @n) OUTPUT
END
