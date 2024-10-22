USE [Barber Shop]
GO

/****** Object:  Table [dbo].[FeedBackFromClients]    Script Date: 22.10.2024 17:56:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FeedBackFromClients](
	[Description] [nvarchar](200) NULL,
	[ClientID] [int] NULL,
	[BarberID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FeedBackFromClients]  WITH CHECK ADD FOREIGN KEY([BarberID])
REFERENCES [dbo].[Barbers] ([ID])
GO

ALTER TABLE [dbo].[FeedBackFromClients]  WITH CHECK ADD FOREIGN KEY([ClientID])
REFERENCES [dbo].[BarbersClients] ([ID])
GO


