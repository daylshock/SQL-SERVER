USE [Sports Store]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 19.10.2024 13:55:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeesFullName] [nvarchar](30) NULL,
	[Position] [nvarchar](30) NULL,
	[DateofAdmission] [date] NULL,
	[Gender] [nvarchar](3) NULL,
	[Salary] [smallmoney] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [Salary]
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD CHECK  (([EmployeesFullName]<>'' AND [Position]<>''))
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD CHECK  (([DateofAdmission]<>''))
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD CHECK  (([Gender]<>''))
GO


