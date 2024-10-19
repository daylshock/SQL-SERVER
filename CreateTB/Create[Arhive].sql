USE [Sports Store]
GO

/****** Object:  Table [dbo].[Arhive]    Script Date: 19.10.2024 13:51:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Arhive](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](30) NULL,
	[SaleStatus] [nvarchar](30) NULL,
	[TypeofProduct] [nvarchar](30) NULL,
	[Manufacturer] [nvarchar](30) NULL,
	[Date] [date] NULL,
	[ProductID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Arhive] ADD  DEFAULT (getdate()) FOR [Date]
GO


