USE [Barber Shop]
GO

/****** Object:  Table [dbo].[ArhiveBarberShop]    Script Date: 22.10.2024 17:54:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ArhiveBarberShop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullNameClient] [nvarchar](30) NULL,
	[FullNameBarber] [nvarchar](30) NULL,
	[Service] [nvarchar](30) NOT NULL,
	[Date] [datetime] NULL,
	[Total—ost] [smallmoney] NULL,
	[Evaluations] [nvarchar](30) NULL,
	[FeedBack] [nvarchar](300) NULL,
	[BarberID] [int] NULL,
	[ClientID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ArhiveBarberShop]  WITH CHECK ADD FOREIGN KEY([BarberID])
REFERENCES [dbo].[Barbers] ([ID])
GO

ALTER TABLE [dbo].[ArhiveBarberShop]  WITH CHECK ADD FOREIGN KEY([ClientID])
REFERENCES [dbo].[BarbersClients] ([ID])
GO


