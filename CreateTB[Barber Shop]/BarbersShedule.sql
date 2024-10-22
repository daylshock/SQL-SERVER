USE [Barber Shop]
GO

/****** Object:  Table [dbo].[BarbersSchedule]    Script Date: 22.10.2024 17:56:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BarbersSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Availability] [datetime] NULL,
	[Record] [datetime] NULL,
	[BarberID] [int] NULL,
	[ClientsID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BarbersSchedule]  WITH CHECK ADD FOREIGN KEY([BarberID])
REFERENCES [dbo].[Barbers] ([ID])
GO

ALTER TABLE [dbo].[BarbersSchedule]  WITH CHECK ADD FOREIGN KEY([ClientsID])
REFERENCES [dbo].[BarbersClients] ([ID])
GO


