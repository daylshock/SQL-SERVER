USE [Barber Shop]
GO

/****** Object:  StoredProcedure [dbo].[getInfoBarbersByExperience]    Script Date: 22.10.2024 19:22:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInfoBarbersByExperience]
	@Years int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Barbers WHERE DATEDIFF(YEAR, DateofAdmission, GETDATE()) >= @Years
END
GO


