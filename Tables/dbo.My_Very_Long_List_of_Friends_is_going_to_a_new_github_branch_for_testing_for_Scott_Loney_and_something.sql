SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[My_Very_Long_List_of_Friends_is_going_to_a_new_github_branch_for_testing_for_Scott_Loney_and_something] (
		[FriendID]     [int] NOT NULL,
		[Name]         [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Surname]      [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Test]         [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[tststst]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK__My_Very___A2CF65638D2F1924]
		PRIMARY KEY
		CLUSTERED
		([FriendID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[My_Very_Long_List_of_Friends_is_going_to_a_new_github_branch_for_testing_for_Scott_Loney_and_something] SET (LOCK_ESCALATION = TABLE)
GO
