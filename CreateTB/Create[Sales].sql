USE [Sports Store]
GO

/****** Object:  Table [dbo].[Sales]    Script Date: 19.10.2024 13:59:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sales](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](30) NULL,
	[Amount] [int] NULL,
	[ClientId] [int] NULL,
	[SalePrice] [smallmoney] NULL,
	[EmployeesId] [int] NULL,
	[Date] [date] NOT NULL,
	[ProductID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sales] ADD  DEFAULT (getdate()) FOR [Date]
GO

ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ID])
GO

ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([EmployeesId])
REFERENCES [dbo].[Employees] ([ID])
GO

ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([ProductName])
REFERENCES [dbo].[Products] ([ProductName])
GO


