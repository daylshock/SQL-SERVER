USE [Sports Store]
GO

/****** Object:  Table [dbo].[Clients]    Script Date: 19.10.2024 13:51:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BuyersFullName] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[OrderHistory] [smallint] NULL,
	[DiscountPercentage] [tinyint] NULL,
	[SubscribeToTheNewsletter] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Clients] ADD  DEFAULT ((0)) FOR [OrderHistory]
GO

ALTER TABLE [dbo].[Clients] ADD  DEFAULT ((0)) FOR [DiscountPercentage]
GO

ALTER TABLE [dbo].[Clients] ADD  DEFAULT ((0)) FOR [SubscribeToTheNewsletter]
GO

ALTER TABLE [dbo].[Clients]  WITH CHECK ADD CHECK  (([BuyersFullName]<>''))
GO

ALTER TABLE [dbo].[Clients]  WITH CHECK ADD CHECK  (([Email]<>''))
GO


