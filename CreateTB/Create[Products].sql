USE [Sports Store]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 19.10.2024 13:57:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](30) NOT NULL,
	[TypeofProduct] [nvarchar](30) NOT NULL,
	[amount1] [smallint] NULL,
	[Price] [smallmoney] NOT NULL,
	[Manufacturer] [nvarchar](30) NOT NULL,
	[SalePrice] [smallmoney] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [amount1]
GO

ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [SalePrice]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD CHECK  (([ProductName]<>'' AND [TypeofProduct]<>''))
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD CHECK  (([Manufacturer]<>''))
GO


