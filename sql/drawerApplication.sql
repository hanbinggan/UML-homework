USE [benMoe]
GO

/****** Object:  Table [dbo].[drawerApplication]    Script Date: 2015/11/7 19:44:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[drawerApplication](
	[drawerID] [varchar](50) NULL,
	[articleID] [varchar](50) NULL,
	[state] [int] NULL,
	[time] [date] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

