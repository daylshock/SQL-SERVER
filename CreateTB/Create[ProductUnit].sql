USE [Sports Store]
GO

/****** Object:  Table [dbo].[ProductUnit]    Script Date: 19.10.2024 13:58:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductUnit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](30) NOT NULL,
	[TypeofProduct] [nvarchar](30) NOT NULL,
	[Amount] [smallint] NULL,
	[Price] [smallmoney] NULL,
	[Manufacturer] [nvarchar](30) NOT NULL,
	[SalePrice] [smallmoney] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductUnit] ADD  DEFAULT ((0)) FOR [Amount]
GO

ALTER TABLE [dbo].[ProductUnit] ADD  DEFAULT ((0)) FOR [Price]
GO


