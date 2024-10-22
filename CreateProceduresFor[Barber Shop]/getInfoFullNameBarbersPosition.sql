USE [Barber Shop]
GO

/****** Object:  StoredProcedure [dbo].[getInfoFullNameBarbersPosition]    Script Date: 22.10.2024 19:23:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInfoFullNameBarbersPosition]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Barbers WHERE Position = 'синьор-барбер'
END
GO


