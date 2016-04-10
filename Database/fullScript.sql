USE [master]
GO
/****** Object:  Database [CourseRegistartion]    Script Date: 4/10/2016 11:57:09 PM ******/
CREATE DATABASE [CourseRegistartion] ON  PRIMARY 
( NAME = N'CourseRegistartion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER2014\MSSQL\DATA\CourseRegistartion.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CourseRegistartion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER2014\MSSQL\DATA\CourseRegistartion_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CourseRegistartion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CourseRegistartion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CourseRegistartion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CourseRegistartion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CourseRegistartion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CourseRegistartion] SET ARITHABORT OFF 
GO
ALTER DATABASE [CourseRegistartion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CourseRegistartion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CourseRegistartion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CourseRegistartion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CourseRegistartion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CourseRegistartion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CourseRegistartion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CourseRegistartion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CourseRegistartion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CourseRegistartion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CourseRegistartion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CourseRegistartion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CourseRegistartion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CourseRegistartion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CourseRegistartion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CourseRegistartion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CourseRegistartion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CourseRegistartion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CourseRegistartion] SET  MULTI_USER 
GO
ALTER DATABASE [CourseRegistartion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CourseRegistartion] SET DB_CHAINING OFF 
GO
USE [CourseRegistartion]
GO
/****** Object:  Table [dbo].[course]    Script Date: 4/10/2016 11:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[Course_ID] [int] IDENTITY(1,1) NOT NULL,
	[Course_Code] [varchar](45) NULL DEFAULT (NULL),
	[Course_Number] [int] NULL DEFAULT (NULL),
	[Course_Name] [varchar](45) NULL DEFAULT (NULL),
PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enrollment]    Script Date: 4/10/2016 11:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enrollment](
	[Enrollment_ID] [int] NOT NULL,
	[Section_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Slot_ID] [int] NOT NULL,
	[Student_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Enrollment_ID] ASC,
	[Section_ID] ASC,
	[Course_ID] ASC,
	[Slot_ID] ASC,
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[section]    Script Date: 4/10/2016 11:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[section](
	[Section_ID] [int] IDENTITY(1,1) NOT NULL,
	[Section_Number] [int] NULL DEFAULT (NULL),
	[Max_Seat] [int] NULL DEFAULT (NULL),
	[Course_ID] [int] NOT NULL,
	[Slot_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Section_ID] ASC,
	[Course_ID] ASC,
	[Slot_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[student]    Script Date: 4/10/2016 11:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[Student_ID] [int] NOT NULL,
	[First_Name] [varchar](45) NOT NULL,
	[Last_Name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[timeslot]    Script Date: 4/10/2016 11:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[timeslot](
	[Slot_ID] [int] NOT NULL,
	[S_Time] [time](0) NOT NULL,
	[E_Time] [time](0) NOT NULL,
	[Day] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Slot_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/10/2016 11:57:09 PM ******/
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
SET IDENTITY_INSERT [dbo].[course] ON 

GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (1, N'COMP', 100, N'Programming 1')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (2, N'COMP', 122, N'Database')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (3, N'COMP', 123, N'Programming 2')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (4, N'MATH', 175, N'Mathematics')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (5, N'COMP', 213, N'Web Design')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (6, N'GNED', 219, N'The Canadian workplace')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (7, N'COMP', 231, N'Computer Project 1')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (8, N'COMP', 301, N'Unix/Linux')
GO
INSERT [dbo].[course] ([Course_ID], [Course_Code], [Course_Number], [Course_Name]) VALUES (9, N'COMP', 214, N'Java')
GO
SET IDENTITY_INSERT [dbo].[course] OFF
GO
INSERT [dbo].[enrollment] ([Enrollment_ID], [Section_ID], [Course_ID], [Slot_ID], [Student_ID]) VALUES (4, 1, 1, 1, 822882411)
GO
SET IDENTITY_INSERT [dbo].[section] ON 

GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (1, 801, 40, 1, 1)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (2, 801, 40, 1, 1)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (3, 802, 40, 1, 2)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (4, 801, 40, 2, 2)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (5, 802, 40, 2, 3)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (6, 801, 40, 3, 4)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (7, 802, 40, 3, 5)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (8, 801, 40, 4, 4)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (9, 802, 40, 4, 5)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (10, 801, 40, 5, 3)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (11, 802, 40, 5, 5)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (12, 801, 40, 6, 6)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (13, 802, 40, 6, 8)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (14, 801, 40, 7, 2)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (15, 802, 40, 7, 3)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (16, 801, 40, 8, 7)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (17, 802, 40, 8, 6)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (18, 801, 40, 8, 4)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (19, 802, 40, 9, 5)
GO
INSERT [dbo].[section] ([Section_ID], [Section_Number], [Max_Seat], [Course_ID], [Slot_ID]) VALUES (20, 801, 40, 1, 10)
GO
SET IDENTITY_INSERT [dbo].[section] OFF
GO
INSERT [dbo].[student] ([Student_ID], [First_Name], [Last_Name]) VALUES (822882411, N'SRITHARAN', N'THAVARAJAH')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (1, CAST(N'08:30:00' AS Time), CAST(N'09:20:00' AS Time), N'Mon')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (2, CAST(N'09:30:00' AS Time), CAST(N'10:20:00' AS Time), N'Mon')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (3, CAST(N'10:30:00' AS Time), CAST(N'11:20:00' AS Time), N'Mon')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (4, CAST(N'08:30:00' AS Time), CAST(N'09:20:00' AS Time), N'Tue')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (5, CAST(N'09:30:00' AS Time), CAST(N'10:20:00' AS Time), N'Tue')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (6, CAST(N'10:30:00' AS Time), CAST(N'11:20:00' AS Time), N'Tue')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (7, CAST(N'08:30:00' AS Time), CAST(N'09:20:00' AS Time), N'Wed')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (8, CAST(N'09:30:00' AS Time), CAST(N'10:20:00' AS Time), N'Wed')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (9, CAST(N'10:30:00' AS Time), CAST(N'11:20:00' AS Time), N'Wed')
GO
INSERT [dbo].[timeslot] ([Slot_ID], [S_Time], [E_Time], [Day]) VALUES (10, CAST(N'10:00:00' AS Time), CAST(N'11:20:00' AS Time), N'Wed')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [PaidMember], [CreatedDate]) VALUES (1, N'unpaid', N'123123', 0, CAST(N'2016-04-10 20:46:05.893' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [fk_enrollment_section1_idx]    Script Date: 4/10/2016 11:57:09 PM ******/
CREATE NONCLUSTERED INDEX [fk_enrollment_section1_idx] ON [dbo].[enrollment]
(
	[Section_ID] ASC,
	[Course_ID] ASC,
	[Slot_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fk_enrollment_student1_idx]    Script Date: 4/10/2016 11:57:09 PM ******/
CREATE NONCLUSTERED INDEX [fk_enrollment_student1_idx] ON [dbo].[enrollment]
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fk_section_course_idx]    Script Date: 4/10/2016 11:57:09 PM ******/
CREATE NONCLUSTERED INDEX [fk_section_course_idx] ON [dbo].[section]
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fk_section_timeslot1_idx]    Script Date: 4/10/2016 11:57:09 PM ******/
CREATE NONCLUSTERED INDEX [fk_section_timeslot1_idx] ON [dbo].[section]
(
	[Slot_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[enrollment]  WITH CHECK ADD  CONSTRAINT [fk_enrollment_section1] FOREIGN KEY([Section_ID], [Course_ID], [Slot_ID])
REFERENCES [dbo].[section] ([Section_ID], [Course_ID], [Slot_ID])
GO
ALTER TABLE [dbo].[enrollment] CHECK CONSTRAINT [fk_enrollment_section1]
GO
ALTER TABLE [dbo].[enrollment]  WITH CHECK ADD  CONSTRAINT [fk_enrollment_student1] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[student] ([Student_ID])
GO
ALTER TABLE [dbo].[enrollment] CHECK CONSTRAINT [fk_enrollment_student1]
GO
ALTER TABLE [dbo].[section]  WITH CHECK ADD  CONSTRAINT [fk_section_course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[course] ([Course_ID])
GO
ALTER TABLE [dbo].[section] CHECK CONSTRAINT [fk_section_course]
GO
ALTER TABLE [dbo].[section]  WITH CHECK ADD  CONSTRAINT [fk_section_timeslot1] FOREIGN KEY([Slot_ID])
REFERENCES [dbo].[timeslot] ([Slot_ID])
GO
ALTER TABLE [dbo].[section] CHECK CONSTRAINT [fk_section_timeslot1]
GO
USE [master]
GO
ALTER DATABASE [CourseRegistartion] SET  READ_WRITE 
GO
