USE [Sweeft_Ac]
GO
/****** Object:  Table [dbo].[Pupils]    Script Date: 7/15/2022 3:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pupils](
	[PupilID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Gender] [nvarchar](15) NOT NULL,
	[Class] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Pupils] PRIMARY KEY CLUSTERED 
(
	[PupilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 7/15/2022 3:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Gender] [nvarchar](15) NOT NULL,
	[Subject] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersPupils]    Script Date: 7/15/2022 3:30:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersPupils](
	[PupilID] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
 CONSTRAINT [PK_TeachersPupils] PRIMARY KEY CLUSTERED 
(
	[PupilID] ASC,
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TeachersPupils]  WITH CHECK ADD  CONSTRAINT [FK_TeachersPupils_Pupils] FOREIGN KEY([PupilID])
REFERENCES [dbo].[Pupils] ([PupilID])
GO
ALTER TABLE [dbo].[TeachersPupils] CHECK CONSTRAINT [FK_TeachersPupils_Pupils]
GO
ALTER TABLE [dbo].[TeachersPupils]  WITH CHECK ADD  CONSTRAINT [FK_TeachersPupils_Teachers] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teachers] ([TeacherID])
GO
ALTER TABLE [dbo].[TeachersPupils] CHECK CONSTRAINT [FK_TeachersPupils_Teachers]
GO
