SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbsenceAccrualRules] (
		[AbsenceAccrualRule]     [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[StartDate]              [date] NOT NULL,
		[LastUpdateBy]           [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LastUpdateOn]           [datetime] NULL,
		[RecordID]               [int] IDENTITY(1, 1) NOT NULL,
		CONSTRAINT [PK_AbsenceAccrualRules]
		PRIMARY KEY
		CLUSTERED
		([AbsenceAccrualRule])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AbsenceAccrualRules] SET (LOCK_ESCALATION = TABLE)
GO
