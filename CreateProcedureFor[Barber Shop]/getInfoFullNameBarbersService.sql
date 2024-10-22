USE [Barber Shop]
GO

/****** Object:  StoredProcedure [dbo].[getInfoFullNameBarbersService]    Script Date: 22.10.2024 18:05:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInfoFullNameBarbersService]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.Barbers WHERE [Service] = ' бритья бороды'
END
GO


