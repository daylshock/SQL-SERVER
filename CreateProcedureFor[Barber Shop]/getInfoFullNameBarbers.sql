USE [Barber Shop]
GO

/****** Object:  StoredProcedure [dbo].[getInfoFullNameBarbers]    Script Date: 22.10.2024 18:05:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getInfoFullNameBarbers]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT FullNameBarber FROM dbo.Barbers
END
GO


