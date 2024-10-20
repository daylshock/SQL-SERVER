USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[getInfoCurEmployees]    Script Date: 20.10.2024 15:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getInfoCurEmployees]
	@FullName nvarchar(30) 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Employees WHERE Employees.EmployeesFullName = @FullName
END
