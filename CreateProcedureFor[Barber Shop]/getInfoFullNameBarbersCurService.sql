USE [Barber Shop]
GO

/****** Object:  StoredProcedure [dbo].[getInfoFullNameBarbersCurService]    Script Date: 22.10.2024 18:05:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInfoFullNameBarbersCurService]
	@Service nvarchar(30)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Barbers WHERE [Service] = @Service
END
GO


