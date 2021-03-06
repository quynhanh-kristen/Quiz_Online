USE [master]
GO
/****** Object:  Database [Assignment2_NguyenPhanQuynhAnh]    Script Date: 07-Feb-21 8:57:52 AM ******/
CREATE DATABASE [Assignment2_NguyenPhanQuynhAnh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment2_NguyenPhanQuynhAnh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Assignment2_NguyenPhanQuynhAnh.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Assignment2_NguyenPhanQuynhAnh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Assignment2_NguyenPhanQuynhAnh_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment2_NguyenPhanQuynhAnh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Assignment2_NguyenPhanQuynhAnh]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[ctgCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ctgCategoryName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ctgCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHistoryAccess]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHistoryAccess](
	[haHistoryAccess] [int] IDENTITY(1,1) NOT NULL,
	[haHistoryAccessContent] [nvarchar](500) NULL,
	[haHistorAccessDate] [datetime] NULL,
	[haUserGmail] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[haHistoryAccess] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblQuestion]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblQuestion](
	[qtQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[qtQuestion] [nvarchar](2000) NULL,
	[qtQuestionAnswer1] [nvarchar](1000) NULL,
	[qtQuestionAnswer2] [nvarchar](1000) NULL,
	[qtQuestionAnswer3] [nvarchar](1000) NULL,
	[qtQuestionAnswer4] [nvarchar](1000) NULL,
	[qtQuestionCorrectAnswer] [nvarchar](1000) NULL,
	[qtUserID] [varchar](100) NULL,
	[qtSubjectId] [int] NULL,
	[ptQuestionStatus] [bit] NULL,
	[qtQuestionCreateedDate] [date] NULL,
 CONSTRAINT [PK__tblQuest__226F3AF2DF0A9FC8] PRIMARY KEY CLUSTERED 
(
	[qtQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblQuizQuestion]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuizQuestion](
	[qqQuizQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[qqQuizQues] [nvarchar](1000) NULL,
	[qqQuizQuestionAnsOfUser] [nvarchar](1000) NULL,
	[qqQuizQuestionCorrectAns] [nvarchar](1000) NULL,
	[qqQuizResultId] [int] NULL,
 CONSTRAINT [PK__tblQuizQ__CF58A560DD0B2CB1] PRIMARY KEY CLUSTERED 
(
	[qqQuizQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblQuizResult]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblQuizResult](
	[qrQuizResultId] [int] IDENTITY(1,1) NOT NULL,
	[qrUserGmail] [varchar](100) NULL,
	[qrQuizResultSubject] [int] NULL,
	[qrQuizResultQuesAmount] [int] NULL,
	[qrQuizResultPoint] [int] NULL,
	[qrQuizResultCorrectAnsNum] [int] NULL,
	[qrQuizResultDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[qrQuizResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[rlRoleId] [int] IDENTITY(1,1) NOT NULL,
	[rlRoleName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[rlRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSubject]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubject](
	[sjSubjectId] [int] IDENTITY(1,1) NOT NULL,
	[sjSubjectName] [nvarchar](50) NOT NULL,
	[sjSubjectStatus] [bit] NOT NULL,
	[sjCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sjSubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserDAO]    Script Date: 07-Feb-21 8:57:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserDAO](
	[urUserGmail] [varchar](100) NOT NULL,
	[urPassword] [varchar](200) NULL,
	[urUserName] [nvarchar](50) NULL,
	[urRoleID] [int] NULL,
 CONSTRAINT [PK__tblUserD__91CE4B9A9C97E2E3] PRIMARY KEY CLUSTERED 
(
	[urUserGmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([ctgCategoryId], [ctgCategoryName]) VALUES (1, N'Japannese')
INSERT [dbo].[tblCategory] ([ctgCategoryId], [ctgCategoryName]) VALUES (2, N'Software Engineering')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
SET IDENTITY_INSERT [dbo].[tblHistoryAccess] ON 

INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (1, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-03 00:20:53.887' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (2, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-03 00:20:53.880' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (3, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-03 00:20:53.880' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (4, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-03 00:20:53.887' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (5, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-03 00:23:35.293' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (6, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-03 00:23:35.293' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (7, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-03 00:23:35.320' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (8, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-03 00:23:35.317' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (9, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-03 00:23:35.317' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (10, N'/Assignment2_NguyenPhanQuynhAnh/', CAST(N'2021-02-03 00:25:29.767' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (11, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-03 00:25:41.187' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (12, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-03 00:26:18.560' AS DateTime), N'test2@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (13, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-03 00:26:18.743' AS DateTime), N'test2@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (14, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-03 00:26:18.743' AS DateTime), N'test2@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (15, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-03 00:26:18.753' AS DateTime), N'test2@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (16, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-03 00:26:18.750' AS DateTime), N'test2@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (17, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-03 20:13:27.530' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (18, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-03 20:38:02.230' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (19, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-03 20:40:54.383' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (20, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-03 20:43:25.190' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (21, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 20:43:31.057' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (22, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-03 20:44:37.340' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (23, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-03 20:44:37.513' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (24, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 20:44:39.317' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (25, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 20:45:14.507' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (26, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-03 20:56:56.287' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (27, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 20:57:03.090' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (28, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-03 20:57:08.813' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (29, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-03 20:57:09.133' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (30, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 20:57:13.043' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (31, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-03 21:00:37.423' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (32, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-03 21:00:40.230' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (33, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-03 21:00:40.463' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (34, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 21:00:42.467' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (35, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 21:01:05.653' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (36, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 21:01:14.283' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (37, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-03 21:01:19.733' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (38, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 21:01:23.730' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (39, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-03 21:02:37.740' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (40, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 21:02:44.170' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (41, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-03 21:02:46.247' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (42, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-03 21:02:46.407' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (43, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-03 21:02:47.867' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (44, N'/Assignment2_NguyenPhanQuynhAnh/images/icon.png', CAST(N'2021-02-05 06:38:14.503' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (45, N'/Assignment2_NguyenPhanQuynhAnh/signuppage', CAST(N'2021-02-05 06:41:24.280' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (46, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 06:41:25.287' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (47, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 06:41:25.297' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (48, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 06:41:25.290' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (49, N'/Assignment2_NguyenPhanQuynhAnh/backfromsignup', CAST(N'2021-02-05 06:41:31.227' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (50, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 06:41:38.127' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (51, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:41:39.677' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (52, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:41:49.373' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (53, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 06:42:03.290' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (54, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:43:28.950' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (55, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:43:29.313' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (56, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 06:43:40.583' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (57, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 06:43:40.863' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (58, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 06:43:40.863' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (59, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 06:43:40.897' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (60, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 06:43:40.923' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (61, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 06:43:46.660' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (62, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:43:50.717' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (63, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:43:56.217' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (64, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 06:44:08.257' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (65, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 06:44:24.187' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (66, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 06:50:54.607' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (67, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 06:50:54.777' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (68, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 06:50:54.777' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (69, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 06:50:54.780' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (70, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 06:50:54.783' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (71, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:50:57.210' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (72, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:50:57.267' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (73, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 06:51:25.027' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (74, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:52:04.730' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (75, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 06:52:13.280' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (76, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:52:15.987' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (77, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 06:53:45.503' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (78, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:53:46.113' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (79, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:53:50.567' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (80, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:53:51.073' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (81, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 06:53:53.013' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (82, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 06:53:53.150' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (83, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 06:53:53.153' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (84, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 06:53:53.150' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (85, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 06:53:53.150' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (86, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:53:55.717' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (87, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:53:55.757' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (88, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:54:47.100' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (89, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:54:47.580' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (90, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 06:54:50.370' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (91, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 06:54:50.410' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (92, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 06:54:50.410' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (93, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 06:54:50.413' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (94, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 06:54:50.413' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (95, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 06:54:54.213' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (96, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 06:54:57.163' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (97, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 06:54:57.290' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (98, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:01:53.210' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (99, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:01:53.847' AS DateTime), N'quynhanh@gmail.com')
GO
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (100, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:01:59.057' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (101, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:02:00.317' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (102, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:02:02.060' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (103, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:02:02.450' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (104, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:02:02.460' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (105, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:02:02.453' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (106, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:02:02.460' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (107, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:02:27.443' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (108, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:02:27.973' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (109, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:02:27.977' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (110, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:02:27.980' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (111, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:02:28.017' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (112, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 07:02:32.890' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (113, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:02:36.350' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (114, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:02:36.437' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (115, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:06:09.647' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (116, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:06:10.207' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (117, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:06:17.910' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (118, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:06:25.327' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (119, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:06:25.860' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (120, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:06:25.863' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (121, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:06:25.933' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (122, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:06:25.933' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (123, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:06:30.523' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (124, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:07:41.340' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (125, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:07:41.777' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (126, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:07:47.280' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (127, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:07:47.453' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (128, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:07:47.453' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (129, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:07:47.457' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (130, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:07:47.457' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (131, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:12:07.463' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (132, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:12:08.240' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (133, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:12:13.680' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (134, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 07:12:20.253' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (135, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:12:29.047' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (136, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:12:29.890' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (137, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:12:29.890' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (138, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:12:29.890' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (139, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:12:29.890' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (140, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 07:12:35.193' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (141, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:12:38.570' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (142, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:14:29.207' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (143, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:14:33.943' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (144, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:14:34.473' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (145, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:14:41.503' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (146, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:14:42.090' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (147, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:14:45.730' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (148, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:14:46.053' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (149, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:14:46.053' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (150, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:14:46.053' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (151, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:14:46.053' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (152, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:14:49.287' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (153, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:14:50.480' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (154, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:16:55.810' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (155, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:16:56.207' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (156, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 07:16:58.857' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (157, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 07:18:11.513' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (158, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:18:11.680' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (159, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:19:44.717' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (160, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:19:47.010' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (161, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:19:55.893' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (162, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:19:58.870' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (163, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:19:59.027' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (164, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:19:59.027' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (165, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:19:59.027' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (166, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:19:59.027' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (167, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 07:20:02.357' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (168, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:23:28.783' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (169, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:23:29.703' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (170, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:29:14.033' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (171, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:29:19.193' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (172, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:34:41.253' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (173, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:34:42.400' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (174, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 07:34:52.600' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (175, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 07:37:13.597' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (176, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:37:13.840' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (177, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:37:18.370' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (178, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:37:22.487' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (179, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:37:22.490' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (180, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:37:22.490' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (181, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:37:22.490' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (182, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 07:37:44.440' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (183, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:38:09.130' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (184, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 07:52:09.140' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (185, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:52:10.247' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (186, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:52:24.867' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (187, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 07:52:54.373' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (188, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:53:10.187' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (189, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:53:10.580' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (190, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:53:10.583' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (191, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:53:10.600' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (192, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:53:10.587' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (193, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 07:53:18.663' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (194, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:53:31.343' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (195, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:53:31.453' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (196, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:54:52.213' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (197, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:54:52.607' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (198, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 07:54:58.863' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (199, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 07:55:15.443' AS DateTime), N'quynhanh@gmail.com')
GO
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (200, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 07:55:17.463' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (201, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 07:55:17.463' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (202, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 07:55:17.473' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (203, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 07:55:17.473' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (204, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 07:56:00.917' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (205, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:56:27.830' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (206, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 07:56:29.557' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (207, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 07:57:02.907' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (208, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 08:19:41.437' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (209, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 08:19:56.237' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (210, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 08:20:22.080' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (211, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 08:20:33.797' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (212, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 08:22:21.690' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (213, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 08:22:27.363' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (214, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 08:22:33.353' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (215, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 08:22:44.827' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (216, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 09:39:38.640' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (217, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 09:39:39.870' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (218, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 09:39:47.423' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (219, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 09:40:02.423' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (220, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 09:40:10.617' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (221, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 09:40:12.210' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (222, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 09:40:12.250' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (223, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 09:40:12.567' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (224, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 09:40:12.580' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (225, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 09:40:19.210' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (226, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 09:40:22.507' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (227, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 10:03:29.630' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (228, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 10:03:30.310' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (229, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:03:38.817' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (230, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:03:54.057' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (231, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 10:03:54.657' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (232, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 10:03:54.827' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (233, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 10:03:54.663' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (234, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 10:03:54.663' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (235, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:04:07.303' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (236, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:07:08.750' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (237, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:07:11.890' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (238, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 10:07:16.613' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (239, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:07:42.353' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (240, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 10:11:51.797' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (241, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:12:01.910' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (242, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:12:04.920' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (243, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:12:13.870' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (244, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:14:12.430' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (245, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:14:14.447' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (246, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 10:14:27.650' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (247, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:14:33.483' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (248, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 10:19:36.850' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (249, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 10:19:37.340' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (250, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:19:41.630' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (251, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:19:43.870' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (252, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 10:19:44.117' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (253, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 10:19:44.117' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (254, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 10:19:44.117' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (255, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 10:19:44.117' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (256, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:19:48.040' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (257, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:19:52.310' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (258, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 10:19:56.243' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (259, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:20:04.910' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (260, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 10:24:35.297' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (261, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:24:40.483' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (262, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:24:43.027' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (263, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 10:24:49.427' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (264, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:24:54.487' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (265, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:25:18.513' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (266, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:25:21.983' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (267, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:25:24.183' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (268, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:25:31.257' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (269, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 10:26:53.793' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (270, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:27:09.877' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (271, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:28:06.190' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (272, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 10:28:14.243' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (273, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 10:34:06.220' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (274, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:34:10.030' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (275, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:34:15.087' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (276, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 10:34:47.847' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (277, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 10:39:29.690' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (278, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 10:39:29.920' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (279, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:39:36.763' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (280, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 10:39:43.103' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (281, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:40:19.017' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (282, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:40:29.613' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (283, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:40:32.180' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (284, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 10:40:32.530' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (285, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 10:40:32.530' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (286, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 10:40:32.530' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (287, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 10:40:32.530' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (288, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 10:40:37.900' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (289, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:40:40.200' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (290, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:40:51.020' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (291, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:40:52.780' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (292, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:40:57.497' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (293, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:41:02.350' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (294, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:41:04.270' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (295, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:41:07.747' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (296, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:41:14.133' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (297, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:41:16.557' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (298, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 10:41:30.307' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (299, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 10:44:53.587' AS DateTime), N'quynhanh@gmail.com')
GO
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (300, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:44:58.373' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (301, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:45:06.420' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (302, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:45:12.763' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (303, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:45:16.817' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (304, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:45:18.960' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (305, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 10:51:50.997' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (306, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:51:54.493' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (307, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:51:56.867' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (308, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:52:01.867' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (309, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:52:08.110' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (310, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:52:14.797' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (311, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:53:14.927' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (312, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:53:20.833' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (313, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:53:24.893' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (314, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:53:37.470' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (315, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 10:55:00.320' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (316, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:55:02.597' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (317, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 10:55:13.917' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (318, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 10:55:23.657' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (319, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 10:55:26.957' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (320, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 10:55:29.387' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (321, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:00:57.393' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (322, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 11:00:57.837' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (323, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:01:02.457' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (324, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:01:08.057' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (325, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:03:28.610' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (326, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:03:40.927' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (327, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:03:47.407' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (328, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:03:52.780' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (329, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 11:03:53.007' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (330, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 11:03:53.007' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (331, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 11:03:53.003' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (332, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 11:03:53.007' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (333, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:04:16.323' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (334, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:17:33.147' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (335, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:17:41.347' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (336, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:17:49.750' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (337, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:17:58.080' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (338, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:18:01.337' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (339, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 11:18:05.427' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (340, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:18:10.247' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (341, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:18:15.863' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (342, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:18:26.077' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (343, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 11:18:29.567' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (344, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:18:31.450' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (345, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:18:42.280' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (346, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:18:51.137' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (347, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:18:57.783' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (348, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:19:22.967' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (349, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:20:46.773' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (350, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:20:50.287' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (351, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:20:57.957' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (352, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 11:20:58.050' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (353, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:21:04.713' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (354, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:21:12.247' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (355, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:21:25.817' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (356, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:21:32.520' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (357, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:22:26.460' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (358, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:22:28.283' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (359, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 11:22:33.880' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (360, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:22:39.497' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (361, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:22:47.627' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (362, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:22:52.820' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (363, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:22:54.937' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (364, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:23:05.797' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (365, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:23:27.143' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (366, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:23:31.107' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (367, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:23:40.130' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (368, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:28:14.803' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (369, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:28:17.717' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (370, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:28:21.073' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (371, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 11:28:21.197' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (372, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 11:28:21.197' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (373, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 11:28:21.197' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (374, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 11:28:21.197' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (375, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:30:13.347' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (376, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:30:25.263' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (377, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:30:30.507' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (378, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:30:47.683' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (379, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:31:50.797' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (380, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:31:56.710' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (381, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:32:05.377' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (382, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:32:10.437' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (383, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:32:41.677' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (384, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:33:01.333' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (385, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:33:04.977' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (386, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 11:33:08.547' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (387, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:33:11.047' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (388, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:33:28.440' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (389, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:33:30.400' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (390, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:33:33.057' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (391, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:33:34.763' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (392, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:33:37.403' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (393, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 11:33:40.030' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (394, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:33:41.457' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (395, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:33:43.180' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (396, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 11:33:45.900' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (397, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:33:47.553' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (398, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:35:49.090' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (399, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:35:54.937' AS DateTime), N'quynhanh@gmail.com')
GO
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (400, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:35:56.007' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (401, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:36:00.030' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (402, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:36:00.070' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (403, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:37:31.660' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (404, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:37:45.273' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (405, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:37:57.037' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (406, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:38:04.100' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (407, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:39:04.503' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (408, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:39:07.017' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (409, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:39:07.960' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (410, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:39:11.443' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (411, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 11:39:15.500' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (412, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 11:39:18.890' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (413, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:39:20.283' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (414, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:39:23.463' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (415, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:39:26.777' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (416, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-05 11:39:59.687' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (417, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:40:03.847' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (418, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:40:17.853' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (419, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:40:20.653' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (420, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:40:41.370' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (421, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:40:43.380' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (422, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:40:47.850' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (423, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:41:57.470' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (424, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:42:03.440' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (425, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:42:09.760' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (426, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:42:58.433' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (427, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 11:42:58.600' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (428, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 11:43:01.653' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (429, N'/Assignment2_NguyenPhanQuynhAnh/signout', CAST(N'2021-02-05 11:43:09.270' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (430, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-05 11:43:09.320' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (431, N'/Assignment2_NguyenPhanQuynhAnh/signout', CAST(N'2021-02-05 11:43:21.557' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (432, N'/Assignment2_NguyenPhanQuynhAnh/error.html', CAST(N'2021-02-05 11:43:21.610' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (433, N'/Assignment2_NguyenPhanQuynhAnh/css/font-awesome.min.css', CAST(N'2021-02-05 11:43:21.717' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (434, N'/Assignment2_NguyenPhanQuynhAnh/css/style.css', CAST(N'2021-02-05 11:43:21.737' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (435, N'/Assignment2_NguyenPhanQuynhAnh/signinpage', CAST(N'2021-02-05 11:43:24.400' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (436, N'/Assignment2_NguyenPhanQuynhAnh/signinpage', CAST(N'2021-02-05 11:43:47.070' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (437, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 11:44:01.710' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (438, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:44:05.990' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (439, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 11:44:06.373' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (440, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 11:44:06.377' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (441, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 11:44:06.387' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (442, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:45:56.317' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (443, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:47:36.520' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (444, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:47:45.110' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (445, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:48:19.397' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (446, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:49:50.613' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (447, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:50:13.893' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (448, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:50:58.997' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (449, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:51:57.297' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (450, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 11:51:57.410' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (451, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:52:28.723' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (452, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:54:13.840' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (453, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:54:45.233' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (454, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:54:56.273' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (455, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:55:11.930' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (456, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:56:23.443' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (457, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:56:57.037' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (458, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:57:18.243' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (459, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 11:57:27.467' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (460, N'/Assignment2_NguyenPhanQuynhAnh/quizpage', CAST(N'2021-02-05 11:58:29.040' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (461, N'/Assignment2_NguyenPhanQuynhAnh/quiz', CAST(N'2021-02-05 11:58:35.187' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (462, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-05 11:58:35.747' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (463, N'/Assignment2_NguyenPhanQuynhAnh/js/clock.js', CAST(N'2021-02-05 11:58:35.777' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (464, N'/Assignment2_NguyenPhanQuynhAnh/css/styletestpage.css', CAST(N'2021-02-05 11:58:35.780' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (465, N'/Assignment2_NguyenPhanQuynhAnh/submit', CAST(N'2021-02-05 12:08:33.423' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (466, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 12:26:52.450' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (467, N'/Assignment2_NguyenPhanQuynhAnh/quiz', CAST(N'2021-02-05 12:26:55.717' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (468, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-05 12:26:55.890' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (469, N'/Assignment2_NguyenPhanQuynhAnh/css/styletestpage.css', CAST(N'2021-02-05 12:26:55.893' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (470, N'/Assignment2_NguyenPhanQuynhAnh/js/clock.js', CAST(N'2021-02-05 12:26:55.903' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (471, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 12:26:55.900' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (472, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 12:26:55.897' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (473, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 12:26:55.893' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (474, N'/Assignment2_NguyenPhanQuynhAnh/submit', CAST(N'2021-02-05 12:28:07.057' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (475, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 14:35:40.293' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (476, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-05 14:35:40.737' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (477, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 14:35:43.807' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (478, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-05 14:35:46.460' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (479, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 14:35:46.627' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (480, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-05 14:35:46.673' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (481, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-05 14:35:46.680' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (482, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-05 14:35:46.693' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (483, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-05 14:35:50.220' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (484, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-05 14:35:51.713' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (485, N'/Assignment2_NguyenPhanQuynhAnh/signout', CAST(N'2021-02-05 14:35:56.227' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (486, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-05 14:35:56.270' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (487, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 14:36:01.943' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (488, N'/Assignment2_NguyenPhanQuynhAnh/quiz', CAST(N'2021-02-05 14:36:03.707' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (489, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-05 14:36:03.907' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (490, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 14:36:03.907' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (491, N'/Assignment2_NguyenPhanQuynhAnh/css/styletestpage.css', CAST(N'2021-02-05 14:36:03.927' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (492, N'/Assignment2_NguyenPhanQuynhAnh/js/clock.js', CAST(N'2021-02-05 14:36:03.910' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (493, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 14:36:03.907' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (494, N'/Assignment2_NguyenPhanQuynhAnh/submit', CAST(N'2021-02-05 14:36:57.203' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (495, N'/Assignment2_NguyenPhanQuynhAnh/images/icon.png', CAST(N'2021-02-05 22:31:23.503' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (496, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 22:31:31.127' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (497, N'/Assignment2_NguyenPhanQuynhAnh/quiz', CAST(N'2021-02-05 22:31:35.197' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (498, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 22:31:35.803' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (499, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 22:31:35.807' AS DateTime), N'test@gmail.com')
GO
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (500, N'/Assignment2_NguyenPhanQuynhAnh/css/styletestpage.css', CAST(N'2021-02-05 22:31:35.827' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (501, N'/Assignment2_NguyenPhanQuynhAnh/js/clock.js', CAST(N'2021-02-05 22:31:35.810' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (502, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-05 22:31:35.857' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (503, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 22:31:35.813' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (504, N'/Assignment2_NguyenPhanQuynhAnh/submit', CAST(N'2021-02-05 22:32:33.047' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (505, N'/Assignment2_NguyenPhanQuynhAnh/quizpage', CAST(N'2021-02-05 22:34:50.077' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (506, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 22:34:51.617' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (507, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 22:34:51.867' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (508, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 22:34:51.873' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (509, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 22:34:51.867' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (510, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 22:34:51.867' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (511, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 23:35:54.500' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (512, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 23:35:58.687' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (513, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 23:35:58.910' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (514, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 23:35:58.910' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (515, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 23:35:58.913' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (516, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 23:35:58.917' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (517, N'/Assignment2_NguyenPhanQuynhAnh/searchhistory', CAST(N'2021-02-05 23:36:10.707' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (518, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 23:36:10.827' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (519, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 23:36:10.827' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (520, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 23:36:10.827' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (521, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 23:36:10.827' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (522, N'/Assignment2_NguyenPhanQuynhAnh/searchhistory', CAST(N'2021-02-05 23:36:21.077' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (523, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 23:36:21.287' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (524, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 23:36:21.287' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (525, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 23:36:21.287' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (526, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 23:36:21.290' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (527, N'/Assignment2_NguyenPhanQuynhAnh/viewdetaihistory', CAST(N'2021-02-05 23:36:29.907' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (528, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 23:36:33.470' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (529, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 23:36:33.570' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (530, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 23:36:33.570' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (531, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 23:36:33.570' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (532, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 23:36:33.570' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (533, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 23:39:22.193' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (534, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 23:39:22.497' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (535, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 23:39:22.500' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (536, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 23:39:22.507' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (537, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 23:39:22.503' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (538, N'/Assignment2_NguyenPhanQuynhAnh/searchhistory', CAST(N'2021-02-05 23:39:26.033' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (539, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-05 23:40:08.337' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (540, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-05 23:40:10.463' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (541, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-05 23:40:10.667' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (542, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-05 23:40:10.667' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (543, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-05 23:40:10.673' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (544, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-05 23:40:10.677' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (545, N'/Assignment2_NguyenPhanQuynhAnh/searchhistory', CAST(N'2021-02-05 23:40:13.657' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (546, N'/Assignment2_NguyenPhanQuynhAnh/searchhistory', CAST(N'2021-02-05 23:40:24.263' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (547, N'/Assignment2_NguyenPhanQuynhAnh/searchhistory', CAST(N'2021-02-05 23:40:28.283' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (548, N'/Assignment2_NguyenPhanQuynhAnh/quizpage', CAST(N'2021-02-05 23:40:41.823' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (549, N'/Assignment2_NguyenPhanQuynhAnh/images/icon.png', CAST(N'2021-02-06 10:56:16.797' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (550, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-06 10:56:34.547' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (551, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-06 10:56:37.667' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (552, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-06 10:56:38.057' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (553, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-06 10:56:38.057' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (554, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-06 10:56:38.083' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (555, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-06 10:56:38.103' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (556, N'/Assignment2_NguyenPhanQuynhAnh/viewdetaihistory', CAST(N'2021-02-06 10:57:21.300' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (557, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-06 11:15:25.330' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (558, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-06 11:15:25.573' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (559, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-06 11:15:25.577' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (560, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-06 11:15:25.573' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (561, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-06 11:15:25.577' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (562, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-06 11:16:29.937' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (563, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-06 11:16:40.407' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (564, N'/Assignment2_NguyenPhanQuynhAnh/viewdetaihistory', CAST(N'2021-02-06 11:16:42.227' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (565, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-06 11:29:18.143' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (566, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-06 11:29:20.433' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (567, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-06 11:29:20.700' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (568, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-06 11:29:20.697' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (569, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-06 11:29:20.710' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (570, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-06 11:29:20.710' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (571, N'/Assignment2_NguyenPhanQuynhAnh/viewdetaihistory', CAST(N'2021-02-06 11:29:22.583' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (572, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-06 16:05:24.060' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (573, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-06 16:05:24.347' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (574, N'/Assignment2_NguyenPhanQuynhAnh/signout', CAST(N'2021-02-06 16:05:55.737' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (575, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-06 16:05:55.773' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (576, N'/Assignment2_NguyenPhanQuynhAnh/images/icon.png', CAST(N'2021-02-07 06:30:55.153' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (577, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 06:32:00.920' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (578, N'/Assignment2_NguyenPhanQuynhAnh/quiz', CAST(N'2021-02-07 06:32:05.470' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (579, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-07 06:32:06.817' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (580, N'/Assignment2_NguyenPhanQuynhAnh/css/styletestpage.css', CAST(N'2021-02-07 06:32:06.817' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (581, N'/Assignment2_NguyenPhanQuynhAnh/js/clock.js', CAST(N'2021-02-07 06:32:06.817' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (582, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-07 06:32:06.817' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (583, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-07 06:32:06.877' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (584, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-07 06:32:06.877' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (585, N'/Assignment2_NguyenPhanQuynhAnh/submit', CAST(N'2021-02-07 07:02:07.257' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (586, N'/Assignment2_NguyenPhanQuynhAnh/quizpage', CAST(N'2021-02-07 07:02:16.530' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (587, N'/Assignment2_NguyenPhanQuynhAnh/history', CAST(N'2021-02-07 07:02:18.973' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (588, N'/Assignment2_NguyenPhanQuynhAnh/css/historypage.css', CAST(N'2021-02-07 07:02:19.280' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (589, N'/Assignment2_NguyenPhanQuynhAnh/css/simplepagination.css', CAST(N'2021-02-07 07:02:19.280' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (590, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-07 07:02:19.290' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (591, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.simplePagination.js', CAST(N'2021-02-07 07:02:19.290' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (592, N'/Assignment2_NguyenPhanQuynhAnh/viewdetaihistory', CAST(N'2021-02-07 07:02:25.980' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (593, N'/Assignment2_NguyenPhanQuynhAnh/css/historydetail.css', CAST(N'2021-02-07 07:02:27.083' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (594, N'/Assignment2_NguyenPhanQuynhAnh/quizpage', CAST(N'2021-02-07 07:02:54.217' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (595, N'/Assignment2_NguyenPhanQuynhAnh/signout', CAST(N'2021-02-07 07:03:05.437' AS DateTime), N'test@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (596, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 07:03:05.477' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (597, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 07:04:20.570' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (598, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 07:04:36.290' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (599, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 07:04:43.243' AS DateTime), NULL)
GO
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (600, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 07:04:50.137' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (601, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 07:04:57.307' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (602, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 07:05:18.243' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (603, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 07:05:28.583' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (604, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-07 07:05:28.947' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (605, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 07:05:31.923' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (606, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 07:06:15.040' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (607, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 07:06:26.540' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (608, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 07:06:49.517' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (609, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 07:07:39.770' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (610, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-07 07:07:44.820' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (611, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-07 07:07:44.980' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (612, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-07 07:07:44.980' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (613, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-07 07:07:44.987' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (614, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-07 07:07:44.993' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (615, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-07 07:07:44.997' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (616, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-07 07:07:53.363' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (617, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-07 08:49:16.913' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (618, N'/Assignment2_NguyenPhanQuynhAnh/js/fillans.js', CAST(N'2021-02-07 08:49:17.057' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (619, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.validate.js', CAST(N'2021-02-07 08:49:17.053' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (620, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery-2.2.4.min.js', CAST(N'2021-02-07 08:49:17.053' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (621, N'/Assignment2_NguyenPhanQuynhAnh/js/date.js', CAST(N'2021-02-07 08:49:17.057' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (622, N'/Assignment2_NguyenPhanQuynhAnh/js/additional-methods.js', CAST(N'2021-02-07 08:49:17.057' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (623, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-07 08:49:47.480' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (624, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 08:49:56.807' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (625, N'/Assignment2_NguyenPhanQuynhAnh/js/jquery.easyPaginate.js', CAST(N'2021-02-07 08:49:56.957' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (626, N'/Assignment2_NguyenPhanQuynhAnh/createpage', CAST(N'2021-02-07 08:49:59.657' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (627, N'/Assignment2_NguyenPhanQuynhAnh/create', CAST(N'2021-02-07 08:52:08.157' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (628, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-07 08:52:11.553' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (629, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-07 08:52:19.813' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (630, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-07 08:52:28.380' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (631, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-07 08:52:32.443' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (632, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-07 08:52:35.837' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (633, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-07 08:52:41.397' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (634, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-07 08:52:47.447' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (635, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-07 08:52:49.917' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (636, N'/Assignment2_NguyenPhanQuynhAnh/delete', CAST(N'2021-02-07 08:52:51.543' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (637, N'/Assignment2_NguyenPhanQuynhAnh/viewdetail', CAST(N'2021-02-07 08:52:54.583' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (638, N'/Assignment2_NguyenPhanQuynhAnh/update', CAST(N'2021-02-07 08:52:59.087' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (639, N'/Assignment2_NguyenPhanQuynhAnh/search', CAST(N'2021-02-07 08:53:01.563' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (640, N'/Assignment2_NguyenPhanQuynhAnh/signout', CAST(N'2021-02-07 08:53:07.303' AS DateTime), N'quynhanh@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (641, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 08:53:07.323' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (642, N'/Assignment2_NguyenPhanQuynhAnh/signuppage', CAST(N'2021-02-07 08:53:23.130' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (643, N'/Assignment2_NguyenPhanQuynhAnh/signup', CAST(N'2021-02-07 08:54:41.857' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (644, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 08:55:00.413' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (645, N'/Assignment2_NguyenPhanQuynhAnh/signout', CAST(N'2021-02-07 08:55:07.740' AS DateTime), N'test3@gmail.com')
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (646, N'/Assignment2_NguyenPhanQuynhAnh/signin.jsp', CAST(N'2021-02-07 08:55:07.780' AS DateTime), NULL)
INSERT [dbo].[tblHistoryAccess] ([haHistoryAccess], [haHistoryAccessContent], [haHistorAccessDate], [haUserGmail]) VALUES (647, N'/Assignment2_NguyenPhanQuynhAnh/signin', CAST(N'2021-02-07 08:55:45.773' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tblHistoryAccess] OFF
SET IDENTITY_INSERT [dbo].[tblQuestion] ON 

INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (37, N'Which defect amplification model is used to illustrate the generation and detection of errors during the preliminary steps of a software engineering process?
', N'Design', N'Coding', N'Detailed design', N'All mentioned above', N'Coding', N'quynhanh@gmail.com', 3, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (38, N'Which method is used for evaluating the expression that passes the function as an argument?
', N'Strict evaluation', N'Recursion', N'Calculus', N'Pure functions', N'Strict evaluation', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (39, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'Task analysis', N'GUI requirement gathering', N'GUI design & implementation', N'Testing ', N'Testing', N'quynhanh@gmail.com', 2, 0, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (40, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N'Unit testing
', N'Regression testing 
', N'Integration testing
', N'Thread-based testing
', N'Regression testing 
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (41, N'Which one of these belongs to integration testing in the OO context?
', N'Unit testing', N'Regression testing', N'Sandwich testing', N'Thread-based testing ', N'Thread-based testing ', N'quynhanh@gmail.com', 2, 0, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (42, N'Which box specifies the behavior of a system or a part of a system?
', N'State box
', N'Clear box
', N'Black box
', N'None of the above
', N'Black box
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (43, N'The longer a fault exists in software
', N'the more tedious its removal becomes
', N'the more costly it is to detect and correct
', N'the less likely it is to be properly corrected
', N'All of the mentioned
', N'All of the mentioned
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (44, N'Which condition defines the circumstances for a particular operation is valid?
', N'Postcondition', N'Precondition', N'Invariant', N'None of the above', N'None of the above', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (45, N'Which is not a SQA activity?
', N'Black box testing', N'White box testing ', N'Integration testing', N'Unit testing', N'White box testing ', N'quynhanh@gmail.com', 2, 0, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (46, N'Abbreviate the term BSS.
', N'Box Structure Specification ', N'Box Statistical Specification', N'Box Statistical System', N'Box Structure Sampling', N'Box Structure Specification ', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (47, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'Compatibility
', N'Interoperability 
', N'Performance
', N'Security
', N'Interoperability 
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (48, N'What do you understand by V&V in software testing?
', N'Verified Version', N'Version Validation', N'Verification and Validation', N'Version Verification', N'Verification and Validation', N'quynhanh@gmail.com', 4, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (49, N'In static test techniques, behavioral and performance properties of the program are observed.
', N'TRUE
', N'FALSE
', N'Can''t say
', N'None of the above
', N'FALSE
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (50, N'Which granularity level of testing checks the behavior of module cooperation?
', N'Unit Testing
', N'Integration Testing
', N'Acceptance Testing
', N'Regression Testing
', N'Integration Testing
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (51, N'Which test refers to the retesting of a unit, integration and system after modification, in order to ascertain that the change has not introduced new faults?
', N'Regression Test
', N'Smoke Test
', N'Alpha Test
', N'Beta Test
', N'Regression Test
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (52, N'Which of the following is a black box testing strategy?
', N'All Statements Coverage
', N'Control Structure Coverage
', N'Cause-Effect Graphs
', N'All Paths Coverage
', N'Cause-Effect Graphs
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (53, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N'Test plan
', N'Test case
', N'Test document
', N'Test Suite
', N'Test case
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (54, N'In which test design each input is tested at both ends of its valid range and just outside its valid range?
', N'Boundary value testing
', N'Equivalence class partitioning
', N'Boundary value testing AND Equivalence class partitioning
', N'Decision tables
', N'Boundary value testing
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (55, N'A white box test scales up well at different granularity levels of testing.
', N'TRUE
', N'FALSE
', N'Can''t say
', N'None of the above
', N'FALSE
', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (56, N'Which of the following option leads to the portability and security of Java?
', N'Bytecode is executed by JVM', N'The applet makes the Java code secure and portable', N'Use of exception handling', N'Dynamic binding between objects', N'Bytecode is executed by the JVM.', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (57, N'Which of the following is not a Java features?
', N'Dynamic', N'Architecture Neutral', N'Use of pointers', N'Object-oriented', N'Use of pointers', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (58, N'_____ is used to find and fix bugs in the Java programs.
', N'JVM
', N'JRE
', N'JDK
', N'JDB
', N'JDB
', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (59, N'Which of the following is a valid declaration of a char?
', N'char ch = ''\utea'';
', N'Nchar ca = ''tea'';ULL
', N'char cr = \u0223;
', N'char cc = ''\itea'';
', N'char ch = ''\utea'';
', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (60, N'What is the return type of the hashCode() method in the Object class?
', N'Object
', N'int
', N'long
', N'void
', N'int
', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (61, N'Which of the following is a valid long literal?
', N'ABH8097
', N'L990023
', N'904423
', N'0xnf029L
', N'0xnf029L
', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (62, N'What does the expression float a = 35 / 0 return?
', N'0
', N'Not a Number
', N'Infinity
', N'Run time exception
', N'Infinity
', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (63, N'Evaluate the following Java expression, if x=3, y=5, and z=10:

++z + y - y + z + x++
', N'24', N'23', N'20', N'25', N'24', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-01-25' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (64, N'What is C#?', N'a programming language', N'an object-oriented language', N'a type safe language', N'all of above', N'all of above', N'quynhanh@gmail.com', 3, 1, CAST(N'2021-01-28' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (65, N'What is the meaning of ''Japan''?', N'Sun', N'Moon', N'Flower', N'Water', N'Sun', N'quynhanh@gmail.com', 32, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (66, N'Sister in Japanese is: ', N'ane-san', N'ane', N'otosan', N'haha', N'ane', N'quynhanh@gmail.com', 32, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (67, N'What is the meaning of ''dekiru''?', N'I don''t know', N'How old are you', N'I can do it', N'sorry', N'I can do it', N'quynhanh@gmail.com', 32, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (68, N'What can static analysis NOT find?', N'The re-definition of a variable before it has been used', N'Whether the value stored in a variable is correct', N'The use of a variable before it has been defined', N'Unreachable ("dead") code', N'Whether the value stored in a variable is correct', N'quynhanh@gmail.com', 4, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (69, N'Static testing can start early in the life cycle, early feedback on quality issues can be
established, for example an early validation of user requirements and not just late in the life
cycle during acceptance testing.', N'True', N'False', N'Not Given', N'No answer', N'True', N'quynhanh@gmail.com', 4, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (70, N'Which is not a type of review?', N'Inspection', N'Walkthrough', N'Management approval', N'Informal View', N'Management approval', N'quynhanh@gmail.com', 4, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (71, N'Which of the following is a type of non-functional testing?', N'Cause-effect graphing.', N' Statement Coverage.', N'Usability testing.', N'Dataflow testing', N'Usability testing.', N'quynhanh@gmail.com', 4, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (73, N'In terms of JDBC API, what does the Statement.executeUpdate() method return?', N'An integer value indicates the number of records that have been executed successfully.', N' The method returns void', N'A Boolean value indicates if the specified query is executed successfully or not.', N'None of above', N'An integer value indicates the number of records that have been executed successfully.', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (74, N'Which JDBC driver types can be used for communications over networks?', N'Type 1 and Type 2', N'Type 2 only', N'Type 3 and Type 4', N'Type 1 and Type 4', N'Type 3 and Type 4', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (75, N'Consider the following overridden method in a JFrame class:
public void paint(Graphics g) {
char s[] = {''w'', ''o'', ''r'', ''k'', '' '', ''h'', ''a'', ''r'', ''d''};
// Line 1
}
Which line of code should be placed at Line 1 so that letters: h, a, r, d are drawn on the frame at the coordinate (60, 90)?
', N'g.drawChars(s, 5, 4, 60, 90);', N'g.drawChars(s[4], 60, 90);', N'g.drawChars(s, 4, 5, 60, 90);  a', N'None of above', N'g.drawChars(s, 5, 4, 60, 90);', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (76, N'Localization is the process of not only changing the language interaction, but also other as relevant changes such:', N' All of the others', N'Data formats', N'Number formats', N'Currency formats', N' All of the others', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (77, N'Select a correct constructor form of the java.awt.Font class:', N'Font font = new Font(fontName, fontStyle, fontSize);', N'Font font = new Font(fontName, fontStyle);', N'Font font = new Font(fontName, fontSize);', N'Font font = new Font(fontName);', N'Font font = new Font(fontName, fontStyle, fontSize);', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (78, N'Which method is used to get graphic object of a component?', N'None of the others', N'Component.getGraphics()', N'Component.referGraphics()', N'Component.setGraphics()', N'Component.getGraphics()', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (79, N'Consider the following interface:
public interface Calculator {
public long add(long a, long b);
public long sub(long a, long b);
public long mul(long a, long b);
public long div(long a, long b);
}
The above interface will be used as a remote interface for a Remote Method Invocation (RMI) communication, what exception class the methods in the Calculator interface are required to throw?', N'java.remote.RMI', N'None of the others', N'java.rmi.RemoteException', N' java.rmi.Exception ', N'java.rmi.RemoteException', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (80, N'In terms of JDBC API, in order to execute a SQL Insert query, which method in the Statement class should be used?', N'executeSelect()', N'performQuery()', N'executeUpdate()', N'executeQuery()', N'executeUpdate()', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (81, N'In the package java.awt.image.*, which of the following class manages images in memory and provides methods for storing, interpreting, and obtaining pixel data?', N'Image', N'IOImage', N'Images', N'BufferdImage', N'BufferdImage', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (82, N'In terms of LineMetrics and FontMetrics, what is ascent?
Select one:', N'It is the recommended distance from the bottom of the descender line to the top of the next line.', N't is the distance from the baseline to the descender line', N' It is the distance from the baseline to the ascender line  c', N'None of above', N'None of above', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (83, N'In the package java.awt.*, which of the following class represents graphical images as rectangular arrays of pixels?
Select one:', N'IOImage', N'BufferedImage', N'Image', N'Images', N'Image', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (84, N'Consider the following code:
String readContent(String urlString) throws Exception{
String content="";
URL url = new URL(urlString);
// Line 1
String inputLine;
while ((inputLine = in.readLine()) != null) {
content += inputLine + "\n";
}
in.close();
return content;
}
Which line of code should be placed at Line 1 so that content of the specified url can be read?', N'BufferedReader in = url.openStream();', N'BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));', N'BufferedReader in = new InputStreamReader(url.openStream());', N'BufferedReader in = new BufferedReader(new InputStreamReader(url));  a', N'BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (85, N'Which of the following method in the Graphics class can be used to render an image on a component?
Select one:', N'Graphics.drawImage()', N'Graphics.paintImage()', N'Graphics.showImage()', N'Graphics.renderImage() ', N'Graphics.drawImage()', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (86, N'Which of the following JDBC driver Type uses the JDBC-ODBC bridge?
Select one:', N'Type 4', N'Type 2', N'Type 1', N'Type 3', N'Type 1', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (87, N'Consider the following code:
Date today = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("E d/MM/yy a");
System.out.println(sdf.format(today));
All required classes are imported. Suppose the current time is on the morning, the date is Friday, November 13, 2015, select the correct output of the above code:
Select one:', N'None of the others', N'Friday 13/11/2015 AM', N'Fri 13/11/15 AM', N'13/11/2015 AM', N'Fri 13/11/15 AM', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (88, N'In terms of RMI architecture, when a client invokes a method, which object is the method invocation first forwarded to?', N'Skeleton', N'Remote object', N'RMI Registry', N'Stub', N'Stub', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (89, N'In terms of Socket communication, which the following method the server should call to wait for and accept a request connection from clients?
Select one:', N'java.net.Socket.accept()', N'java.net.Socket.wait()', N'java.net.Socket.waitClient()', N'java.net.Socket.acceptClients()', N'java.net.Socket.accept()', N'quynhanh@gmail.com', 5, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (90, N'JSP _______________ let you insert arbitrary code into the servlet''s jspService method (which is called by service).', N'scriptlets', N'expressions', N'declarations', N'None of above', N'scriptlets', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (91, N'Consider the HTML code below. Which of the following method calls can retrieve the "email" value sent from the browser? (Choose one)', N'getField("email") of HttpServletRequest', N' getFormValue("email") of HttpServletRequest', N'getParameter("email") of ServletRequest', N'getParameters("email") ofHttpServlet', N'getParameter("email") of ServletRequest', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (92, N'Which of the following elements are used for error handling and are child elements of <web-app> of a deployment descriptor?', N'error-location', N'error', N'error-page', N'error_page', N'error_page', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (93, N'Consider the following taglibrary descriptor element
<tag>
<name>Hello</name>
<tag-class>com.abc.HelloTag</tag-class>
<body-content> ----- </body-content>
</tag>
Which of the following is NOT a valid value for <body-content> element?', N'empty', N'tagdependent', N'JSP', N'generic', N'JSP', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (94, N'Which statements are BEST describe isErrorPage attribute of <%@page isErrorPage=%> directive?', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'Specifies the MIME type of the data in the response to the client. The default type is text/html', N'Any exceptions in the current page that are not caught are sent to the error page for processing. The error page implicit object exception references the original exception', N'Specifies the class from which the translated JSP will be inherited. This attribute must be a fully qualified package and class name', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (95, N'Which statements are BEST describe isErrorPage attribute of <%@page isErrorPage=%> directive?', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'Specifies the MIME type of the data in the response to the client. The default type is text/html', N'Any exceptions in the current page that are not caught are sent to the error page for processing. The error page implicit object exception references the original exception', N'Specifies the class from which the translated JSP will be inherited. This attribute must be a fully qualified package and class name', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (96, N'Which is the CORRECT statement about JMS?', N'JMS enhances access to email services', N'JMS uses JNDI to find destination', N'JMS uses JMX to create a connection Factory', N'None of above', N'JMS uses JNDI to find destination', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (97, N'Identify the parent element of <session-timeout> element in web.xml', N'webapp', N'session-config', N'session-configuration', N'session_config', N' session-config', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuestion] ([qtQuestionId], [qtQuestion], [qtQuestionAnswer1], [qtQuestionAnswer2], [qtQuestionAnswer3], [qtQuestionAnswer4], [qtQuestionCorrectAnswer], [qtUserID], [qtSubjectId], [ptQuestionStatus], [qtQuestionCreateedDate]) VALUES (98, N'The task of the ...... is to check any material for defects, mostly prior to the meeting.', N'Managers', N'Authors', N'Reviewers (also called checkers or inspectors)', N'Leaders', N'Reviewers (also called checkers or inspectors)', N'quynhanh@gmail.com', 2, 1, CAST(N'2021-02-07' AS Date))
SET IDENTITY_INSERT [dbo].[tblQuestion] OFF
SET IDENTITY_INSERT [dbo].[tblQuizQuestion] ON 

INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (1, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N'', N'Regression testing 
', 1)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (2, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N'', N'Test case
', 1)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (3, N'The longer a fault exists in software
', N'', N'All of the mentioned
', 1)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (4, N'A white box test scales up well at different granularity levels of testing.
', N'', N'FALSE
', 1)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (5, N'Which test refers to the retesting of a unit, integration and system after modification, in order to ascertain that the change has not introduced new faults?
', N'', N'Regression Test
', 1)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (6, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N'Test document
', N'Test case
', 2)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (7, N'Which test refers to the retesting of a unit, integration and system after modification, in order to ascertain that the change has not introduced new faults?
', N' Regression Test
', N'Regression Test
', 2)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (8, N'Which of the following is a black box testing strategy?
', N' Control Structure Coverage
', N'Cause-Effect Graphs
', 2)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (9, N'Abbreviate the term BSS.
', N'Box Statistical System', N'Box Structure Specification ', 2)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (10, N'In static test techniques, behavioral and performance properties of the program are observed.
', N' FALSE
', N'FALSE
', 2)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (11, N'Which box specifies the behavior of a system or a part of a system?
', N'', N'Black box
', 3)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (12, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test case
', N'Test case
', 3)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (13, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N' Regression testing 
', N'Regression testing 
', 3)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (14, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 3)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (15, N'A white box test scales up well at different granularity levels of testing.
', N' FALSE
', N'FALSE
', 3)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (16, N'Which is not a SQA activity?
', N' White box testing ', N'White box testing ', 4)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (17, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test case
', N'Test case
', 4)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (18, N'The longer a fault exists in software
', N'', N'All of the mentioned
', 4)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (19, N'Which test refers to the retesting of a unit, integration and system after modification, in order to ascertain that the change has not introduced new faults?
', N'', N'Regression Test
', 4)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (20, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N' Interoperability 
', N'Interoperability 
', 4)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (21, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 8)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (22, N'Which is not a SQA activity?
', N'Integration testing', N'White box testing ', 8)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (23, N'Which box specifies the behavior of a system or a part of a system?
', N' State box
', N'Black box
', 8)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (24, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N' Regression testing 
', N'Regression testing 
', 8)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (25, N'Which condition defines the circumstances for a particular operation is valid?
', N' Precondition', N'None of the above', 8)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (26, N'In which test design each input is tested at both ends of its valid range and just outside its valid range?
', N' Boundary value testing
', N'Boundary value testing
', 9)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (27, N'Abbreviate the term BSS.
', N'Box Structure Sampling', N'Box Structure Specification ', 9)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (28, N'Which box specifies the behavior of a system or a part of a system?
', N'Black box
', N'Black box
', 9)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (29, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'Security
', N'Interoperability 
', 9)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (30, N'The longer a fault exists in software
', N' the more tedious its removal becomes
', N'All of the mentioned
', 9)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (31, N'Sister in Japanese is: ', N' ane', N'ane', 10)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (32, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 10)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (33, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 10)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (34, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 11)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (35, N'Which is not a SQA activity?
', N'Integration testing', N'White box testing ', 11)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (36, N'In static test techniques, behavioral and performance properties of the program are observed.
', N' FALSE
', N'FALSE
', 11)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (37, N'Which one of these belongs to integration testing in the OO context?
', N' Regression testing
', N'Thread-based testing 
', 11)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (38, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'GUI design & implementation', N'Testing', 11)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (39, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 12)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (40, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 12)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (41, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 12)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (42, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 12)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (43, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 12)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (44, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 13)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (45, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 13)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (46, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 13)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (47, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 13)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (48, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 13)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (49, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 14)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (50, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 14)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (51, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 14)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (52, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 14)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (53, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 14)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (54, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 15)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (55, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 15)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (56, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 15)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (57, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 15)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (58, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 15)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (59, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 16)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (60, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 16)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (61, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 16)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (62, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 16)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (63, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 16)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (64, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 17)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (65, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 17)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (66, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 17)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (67, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 17)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (68, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 17)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (69, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 18)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (70, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 18)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (71, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 18)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (72, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 18)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (73, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 18)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (74, N'Which granularity level of testing checks the behavior of module cooperation?
', N'', N'Integration Testing
', 19)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (75, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'', N'Interoperability 
', 19)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (76, N'Which one of these belongs to integration testing in the OO context?
', N'', N'Thread-based testing 
', 19)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (77, N'Which condition defines the circumstances for a particular operation is valid?
', N'', N'None of the above', 19)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (78, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'', N'Testing', 19)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (79, N'Which method is used for evaluating the expression that passes the function as an argument?
', N'Calculus', N'Strict evaluation', 20)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (80, N'In which test design each input is tested at both ends of its valid range and just outside its valid range?
', N'Boundary value testing AND Equivalence class partitioning
', N'Boundary value testing
', 20)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (81, N'Which one of these belongs to integration testing in the OO context?
', N' Regression testing
', N'Thread-based testing 
', 20)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (82, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N' Regression testing 
', N'Regression testing 
', 20)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (83, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'GUI design & implementation', N'Testing', 20)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (84, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 21)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (85, N'Sister in Japanese is: ', N' ane', N'ane', 21)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (86, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 21)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (87, N'Which is not a type of review?', N'', N'Management approval', 22)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (88, N'Which of the following is a type of non-functional testing?', N'', N'Usability testing.', 22)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (89, N'What do you understand by V&V in software testing?
', N'Verification and Validation', N'Verification and Validation', 22)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (90, N'Static testing can start early in the life cycle, early feedback on quality issues can be
established, for example an early validation of user requirements and not just late in the life
cycle during acceptance testing.', N'', N'True', 22)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (91, N'What can static analysis NOT find?', N'', N'Whether the value stored in a variable is correct', 22)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (92, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 23)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (93, N'Which method is used for evaluating the expression that passes the function as an argument?
', N' Recursion', N'Strict evaluation', 23)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (94, N'Which box specifies the behavior of a system or a part of a system?
', N' Clear box
', N'Black box
', 23)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (95, N'Which of the following is a black box testing strategy?
', N' All Statements Coverage
', N'Cause-Effect Graphs
', 23)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (96, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'Security
', N'Interoperability 
', 23)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (97, N'Which test refers to the retesting of a unit, integration and system after modification, in order to ascertain that the change has not introduced new faults?
', N' Regression Test
', N'Regression Test
', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (98, N'In static test techniques, behavioral and performance properties of the program are observed.
', N' TRUE
', N'FALSE
', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (99, N'Which one of these belongs to integration testing in the OO context?
', N' Regression testing
', N'Thread-based testing 
', 24)
GO
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (100, N'Which condition defines the circumstances for a particular operation is valid?
', N' Postcondition', N'None of the above', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (101, N'A white box test scales up well at different granularity levels of testing.
', N' TRUE
', N'FALSE
', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (102, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (103, N'Which box specifies the behavior of a system or a part of a system?
', N' Clear box
', N'Black box
', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (104, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N' Regression testing 
', N'Regression testing 
', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (105, N'Which is not a SQA activity?
', N'Integration testing', N'White box testing ', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (106, N'Which of the following is a black box testing strategy?
', N' Control Structure Coverage
', N'Cause-Effect Graphs
', 24)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (107, N'Which of the following is a type of non-functional testing?', N'  Statement Coverage.', N'Usability testing.', 25)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (108, N'Static testing can start early in the life cycle, early feedback on quality issues can be
established, for example an early validation of user requirements and not just late in the life
cycle during acceptance testing.', N' True', N'True', 25)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (109, N'Which is not a type of review?', N'Management approval', N'Management approval', 25)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (110, N'What can static analysis NOT find?', N' Whether the value stored in a variable is correct', N'Whether the value stored in a variable is correct', 25)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (111, N'What do you understand by V&V in software testing?
', N'Verification and Validation', N'Verification and Validation', 25)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (112, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (113, N'Which granularity level of testing checks the behavior of module cooperation?
', N' Integration Testing
', N'Integration Testing
', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (114, N'Abbreviate the term BSS.
', N' Box Statistical Specification', N'Box Structure Specification ', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (115, N'Which is not a SQA activity?
', N' White box testing ', N'White box testing ', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (116, N'In static test techniques, behavioral and performance properties of the program are observed.
', N' TRUE
', N'FALSE
', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (117, N'In which test design each input is tested at both ends of its valid range and just outside its valid range?
', N' Equivalence class partitioning
', N'Boundary value testing
', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (118, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'GUI design & implementation', N'Testing', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (119, N'Which method is used for evaluating the expression that passes the function as an argument?
', N' Strict evaluation', N'Strict evaluation', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (120, N'Which box specifies the behavior of a system or a part of a system?
', N' State box
', N'Black box
', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (121, N'The longer a fault exists in software
', N'the less likely it is to be properly corrected
', N'All of the mentioned
', 26)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (122, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 27)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (123, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 27)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (124, N'Sister in Japanese is: ', N' ane', N'ane', 27)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (125, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 28)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (126, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 28)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (127, N'Sister in Japanese is: ', N'', N'ane', 28)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (128, N'Which is not a type of review?', N'Management approval', N'Management approval', 29)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (129, N'What can static analysis NOT find?', N' Whether the value stored in a variable is correct', N'Whether the value stored in a variable is correct', 29)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (130, N'What do you understand by V&V in software testing?
', N'Verification and Validation', N'Verification and Validation', 29)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (131, N'Which of the following is a type of non-functional testing?', N'Usability testing.', N'Usability testing.', 29)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (132, N'Static testing can start early in the life cycle, early feedback on quality issues can be
established, for example an early validation of user requirements and not just late in the life
cycle during acceptance testing.', N' True', N'True', 29)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (133, N'A white box test scales up well at different granularity levels of testing.
', N' TRUE
', N'FALSE
', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (134, N'Which method is used for evaluating the expression that passes the function as an argument?
', N' Recursion', N'Strict evaluation', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (135, N'Abbreviate the term BSS.
', N'Box Statistical System', N'Box Structure Specification ', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (136, N'Which condition defines the circumstances for a particular operation is valid?
', N' Postcondition', N'None of the above', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (137, N'In which test design each input is tested at both ends of its valid range and just outside its valid range?
', N'Boundary value testing AND Equivalence class partitioning
', N'Boundary value testing
', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (138, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N'Performance
', N'Interoperability 
', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (139, N'Which test refers to the retesting of a unit, integration and system after modification, in order to ascertain that the change has not introduced new faults?
', N' Regression Test
', N'Regression Test
', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (140, N'Which granularity level of testing checks the behavior of module cooperation?
', N'Regression Testing
', N'Integration Testing
', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (141, N'Which of the following is a black box testing strategy?
', N' Control Structure Coverage
', N'Cause-Effect Graphs
', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (142, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 30)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (143, N'Sister in Japanese is: ', N' ane', N'ane', 31)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (144, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 31)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (145, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 31)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (146, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 32)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (147, N'Sister in Japanese is: ', N' ane', N'ane', 32)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (148, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 32)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (149, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 33)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (150, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 33)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (151, N'Sister in Japanese is: ', N' ane', N'ane', 33)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (152, N'Which of the following option leads to the portability and security of Java?
', N' The applet makes the Java code secure and portable', N'Bytecode is executed by the JVM.', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (153, N'Which of the following is a valid declaration of a char?
', N' char ch = ''\utea'';
', N'char ch = ''\utea'';
', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (154, N'Evaluate the following Java expression, if x=3, y=5, and z=10:

++z + y - y + z + x++
', N' 24', N'24', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (155, N'Which of the following JDBC driver Type uses the JDBC-ODBC bridge?
Select one:', N'Type 1', N'Type 1', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (156, N'In the package java.awt.image.*, which of the following class manages images in memory and provides methods for storing, interpreting, and obtaining pixel data?', N'Images', N'BufferdImage', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (157, N'Localization is the process of not only changing the language interaction, but also other as relevant changes such:', N' Data formats', N' All of the others', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (158, N'Which JDBC driver types can be used for communications over networks?', N' Type 1 and Type 2', N'Type 3 and Type 4', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (159, N'In terms of JDBC API, what does the Statement.executeUpdate() method return?', N' An integer value indicates the number of records that have been executed successfully.', N'An integer value indicates the number of records that have been executed successfully.', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (160, N'Consider the following interface:
public interface Calculator {
public long add(long a, long b);
public long sub(long a, long b);
public long mul(long a, long b);
public long div(long a, long b);
}
The above interface will be used as a remote interface for a Remote Method Invocation (RMI) communication, what exception class the methods in the Calculator interface are required to throw?', N'java.rmi.RemoteException', N'java.rmi.RemoteException', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (161, N'Consider the following code:
String readContent(String urlString) throws Exception{
String content=', N' BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));', N'BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (162, N'Consider the following overridden method in a JFrame class:
public void paint(Graphics g) {
char s[] = {''w'', ''o'', ''r'', ''k'', '' '', ''h'', ''a'', ''r'', ''d''};
// Line 1
}
Which line of code should be placed at Line 1 so that letters: h, a, r, d are drawn on the frame at the coordinate (60, 90)?
', N' g.drawChars(s[4], 60, 90);', N'g.drawChars(s, 5, 4, 60, 90);', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (163, N'In terms of RMI architecture, when a client invokes a method, which object is the method invocation first forwarded to?', N' Remote object', N'Stub', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (164, N'In terms of JDBC API, in order to execute a SQL Insert query, which method in the Statement class should be used?', N'executeUpdate()', N'executeUpdate()', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (165, N'What is the return type of the hashCode() method in the Object class?
', N'long
', N'int
', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (166, N'In terms of LineMetrics and FontMetrics, what is ascent?
Select one:', N' t is the distance from the baseline to the descender line', N'None of above', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (167, N'Which of the following is a valid long literal?
', N' L990023
', N'0xnf029L
', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (168, N'In terms of Socket communication, which the following method the server should call to wait for and accept a request connection from clients?
Select one:', N' java.net.Socket.accept()', N'java.net.Socket.accept()', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (169, N'Consider the following code:
Date today = new Date();
SimpleDateFormat sdf = new SimpleDateFormat(', N'Fri 13/11/15 AM', N'Fri 13/11/15 AM', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (170, N'_____ is used to find and fix bugs in the Java programs.
', N' JVM
', N'JDB
', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (171, N'In the package java.awt.*, which of the following class represents graphical images as rectangular arrays of pixels?
Select one:', N'Image', N'Image', 34)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (173, N'What is the meaning of ''Japan''?', N' Sun', N'Sun', 36)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (174, N'What is the meaning of ''dekiru''?', N'I can do it', N'I can do it', 36)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (175, N'Sister in Japanese is: ', N' ane', N'ane', 36)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (206, N'Which of the following is a type of non-functional testing?', N'Usability testing.', N'Usability testing.', 40)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (207, N'What do you understand by V&V in software testing?
', N'Verification and Validation', N'Verification and Validation', 40)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (208, N'Static testing can start early in the life cycle, early feedback on quality issues can be
established, for example an early validation of user requirements and not just late in the life
cycle during acceptance testing.', N' True', N'True', 40)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (209, N'What can static analysis NOT find?', N' Whether the value stored in a variable is correct', N'Whether the value stored in a variable is correct', 40)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (210, N'Which is not a type of review?', N'Management approval', N'Management approval', 40)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (211, N'What do you understand by V&V in software testing?
', N'Verification and Validation', N'Verification and Validation', 41)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (212, N'What can static analysis NOT find?', N' Whether the value stored in a variable is correct', N'Whether the value stored in a variable is correct', 41)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (213, N'Which is not a type of review?', N'Management approval', N'Management approval', 41)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (214, N'Static testing can start early in the life cycle, early feedback on quality issues can be
established, for example an early validation of user requirements and not just late in the life
cycle during acceptance testing.', N' True', N'True', 41)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (215, N'Which of the following is a type of non-functional testing?', N'Usability testing.', N'Usability testing.', 41)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (231, N'What can static analysis NOT find?', N' Whether the value stored in a variable is correct', N'Whether the value stored in a variable is correct', 43)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (232, N'What do you understand by V&V in software testing?
', N'Verification and Validation', N'Verification and Validation', 43)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (233, N'Static testing can start early in the life cycle, early feedback on quality issues can be
established, for example an early validation of user requirements and not just late in the life
cycle during acceptance testing.', N' True', N'True', 43)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (234, N'Which of the following is a type of non-functional testing?', N'Usability testing.', N'Usability testing.', 43)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (235, N'Which is not a type of review?', N'Management approval', N'Management approval', 43)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (243, N'Which granularity level of testing checks the behavior of module cooperation?
', N' Integration Testing
', N'Integration Testing
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (244, N'Consider the following taglibrary descriptor element
<tag>
<name>Hello</name>
<tag-class>com.abc.HelloTag</tag-class>
<body-content> ----- </body-content>
</tag>
Which of the following is NOT a valid value for <body-content> element?', N'JSP', N'JSP', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (245, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (246, N'Which method is used for evaluating the expression that passes the function as an argument?
', N' Strict evaluation', N'Strict evaluation', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (247, N'A white box test scales up well at different granularity levels of testing.
', N' TRUE
', N'FALSE
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (248, N'The longer a fault exists in software
', N' the more costly it is to detect and correct
', N'All of the mentioned
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (249, N'Which test refers to the retesting of a unit, integration and system after modification, in order to ascertain that the change has not introduced new faults?
', N' Regression Test
', N'Regression Test
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (250, N'In which test design each input is tested at both ends of its valid range and just outside its valid range?
', N'Boundary value testing AND Equivalence class partitioning
', N'Boundary value testing
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (251, N'Organization can have in-house inspection, direct involvement of users and release of beta version are few of them and it also includes usability, compatibility, user acceptance etc. is called
', N'GUI design & implementation', N'Testing', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (252, N'Which of the following elements are used for error handling and are child elements of <web-app> of a deployment descriptor?', N'error_page', N'error_page', 45)
GO
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (253, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N' Compatibility
', N'Interoperability 
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (254, N'Which is the CORRECT statement about JMS?', N'JMS uses JMX to create a connection Factory', N'JMS uses JNDI to find destination', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (255, N'Which of the following is a black box testing strategy?
', N' Control Structure Coverage
', N'Cause-Effect Graphs
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (256, N'Which box specifies the behavior of a system or a part of a system?
', N'Black box
', N'Black box
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (257, N'Consider the HTML code below. Which of the following method calls can retrieve the ', N'getParameter(', N'getParameter(', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (258, N'Which one of these belongs to integration testing in the OO context?
', N' Regression testing
', N'Thread-based testing 
', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (259, N'Abbreviate the term BSS.
', N' Box Statistical Specification', N'Box Structure Specification ', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (260, N'Which is not a SQA activity?
', N' Black box testing', N'White box testing ', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (261, N'Select a correct constructor form of the java.awt.Font class:', N' Font font = new Font(fontName, fontStyle, fontSize);', N'Font font = new Font(fontName, fontStyle, fontSize);', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (262, N'JSP _______________ let you insert arbitrary code into the servlet''s jspService method (which is called by service).', N' scriptlets', N'scriptlets', 45)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (263, N'Identify the parent element of <session-timeout> element in web.xml', N' <webapp>', N' <session-config>', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (264, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N' Interoperability 
', N'Interoperability 
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (265, N'JSP _______________ let you insert arbitrary code into the servlet''s jspService method (which is called by service).', N' scriptlets', N'scriptlets', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (266, N'Which of the following is a black box testing strategy?
', N' Control Structure Coverage
', N'Cause-Effect Graphs
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (267, N'Consider the following taglibrary descriptor element
<tag>
<name>Hello</name>
<tag-class>com.abc.HelloTag</tag-class>
<body-content> ----- </body-content>
</tag>
Which of the following is NOT a valid value for <body-content> element?', N'JSP', N'JSP', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (268, N'Which is the CORRECT statement about JMS?', N'JMS uses JMX to create a connection Factory', N'JMS uses JNDI to find destination', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (269, N'In static test techniques, behavioral and performance properties of the program are observed.
', N' FALSE
', N'FALSE
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (270, N'The longer a fault exists in software
', N' the more tedious its removal becomes
', N'All of the mentioned
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (271, N'Which condition defines the circumstances for a particular operation is valid?
', N'None of the above', N'None of the above', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (272, N'Select a correct constructor form of the java.awt.Font class:', N' Font font = new Font(fontName, fontStyle, fontSize);', N'Font font = new Font(fontName, fontStyle, fontSize);', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (273, N'Which statements are BEST describe isErrorPage attribute of <%@page isErrorPage=%> directive?', N' Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (274, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N' Regression testing 
', N'Regression testing 
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (275, N'Which method is used for evaluating the expression that passes the function as an argument?
', N' Strict evaluation', N'Strict evaluation', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (276, N'Consider the HTML code below. Which of the following method calls can retrieve the ', N'getParameter(', N'getParameter(', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (277, N'Which of the following elements are used for error handling and are child elements of <web-app> of a deployment descriptor?', N'error_page', N'error_page', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (278, N'Which granularity level of testing checks the behavior of module cooperation?
', N'Regression Testing
', N'Integration Testing
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (279, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (280, N'Which statements are BEST describe isErrorPage attribute of <%@page isErrorPage=%> directive?', N' Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (281, N'Which box specifies the behavior of a system or a part of a system?
', N'Black box
', N'Black box
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (282, N'A white box test scales up well at different granularity levels of testing.
', N' FALSE
', N'FALSE
', 49)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (283, N'Which is the CORRECT statement about JMS?', N'JMS uses JMX to create a connection Factory', N'JMS uses JNDI to find destination', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (284, N'In static test techniques, behavioral and performance properties of the program are observed.
', N' FALSE
', N'FALSE
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (285, N'JSP _______________ let you insert arbitrary code into the servlet''s jspService method (which is called by service).', N' scriptlets', N'scriptlets', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (286, N'What is the testing to ensure the WebApp properly interfaces with other applications or databases?
', N' Compatibility
', N'Interoperability 
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (287, N'Which statements are BEST describe isErrorPage attribute of <%@page isErrorPage=%> directive?', N' Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (288, N'Which method is used for evaluating the expression that passes the function as an argument?
', N' Strict evaluation', N'Strict evaluation', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (289, N'Select a correct constructor form of the java.awt.Font class:', N' Font font = new Font(fontName, fontStyle, fontSize);', N'Font font = new Font(fontName, fontStyle, fontSize);', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (290, N'Consider the following taglibrary descriptor element
<tag>
<name>Hello</name>
<tag-class>com.abc.HelloTag</tag-class>
<body-content> ----- </body-content>
</tag>
Which of the following is NOT a valid value for <body-content> element?', N'JSP', N'JSP', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (291, N'Which condition defines the circumstances for a particular operation is valid?
', N'None of the above', N'None of the above', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (292, N'Which testing is the re-execution of some subset of tests that have already been conducted to ensure the changes that are not propagated?
', N' Regression testing 
', N'Regression testing 
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (293, N'Which box specifies the behavior of a system or a part of a system?
', N' State box
', N'Black box
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (294, N'In which test design each input is tested at both ends of its valid range and just outside its valid range?
', N' Equivalence class partitioning
', N'Boundary value testing
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (295, N'Which granularity level of testing checks the behavior of module cooperation?
', N' Integration Testing
', N'Integration Testing
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (296, N'Which of the following elements are used for error handling and are child elements of <web-app> of a deployment descriptor?', N'error_page', N'error_page', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (297, N'Identify the parent element of <session-timeout> element in web.xml', N'', N' <session-config>', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (298, N'Which statements are BEST describe isErrorPage attribute of <%@page isErrorPage=%> directive?', N' Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', N'Specifies if the current page is an error page that will be invoked in response to an error on another page. If the attribute value is true, the implicit object exception is created and references the original excep', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (299, N'Consider the HTML code below. Which of the following method calls can retrieve the ', N'getParameter(', N'getParameter(', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (300, N'A set of inputs, execution preconditions and expected outcomes is known as a
', N' Test plan
', N'Test case
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (301, N'Which of the following is a black box testing strategy?
', N' Control Structure Coverage
', N'Cause-Effect Graphs
', 50)
INSERT [dbo].[tblQuizQuestion] ([qqQuizQuestionId], [qqQuizQues], [qqQuizQuestionAnsOfUser], [qqQuizQuestionCorrectAns], [qqQuizResultId]) VALUES (302, N'A white box test scales up well at different granularity levels of testing.
', N' FALSE
', N'FALSE
', 50)
SET IDENTITY_INSERT [dbo].[tblQuizQuestion] OFF
SET IDENTITY_INSERT [dbo].[tblQuizResult] ON 

INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (1, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-01-30' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (2, N'test@gmail.com', 2, 5, NULL, 2, CAST(N'2021-01-30' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (3, N'test@gmail.com', 2, 5, NULL, 3, CAST(N'2021-01-30' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (4, N'test@gmail.com', 2, 5, NULL, 3, CAST(N'2021-01-30' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (5, N'test@gmail.com', 32, 1, NULL, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (6, N'test@gmail.com', 32, 2, NULL, 2, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (7, N'test2@gmail.com', 2, 5, NULL, 2, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (8, N'test@gmail.com', 2, 5, NULL, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (9, N'test2@gmail.com', 2, 5, NULL, 2, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (10, N'test2@gmail.com', 32, 3, NULL, 3, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (11, N'test2@gmail.com', 2, 5, NULL, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (12, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (13, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (14, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (15, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (16, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (17, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (18, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (19, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (20, N'test@gmail.com', 2, 5, NULL, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (21, N'test@gmail.com', 32, 3, NULL, 3, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (22, N'test@gmail.com', 4, 5, NULL, 1, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (23, N'test@gmail.com', 2, 5, NULL, 0, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (24, N'test@gmail.com', 2, 10, NULL, 2, CAST(N'2021-02-01' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (25, N'test2@gmail.com', 4, 5, NULL, 4, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (26, N'test@gmail.com', 2, 10, NULL, 3, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (27, N'test@gmail.com', 32, 3, NULL, 3, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (28, N'test@gmail.com', 32, 3, NULL, 2, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (29, N'test@gmail.com', 4, 5, NULL, 5, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (30, N'test@gmail.com', 2, 10, NULL, 1, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (31, N'test@gmail.com', 32, 3, NULL, 3, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (32, N'test2@gmail.com', 32, 3, NULL, 3, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (33, N'test@gmail.com', 32, 3, NULL, 3, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (34, N'test@gmail.com', 5, 20, NULL, 10, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (36, N'test2@gmail.com', 32, 3, NULL, 3, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (40, N'test@gmail.com', 4, 5, NULL, 5, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (41, N'test@gmail.com', 4, 5, NULL, 5, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (42, N'test@gmail.com', 2, 20, NULL, 12, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (43, N'test@gmail.com', 4, 5, NULL, 5, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (45, N'test2@gmail.com', 2, 20, NULL, 9, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (49, N'test@gmail.com', 2, 20, NULL, 14, CAST(N'2021-02-05' AS Date))
INSERT [dbo].[tblQuizResult] ([qrQuizResultId], [qrUserGmail], [qrQuizResultSubject], [qrQuizResultQuesAmount], [qrQuizResultPoint], [qrQuizResultCorrectAnsNum], [qrQuizResultDate]) VALUES (50, N'test@gmail.com', 2, 20, NULL, 13, CAST(N'2021-02-07' AS Date))
SET IDENTITY_INSERT [dbo].[tblQuizResult] OFF
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([rlRoleId], [rlRoleName]) VALUES (1, N'admin')
INSERT [dbo].[tblRole] ([rlRoleId], [rlRoleName]) VALUES (2, N'student')
SET IDENTITY_INSERT [dbo].[tblRole] OFF
SET IDENTITY_INSERT [dbo].[tblSubject] ON 

INSERT [dbo].[tblSubject] ([sjSubjectId], [sjSubjectName], [sjSubjectStatus], [sjCategoryID]) VALUES (2, N'Prj321', 1, 2)
INSERT [dbo].[tblSubject] ([sjSubjectId], [sjSubjectName], [sjSubjectStatus], [sjCategoryID]) VALUES (3, N'PRN292', 1, 2)
INSERT [dbo].[tblSubject] ([sjSubjectId], [sjSubjectName], [sjSubjectStatus], [sjCategoryID]) VALUES (4, N'SWT102', 1, 2)
INSERT [dbo].[tblSubject] ([sjSubjectId], [sjSubjectName], [sjSubjectStatus], [sjCategoryID]) VALUES (5, N'PRJ311', 1, 2)
INSERT [dbo].[tblSubject] ([sjSubjectId], [sjSubjectName], [sjSubjectStatus], [sjCategoryID]) VALUES (32, N'BPM200', 1, 1)
SET IDENTITY_INSERT [dbo].[tblSubject] OFF
INSERT [dbo].[tblUserDAO] ([urUserGmail], [urPassword], [urUserName], [urRoleID]) VALUES (N'', N'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', N'', 2)
INSERT [dbo].[tblUserDAO] ([urUserGmail], [urPassword], [urUserName], [urRoleID]) VALUES (N'quynhanh@gmail.com', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'Quỳnh Anh', 1)
INSERT [dbo].[tblUserDAO] ([urUserGmail], [urPassword], [urUserName], [urRoleID]) VALUES (N'test@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'Student', 2)
INSERT [dbo].[tblUserDAO] ([urUserGmail], [urPassword], [urUserName], [urRoleID]) VALUES (N'test2@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'student2', 2)
INSERT [dbo].[tblUserDAO] ([urUserGmail], [urPassword], [urUserName], [urRoleID]) VALUES (N'test3@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'Student3', 2)
ALTER TABLE [dbo].[tblHistoryAccess]  WITH CHECK ADD FOREIGN KEY([haUserGmail])
REFERENCES [dbo].[tblUserDAO] ([urUserGmail])
GO
ALTER TABLE [dbo].[tblQuestion]  WITH CHECK ADD  CONSTRAINT [FK__tblQuesti__qtSub__4F7CD00D] FOREIGN KEY([qtSubjectId])
REFERENCES [dbo].[tblSubject] ([sjSubjectId])
GO
ALTER TABLE [dbo].[tblQuestion] CHECK CONSTRAINT [FK__tblQuesti__qtSub__4F7CD00D]
GO
ALTER TABLE [dbo].[tblQuestion]  WITH CHECK ADD  CONSTRAINT [FK__tblQuesti__qtUse__4E88ABD4] FOREIGN KEY([qtUserID])
REFERENCES [dbo].[tblUserDAO] ([urUserGmail])
GO
ALTER TABLE [dbo].[tblQuestion] CHECK CONSTRAINT [FK__tblQuesti__qtUse__4E88ABD4]
GO
ALTER TABLE [dbo].[tblQuizQuestion]  WITH CHECK ADD  CONSTRAINT [FK__tblQuizQu__qqQui__60A75C0F] FOREIGN KEY([qqQuizResultId])
REFERENCES [dbo].[tblQuizResult] ([qrQuizResultId])
GO
ALTER TABLE [dbo].[tblQuizQuestion] CHECK CONSTRAINT [FK__tblQuizQu__qqQui__60A75C0F]
GO
ALTER TABLE [dbo].[tblQuizResult]  WITH CHECK ADD FOREIGN KEY([qrQuizResultSubject])
REFERENCES [dbo].[tblSubject] ([sjSubjectId])
GO
ALTER TABLE [dbo].[tblQuizResult]  WITH CHECK ADD FOREIGN KEY([qrUserGmail])
REFERENCES [dbo].[tblUserDAO] ([urUserGmail])
GO
ALTER TABLE [dbo].[tblSubject]  WITH CHECK ADD  CONSTRAINT [sjCategoryID] FOREIGN KEY([sjCategoryID])
REFERENCES [dbo].[tblCategory] ([ctgCategoryId])
GO
ALTER TABLE [dbo].[tblSubject] CHECK CONSTRAINT [sjCategoryID]
GO
ALTER TABLE [dbo].[tblUserDAO]  WITH CHECK ADD  CONSTRAINT [FK__tblUserDA__urRol__21B6055D] FOREIGN KEY([urRoleID])
REFERENCES [dbo].[tblRole] ([rlRoleId])
GO
ALTER TABLE [dbo].[tblUserDAO] CHECK CONSTRAINT [FK__tblUserDA__urRol__21B6055D]
GO
USE [master]
GO
ALTER DATABASE [Assignment2_NguyenPhanQuynhAnh] SET  READ_WRITE 
GO
