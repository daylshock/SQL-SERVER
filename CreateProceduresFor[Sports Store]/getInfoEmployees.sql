USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getInfoEmployees]    Script Date: 20.10.2024 15:27:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getInfoEmployees]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Employees
END
