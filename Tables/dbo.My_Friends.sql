SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[My_Friends] (
		[FriendID]         [int] NOT NULL,
		[Name]             [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Surname]          [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[testAddition]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK__My_Frien__A2CF6563F3AA68D4]
		PRIMARY KEY
		CLUSTERED
		([FriendID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[My_Friends] SET (LOCK_ESCALATION = TABLE)
GO
