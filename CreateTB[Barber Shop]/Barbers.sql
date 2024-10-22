USE [Barber Shop]
GO

/****** Object:  Table [dbo].[Barbers]    Script Date: 22.10.2024 17:55:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Barbers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullNameBarber] [nvarchar](30) NULL,
	[Gender] [nchar](1) NULL,
	[Number] [nchar](10) NULL,
	[Email] [nvarchar](30) NOT NULL,
	[DateofBirth] [date] NULL,
	[DateofAdmission] [date] NULL,
	[Position] [nvarchar](30) NOT NULL,
	[Service] [nvarchar](30) NULL,
	[Price] [smallmoney] NULL,
	[Evaluations] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Barbers] ADD  DEFAULT ((0)) FOR [Price]
GO

ALTER TABLE [dbo].[Barbers]  WITH CHECK ADD CHECK  (([Email]<>''))
GO

ALTER TABLE [dbo].[Barbers]  WITH CHECK ADD CHECK  (([Evaluations]='очень плохо' OR [Evaluations]='плохо' OR [Evaluations]='нормально' OR [Evaluations]='хорошо' OR [Evaluations]='великолепно'))
GO

ALTER TABLE [dbo].[Barbers]  WITH CHECK ADD CHECK  (([Position]='чиф-барбер' OR [Position]='джуниор-барбер' OR [Position]='синьор-барбер'))
GO


