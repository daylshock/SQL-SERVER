USE [Sports Store]
GO
/****** Object:  StoredProcedure [dbo].[printHelloWorld]    Script Date: 20.10.2024 15:26:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[printHelloWorld]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	PRINT 'HELLOWORLD';
END
