USE [CourseRegistartion]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/10/2016 11:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[PaidMember] [bit] NOT NULL CONSTRAINT [default_PaidMember]  DEFAULT ((0)),
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [default_Date]  DEFAULT (getdate()),
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [PaidMember], [CreatedDate]) VALUES (1, N'unpaid', N'123123', 0, CAST(N'2016-04-10 20:46:05.893' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
