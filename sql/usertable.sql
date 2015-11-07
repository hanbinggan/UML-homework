USE [benMoe]
GO

/****** Object:  Table [dbo].[usertable]    Script Date: 2015/11/7 19:45:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[usertable](
	[nickname] [varchar](50) NOT NULL,
	[userpassword] [varchar](50) NOT NULL,
	[userrole] [varchar](30) NOT NULL,
	[sex] [varchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_usertable] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

