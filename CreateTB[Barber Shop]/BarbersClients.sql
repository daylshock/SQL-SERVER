USE [Barber Shop]
GO

/****** Object:  Table [dbo].[BarbersClients]    Script Date: 22.10.2024 17:56:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BarbersClients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullNameClient] [nvarchar](30) NULL,
	[Number] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[FeedBack] [nvarchar](200) NULL,
	[Evaluations] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BarbersClients]  WITH CHECK ADD CHECK  (([Email]=''))
GO

ALTER TABLE [dbo].[BarbersClients]  WITH CHECK ADD CHECK  (([Evaluations]='очень плохо' OR [Evaluations]='плохо' OR [Evaluations]='нормально' OR [Evaluations]='хорошо' OR [Evaluations]='великолепно'))
GO


