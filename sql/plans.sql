USE [benMoe]
GO

/****** Object:  Table [dbo].[plans]    Script Date: 2015/11/7 19:44:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[plans](
	[id] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[plannerid] [varchar](50) NULL,
	[bgdate] [datetime] NULL,
	[tag] [varchar](50) NULL,
	[intro] [varchar](1500) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

