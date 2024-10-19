USE [Sports Store]
GO

/****** Object:  Table [dbo].[Dismissed]    Script Date: 19.10.2024 13:54:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dismissed](
	[ID] [int] NOT NULL,
	[EmployeesFullName] [nvarchar](30) NULL,
	[Position] [nvarchar](30) NULL,
	[DateofAdmission] [date] NULL,
	[Gender] [nvarchar](30) NULL,
	[Salary] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Dismissed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


