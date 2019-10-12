CREATE DATABASE [HzyAdminDB]
GO
USE [HzyAdminDB]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Member_ID] [uniqueidentifier] NOT NULL,
	[Member_Num] [varchar](50) NULL,
	[Member_Name] [varchar](200) NULL,
	[Member_Phone] [int] NULL,
	[Member_Sex] [varchar](50) NULL,
	[Member_Birthday] [datetime] NULL,
	[Member_Photo] [varchar](200) NULL,
	[Member_UserID] [uniqueidentifier] NULL,
	[Member_Introduce] [text] NULL,
	[Member_FilePath] [varchar](200) NULL,
	[Member_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Member_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_AppLog]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_AppLog](
	[AppLog_ID] [uniqueidentifier] NOT NULL,
	[AppLog_Api] [varchar](200) NULL,
	[AppLog_IP] [varchar](50) NULL,
	[AppLog_UserID] [uniqueidentifier] NULL,
	[AppLog_Parameter] [varchar](max) NULL,
	[AppLog_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_AppLog] PRIMARY KEY CLUSTERED 
(
	[AppLog_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Function]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Function](
	[Function_ID] [uniqueidentifier] NOT NULL,
	[Function_Num] [varchar](50) NULL,
	[Function_Name] [varchar](50) NULL,
	[Function_ByName] [varchar](50) NULL,
	[Function_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Function] PRIMARY KEY CLUSTERED 
(
	[Function_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Menu](
	[Menu_ID] [uniqueidentifier] NOT NULL,
	[Menu_Num] [varchar](50) NULL,
	[Menu_Name] [varchar](50) NULL,
	[Menu_Url] [varchar](50) NULL,
	[Menu_Icon] [varchar](50) NULL,
	[Menu_ParentID] [uniqueidentifier] NULL,
	[Menu_IsShow] [int] NULL,
	[Menu_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Menu] PRIMARY KEY CLUSTERED 
(
	[Menu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_MenuFunction]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_MenuFunction](
	[MenuFunction_ID] [uniqueidentifier] NOT NULL,
	[MenuFunction_MenuID] [uniqueidentifier] NULL,
	[MenuFunction_FunctionID] [uniqueidentifier] NULL,
	[MenuFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_MenuFunction] PRIMARY KEY CLUSTERED 
(
	[MenuFunction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Number]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Number](
	[Number_ID] [uniqueidentifier] NOT NULL,
	[Number_Num] [varchar](50) NULL,
	[Number_DataBase] [varchar](50) NULL,
	[Number_TableName] [varchar](50) NULL,
	[Number_NumField] [varchar](50) NULL,
	[Number_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Number] PRIMARY KEY CLUSTERED 
(
	[Number_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Role_ID] [uniqueidentifier] NOT NULL,
	[Role_Num] [varchar](50) NULL,
	[Role_Name] [varchar](50) NULL,
	[Role_Remark] [varchar](500) NULL,
	[Role_IsDelete] [int] NULL,
	[Role_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_RoleMenuFunction]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleMenuFunction](
	[RoleMenuFunction_ID] [uniqueidentifier] NOT NULL,
	[RoleMenuFunction_RoleID] [uniqueidentifier] NULL,
	[RoleMenuFunction_FunctionID] [uniqueidentifier] NULL,
	[RoleMenuFunction_MenuID] [uniqueidentifier] NULL,
	[RoleMenuFunction_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_RoleMenuFunction] PRIMARY KEY CLUSTERED 
(
	[RoleMenuFunction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2019/10/12 18:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[User_ID] [uniqueidentifier] NOT NULL,
	[User_Name] [varchar](50) NULL,
	[User_LoginName] [varchar](50) NULL,
	[User_Pwd] [varchar](100) NULL,
	[User_Email] [varchar](50) NULL,
	[User_IsDelete] [int] NULL,
	[User_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_UserRole]    Script Date: 2019/10/12 18:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserRole](
	[UserRole_ID] [uniqueidentifier] NOT NULL,
	[UserRole_UserID] [uniqueidentifier] NULL,
	[UserRole_RoleID] [uniqueidentifier] NULL,
	[UserRole_CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRole_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([Member_ID], [Member_Num], [Member_Name], [Member_Phone], [Member_Sex], [Member_Birthday], [Member_Photo], [Member_UserID], [Member_Introduce], [Member_FilePath], [Member_CreateTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', 131231, N'男', CAST(N'2019-07-08T11:47:24.973' AS DateTime), N'/Content/UpFile/51446921-6121-4a53-b5f3-4ef26c1f82e0.jpg', N'a7eae7ab-0de4-4026-8da9-6529f8a1c3e2', N'<p><img src="/Admin/lib/nUeditor/upload/image/20180802/6366881296663732469581226.jpg" alt="p_big3.jpg"/></p>', N'/Content/UpFile/fc0ef283-b8c1-4fcf-851c-51141a2be661.txt', CAST(N'2018-04-25T23:00:00.000' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1e60c212-d025-458b-873c-02127ff3ac55', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:14:12.400' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ede062c1-b129-4052-b079-025578d9e521', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:16:00.243' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c6f9835a-adc1-42fd-af48-057e31c07921', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:07:15.120' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'014c06f5-63c5-4251-bb85-087a03b4553e', N'/Admin/Menus/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:27:23.737' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6f30448b-23c3-4810-a045-09ac12f214c2', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:39.310' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'4a887ddf-108b-4ad0-ac4b-0b3445ad9598', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:13:06.093' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'232e4438-8c07-4a41-81c6-10b2424ae86e', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:31.027' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'da62d4b3-895b-4a2e-9b96-1377d708a72c', N'/Admin/AppLog/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:26:03.670' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8a001015-c686-4414-ad03-13ec7d6fe8c9', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime[0]":["2019-10-08T16:00:00.000Z"],"AppLog_CreateTime[1]":["2019-11-12T16:00:00.000Z"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:15:09.763' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'24ad6d95-1100-46da-a043-155c7ac11184', N'/Admin/Menus/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:03:25.323' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ef787e0e-7199-4d2f-9e92-16ec8d11a519', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:03:30.583' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'36ff54cf-fd6d-4474-a19e-17ba495ed476', N'/Admin/Menus/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["9591f249-1471-44f7-86b5-6fdae8b93888"]}', CAST(N'2019-10-05T12:12:06.550' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'7fb85ba4-f584-4aec-9c25-1874650f5f71', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime[0]":["2019-10-09T16:00:00.000Z"],"AppLog_CreateTime[1]":["2019-11-12T16:00:00.000Z"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:18:24.763' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'fb141750-3c1a-42a7-b652-18f8c5af53b9', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:12:34.567' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'0c4a8879-7798-4203-95bd-1a5205a1dfd8', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:10:56.530' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'df93df46-c5e1-4b06-b02c-1dd5e7da738b', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:18:10.360' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'5652f71e-86d4-49c6-82ff-1f904e43ca5a', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:14:16.557' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'fe6eace1-e8ec-47ba-924b-2319f9d123c7', N'/Admin/RoleFunction/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:22.507' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ead86f3a-0e04-4ecb-9f2f-2435f73c5ce0', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T12:03:24.937' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ac27ceb3-2574-4346-9dc5-2499124c20da', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:13:04.333' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'29681884-9770-4812-951c-25832a2323b8', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:11:28.847' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'4db5dc3c-4126-483a-a7b1-26eccaf72cfb', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:15:03.073' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'59fc80be-c9c4-4780-a552-29073da56707', N'/Admin/Menus/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":["首页"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:32.040' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'97b06e55-6b6d-449a-85b3-2be16e3f7704', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["fe0e2949-7fc0-4247-8ad3-9aacf9bfe280"]}', CAST(N'2019-10-05T11:10:51.927' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'19f4a158-7155-4663-b975-2f012a2e2945', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["ef787e0e-7199-4d2f-9e92-16ec8d11a519"]}', CAST(N'2019-10-05T11:03:49.600' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6afc054b-298a-41f6-85b4-370a805f0679', N'/Admin/User/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"User_Name":[""],"User_LoginName":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:59.567' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'f6425e6a-a608-408f-9124-37d75ba8931e', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime[0]":["2019-10-14T16:00:00.000Z"],"AppLog_CreateTime[1]":["2019-11-13T16:00:00.000Z"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:14:54.537' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'385a42fd-73a7-440c-8c4e-38a5cc387d8a', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:11:43.397' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'2f8645ff-0f88-4e1f-9d7b-39667d6cc7cc', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:11:47.840' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'f2718947-bc73-454f-a8ae-3be27a779380', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:12:41.597' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a5db2536-f995-4ddf-b44f-3e8bc549bd38', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:39.800' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'982e758c-9915-4e3b-8ebb-3eee395bae76', N'/Admin/Menus/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["7c34c2fd-98ed-4655-aa04-bb00b915a751"]}', CAST(N'2019-10-05T12:03:06.283' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'cf1e1443-53c2-4675-9ac8-3f4493f1344b', N'/Admin/Menus/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:28:03.920' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'bfb55850-69b4-4453-babe-41d6a3717c2d', N'/Admin/Menus/Tree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T12:03:02.880' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'691c7c82-d59b-450a-b797-447f423f73f6', N'/Admin/Menus/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:03:03.053' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c8974857-3dd3-4aab-a051-4b9cc3dc2f2b', N'/Admin/Role/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:38.787' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'852cf1e7-639f-4747-923a-4cb7a99ad4c2', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["fe0e2949-7fc0-4247-8ad3-9aacf9bfe280"]}', CAST(N'2019-10-05T11:07:17.473' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'25f93a03-3748-4453-b7b6-4ccd8713aef5', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:14:12.403' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'21de7508-52b8-4417-8bf8-4d94999537cd', N'/Admin/Menus/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T12:03:25.237' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'81a52856-27c4-4a7f-a88d-4f302184a72b', N'/Admin/Function/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:27:34.120' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'711f819a-56ad-4b13-b1a2-519020a4a519', N'/Admin/Function/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Function_Name":["出"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:46.523' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'983f545d-9340-4c42-936a-54b7eec7477f', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:18:12.483' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'20e9ffd6-2337-4567-aba8-57edc2c89dbb', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:11:43.397' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'5f2e5456-c2a0-482e-b45c-5a072967e3cb', N'/Admin/User/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"User_Name":[""],"User_LoginName":["user"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:58.360' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'76752967-f38f-46fc-bcdd-5fd9d6cbd749', N'/Admin/Menus/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:23.740' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'0d2f788e-bbb0-4351-a86f-616d4acc9716', N'/Admin/Function/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Function_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:34.117' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'889c82c5-2267-46a7-bb45-638b31d03258', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:13:06.093' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'964e6aed-97bf-4739-8632-63ff5bab05ad', N'/Admin/Menus/Tree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T12:03:15.047' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'2b99a60e-7ccb-4890-a5f9-65659394e27d', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T12:02:58.673' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'89f386cc-b9b9-4b50-a43f-65e9bb5e5b58', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:29:07.863' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a71a77ac-25fa-4b4d-aee8-67221b2a49e6', N'/Admin/AppLog/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime[0]":["2019-10-03T16:00:00.000Z"],"AppLog_CreateTime[1]":["2019-10-05T16:00:00.000Z"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:26:24.530' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd6b258df-6bcc-4dac-b1d7-67abc9ae9454', N'/Admin/RoleFunction/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:28:04.557' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'9a694fdc-6077-42ec-a624-6b3df448fc18', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime[0]":["2019-10-14T16:00:00.000Z"],"AppLog_CreateTime[1]":["2019-11-13T16:00:00.000Z"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:14:24.753' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'fcb15cc3-c23b-4b14-bc3f-6c1fec433dbc', N'/Admin/User/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"User_Name":[""],"User_LoginName":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:50.410' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c8695953-b6bf-4eb2-a734-6d3929189257', N'/Admin/AppLog/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime[0]":["2019-10-08T16:00:00.000Z"],"AppLog_CreateTime[1]":["2019-11-14T16:00:00.000Z"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:26:15.677' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'25024ec4-d608-4dd4-bba0-6fdee24b1c3f', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:39.457' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'5d8c9921-96ad-4cb3-98a3-71936f4352e6', N'/Admin/RoleFunction/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:09.747' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1f68acd3-34c6-4b8e-a87e-746066ac32f0', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:14:24.757' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'56dc5326-66fb-49ba-8a04-74afce840a89', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:39.667' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3ee5c312-9624-4e78-b3ab-755a5e00bb3c', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["19f4a158-7155-4663-b975-2f012a2e2945"]}', CAST(N'2019-10-05T11:08:31.820' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6d1af818-e1e5-40e5-9d3d-761a05a7bfcb', N'/Admin/AppLog/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:26:38.580' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'dfc8f9a5-86ee-48e8-8c1c-7627bcea4728', N'/Admin/User/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:27:50.410' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1ac5524e-9e7e-478c-a275-76a9dd519b0c', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:36.297' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'9ce12727-6dc4-494c-8852-7790855ca1e3', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:11:47.833' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'431cbb3d-81f3-44d3-8181-77f30632b9d2', N'/Admin/User/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"User_Name":[""],"User_LoginName":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:28:06.883' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd7129c9e-def6-4988-8be6-783346fa5eef', N'/Admin/AppLog/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:26:03.717' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'77a611fd-5eda-482b-92a6-798269b6b77d', N'/Admin/Role/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:27:38.783' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'5a19fe08-6feb-42f1-8479-7ab1caa90212', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:13:06.107' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'168b2987-99f4-40f5-8e9e-7b3e63ac5ec5', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:16:02.877' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'42aadd09-2aab-4600-a3b8-7c1b8c634af8', N'/Admin/User/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"User_Name":[""],"User_LoginName":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:50.413' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1ec0d2a5-e0ab-4d6c-aa75-7c72e494da06', N'/Admin/Menus/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["1ec76c4c-b9b3-4517-9854-f08cd11d653d"]}', CAST(N'2019-10-05T12:12:03.200' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'0e9d2cd6-ae65-4c34-bd7a-7dd4bfd75f9f', N'/Admin/Menus/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:23.740' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'17197cc7-6da5-42ee-949e-7f71cc77af62', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime[0]":["2019-10-14T16:00:00.000Z"],"AppLog_CreateTime[1]":["2019-11-13T16:00:00.000Z"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:14:24.760' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'bf191c03-b628-4d90-841a-8225782771bb', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T12:04:56.580' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ec3e43eb-da07-4e8f-842d-8299244f2a48', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:15:00.733' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'5c0a51d9-012d-4ef7-b4de-8469a829c1d0', N'/Admin/Menus/Tree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:27:23.817' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ca73c8cb-1220-448d-8095-8a23ece3d3d0', N'/Admin/Menus/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T12:03:02.997' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'409862b1-84d6-4973-9d5d-8b232bb4eddc', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:31.027' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'83d3fb8c-1f74-4578-a648-8c1a22bfc151', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:12:09.310' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'87bdf562-a920-4b2d-aeb0-925539546192', N'/Admin/Menus/SysTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:26:01.107' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'dcd5cb8e-27c0-4d13-b113-936f5c97075c', N'/Admin/Role/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:48.423' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'fe0e2949-7fc0-4247-8ad3-9aacf9bfe280', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:07:14.680' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c47c89bd-bcb1-4c53-8230-9af6c2c788e0', N'/Admin/Menus/Tree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T12:03:25.240' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'9a72da30-2e2b-4051-9e6f-9c5d192fc178', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:04:56.593' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'bd9c2b47-1295-4faf-a2a7-9c7097a290b5', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:14:16.557' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'772ed197-5b23-4070-ba49-9c9eb06cf408', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:12:34.570' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1b65d028-7951-41f4-aaf4-9dd2c189f772', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:07:15.117' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'27af1c1f-9312-46ae-93e7-a08c1ac35f3b', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:10:46.637' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'be200a63-211a-4c42-a2f6-a0934cf3e94e', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:37.700' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'686c4ebb-cee6-49c0-a720-a0f8b6929d4b', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["fe0e2949-7fc0-4247-8ad3-9aacf9bfe280"]}', CAST(N'2019-10-05T11:11:43.393' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'b263c61c-e7b6-4fdd-bf44-a4173f543c3c', N'/Admin/Role/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:28:02.247' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'60c080fd-58a4-4b89-b049-a4ec666b8d1d', N'/Admin/Function/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Function_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:47.390' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'5c26ca3b-d1fc-4d8e-bb09-a52c313f05fb', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:11:47.833' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'126d0ec7-8ffa-4da2-b9d8-ad7ef9385b2a', N'/Admin/RoleFunction/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":["销售"],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:21.417' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a15c63e4-5b9b-4afe-82ad-b1f375d91afa', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:15:03.073' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c0610370-64b9-4dcf-ad39-b28477abc75b', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:18:14.310' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ae7f88b7-b0d3-4450-9a4c-b345cea36c65', N'/Admin/RoleFunction/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:09.747' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'af7a167f-675a-4ff0-b098-b37a4b245c44', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["19f4a158-7155-4663-b975-2f012a2e2945"]}', CAST(N'2019-10-05T11:10:10.213' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'455629d4-060e-4d69-8511-b4bdbeda8294', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:14:16.557' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd62040c8-28a8-4f73-b6ad-b8e36df96964', N'/Admin/Role/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:38.783' AS DateTime))
GO
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'4c27e89c-4199-49d7-b34d-c1ffbf7f1a12', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:03:39.967' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1a3a098f-a952-4806-84da-c686ccf2647e', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:12:41.600' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'48e06d92-aeca-466a-85c8-c6b4a58db243', N'/Admin/Menus/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["1ec76c4c-b9b3-4517-9854-f08cd11d653d"]}', CAST(N'2019-10-05T12:12:09.187' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'34415864-a6b6-4cde-bf2b-c94474a8fefb', N'/Admin/Function/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Function_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:34.117' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'e6ccc3c5-6973-4ff1-9ea4-c9cf8b994033', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:18:12.417' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'b34e3e87-d38a-4caf-83d4-d2ad03dd7d59', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:03:30.970' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'bef74f3f-fd69-4d34-8409-d464a8557e67', N'/Admin/Menus/Save', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"AllFunctionList[0][Function_ID]":["c9518758-b2e1-4f51-b517-5282e273889c"],"AllFunctionList[0][Function_Name]":["能否拥有"],"AllFunctionList[0][Function_ByName]":["Have"],"AllFunctionList[1][Function_ID]":["bffefb1c-8988-4ddf-b4ac-81c2b30e80cd"],"AllFunctionList[1][Function_Name]":["添加"],"AllFunctionList[1][Function_ByName]":["Insert"],"AllFunctionList[2][Function_ID]":["e7ef2a05-8317-41c3-b588-99519fe88bf9"],"AllFunctionList[2][Function_Name]":["查看"],"AllFunctionList[2][Function_ByName]":["Update"],"AllFunctionList[3][Function_ID]":["9c388461-2704-4c5e-a729-72c17e9018e1"],"AllFunctionList[3][Function_Name]":["删除"],"AllFunctionList[3][Function_ByName]":["Delete"],"AllFunctionList[4][Function_ID]":["383e7ee2-7690-46ac-9230-65155c84aa30"],"AllFunctionList[4][Function_Name]":["保存"],"AllFunctionList[4][Function_ByName]":["Save"],"AllFunctionList[5][Function_ID]":["f27ecb0a-197d-47b1-b243-59a8c71302bf"],"AllFunctionList[5][Function_Name]":["检索"],"AllFunctionList[5][Function_ByName]":["Search"],"AllFunctionList[6][Function_ID]":["2401f4d0-60b0-4e2e-903f-84c603373572"],"AllFunctionList[6][Function_Name]":["导出"],"AllFunctionList[6][Function_ByName]":["GetExcel"],"AllFunctionList[7][Function_ID]":["b6fd5425-504a-46a9-993b-2f8dc9158eb8"],"AllFunctionList[7][Function_Name]":["打印"],"AllFunctionList[7][Function_ByName]":["Print"],"FunctionIds[0]":["2401f4d0-60b0-4e2e-903f-84c603373572"],"FunctionIds[1]":["9c388461-2704-4c5e-a729-72c17e9018e1"],"FunctionIds[2]":["f27ecb0a-197d-47b1-b243-59a8c71302bf"],"FunctionIds[3]":["383e7ee2-7690-46ac-9230-65155c84aa30"],"FunctionIds[4]":["c9518758-b2e1-4f51-b517-5282e273889c"],"FunctionIds[5]":["e7ef2a05-8317-41c3-b588-99519fe88bf9"],"FunctionIds[6]":["bffefb1c-8988-4ddf-b4ac-81c2b30e80cd"],"FunctionIds[7]":["b6fd5425-504a-46a9-993b-2f8dc9158eb8"],"Menu_ID":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Menu_Num":["B-100"],"Menu_Name":["会员管理"],"Menu_Url":["/Base/Member"],"Menu_Icon":[""],"Menu_ParentID":["1ec76c4c-b9b3-4517-9854-f08cd11d653d"],"Menu_IsShow":["1"],"Menu_CreateTime":["2018-04-25T21:36:28.533"]}', CAST(N'2019-10-05T12:03:14.673' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ae7744ed-4459-41dc-be51-d50ec55cf68a', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Role_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:10:25.747' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8fc6e874-2da9-49c8-9b2f-d70563aea2cc', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:12:41.600' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'35701a91-3518-4f33-807f-d96c983522ad', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:12:10.977' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8beab8d7-d2fa-44d2-a29a-dcbd9e96b7bd', N'/Admin/AppLog/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:28:05.623' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'0e52b953-ba3f-4d75-b789-de343e290c32', N'/Admin/Function/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Function_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:40.450' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'32a91d70-ae27-4848-9b7a-df4edb6a24d4', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:14:12.400' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'cd1bfab6-afaa-41fb-ab26-e063cd26ee3e', N'/Admin/Menus/SysTree', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{}', CAST(N'2019-10-05T11:12:32.870' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'869049be-b887-4bde-90ed-e0f494f6e124', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:12:10.983' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3db67609-9d98-4aef-a772-e306fa640211', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:12:10.973' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'886d7e9a-a274-4376-add8-e32acae3e6d3', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:04:56.610' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'50f052ca-a197-4af3-9ca4-e40cfd7fa72a', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"AppLog_CreateTime":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:05:03.097' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'41e513af-baf0-4dba-ac7e-e42be2bb4875', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":["25024ec4-d608-4dd4-bba0-6fdee24b1c3f"]}', CAST(N'2019-10-05T11:10:15.607' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1a481df8-ae17-4731-8c4e-e6e0890d9ef9', N'/Admin/AppLog/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:26:03.620' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8fad3fdd-855c-418c-b000-e7a77f1c6b4f', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:16:30.870' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a2aeeb63-4ca8-47e4-9820-e94f20a1971a', N'/Admin/Menus/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":["1ec76c4c-b9b3-4517-9854-f08cd11d653d"],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:03:15.047' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'2cdf5c77-09cb-4a11-ba53-ea00677e3f40', N'/Admin/AppLog/LoadForm', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Id":[""]}', CAST(N'2019-10-05T11:07:15.063' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'45bb7341-f31a-4090-abc1-ebac90c8c589', N'/Admin/Menus/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:27:32.770' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8233b7b2-7414-429c-9a63-ec3955b29142', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:16:02.920' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c212ecbd-dc2e-44a1-89a5-ed0c56b30f4d', N'/Admin/Menus/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:11:50.267' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'7685d228-0500-4624-9ee0-ef183db744c2', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:12:34.570' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3ec62db2-90c0-407f-9da2-f1936dd2ceab', N'/Admin/Menus/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:03:25.240' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'fd3da1ce-0385-49c0-9f78-f4adb8dab1ba', N'/Admin/Menus/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":[""],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:03:03.070' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'f7a63fb7-06ca-4ca6-82a7-f898fe2bec4d', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:16:48.693' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'fb8b346e-9311-4c76-9b40-f8be2734dca3', N'/Admin/Function/FindList', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Function_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:28:03.390' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'cd1e3bc8-e73f-441b-bda0-f91b25530e37', N'/Admin/Menus/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Menu_ID":["1ec76c4c-b9b3-4517-9854-f08cd11d653d"],"Menu_Name":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T12:03:04.730' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'df4c0d06-9c6d-40c3-a319-ffabdc726d34', N'/Admin/AppLog/FindList', N'::1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"AppLog_Api":[""],"AppLog_IP":[""],"AppLog_Parameter":[""],"Page":["1"],"Rows":["20"]}', CAST(N'2019-10-05T11:15:03.070' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'80', N'打印', N'Print', CAST(N'2016-06-20T13:40:36.787' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', N'10', N'能否拥有', N'Have', CAST(N'2016-06-20T13:40:29.657' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'60', N'检索', N'Search', CAST(N'2017-02-16T17:06:23.430' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', N'50', N'保存', N'Save', CAST(N'2017-04-22T13:51:52.837' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', N'40', N'删除', N'Delete', CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'20', N'添加', N'Insert', CAST(N'2016-06-20T13:40:36.787' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', N'70', N'导出', N'GetExcel', CAST(N'2017-02-09T16:34:14.017' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'30', N'查看', N'Update', CAST(N'2016-06-20T13:40:43.153' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'75efb1c6-79f3-49df-8b1f-3ec61455fe05', N'Z-140', N'角色权限', N'/Sys/RoleFunction', N'el-icon-s-management', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2019-10-04T11:40:35.830' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'Z-130', N'菜单功能', N'/Sys/Menus', N'el-icon-menu', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:33.997' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'd721fc55-2174-40eb-bb37-5c54a158525a', N'Z-120', N'功能管理', N'/Sys/Function', N'el-icon-s-operation', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:21.087' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'9591f249-1471-44f7-86b5-6fdae8b93888', N'Z', N'系统管理', NULL, N'el-icon-s-platform', NULL, 1, CAST(N'2018-03-10T12:16:38.890' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'A', N'首页', N'/Home', N'el-icon-s-home', NULL, 1, CAST(N'2019-09-29T23:39:53.883' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'Z-100', N'用户管理', N'/Sys/User', N'el-icon-user-solid', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:03.657' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'B-100', N'会员管理', N'/Base/Member', NULL, N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, CAST(N'2018-04-25T21:36:28.533' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'60ae9382-31ab-4276-a379-d3876e9bb783', N'Z-110', N'角色管理', N'/Sys/Role', N'el-icon-s-custom', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:55.290' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'Z-150', N'修改密码', N'/Sys/ChangePassword', N'el-icon-edit', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:17:03.810' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'Z-160', N'操作日志', N'/Sys/AppLog', N'el-icon-s-order', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2019-07-08T21:15:41.870' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', N'B', N'基础信息', NULL, N'el-icon-coin', NULL, 1, CAST(N'2018-04-25T21:18:09.403' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9d7baf7d-36b0-4b3b-a5ad-064c8dfc8324', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-10-04T11:45:24.693' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'e2d0c07a-e74f-46f2-8991-113cd58c4785', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-10-05T12:03:14.793' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'0b81b937-fdc2-4a2c-90c4-11e9ddf3ba71', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-10-04T11:46:39.597' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8aaa6319-d36a-4fcd-8797-19d97a077e1b', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-10-04T18:02:42.420' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7f549d57-c5d3-4ad8-bc12-1e7c99ae4de5', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-10-04T11:46:25.953' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8c0bf314-fa41-40d3-8d8c-20f614dd078a', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-10-05T12:03:14.813' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'a49b958c-f00c-4c0d-b031-21190e5c74fa', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-04T18:02:15.790' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7e466377-1810-4027-ae1b-227f53953b21', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-10-04T18:02:42.450' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd32e240a-ab34-41a3-92fc-249dab655c3a', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-10-04T11:46:25.967' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'73caab90-ac89-4334-ae61-2b55f3d08826', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-10-04T11:46:26.313' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'c2a87999-032b-4066-90a7-2eafa8836a86', N'75efb1c6-79f3-49df-8b1f-3ec61455fe05', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-04T11:48:42.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'4a99997e-ef14-414b-94a6-2f480e5b2cd2', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-10-04T11:45:24.707' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'f134c325-eb68-498f-86b2-307c315eb8cc', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-10-04T11:46:39.613' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ed6454dc-3d01-47e2-86f3-40121f9c6976', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-10-04T11:43:47.617' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'92913243-421b-420d-9fbf-42d7db59aec9', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-04T11:45:24.723' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'397b5f2c-812e-431a-914d-43d318bc4242', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-10-04T11:43:47.630' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'6529e142-e4de-44a7-9acb-53df1796480c', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-10-04T11:45:24.737' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'1e827ff5-b7c8-43dd-b9ed-571d376b3dce', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-10-04T11:46:39.637' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'26cf07df-7c4b-4c59-b091-57479a28a8ac', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-10-04T11:45:24.757' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'540d4cfb-1b2f-4736-80ca-5a613642b5b4', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-10-05T12:03:14.833' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'c6dbd0f0-db95-4251-895b-6009239106cc', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-04T11:46:39.667' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ef36a4f2-a70e-4ae3-923b-609910127a33', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-10-05T12:03:14.853' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd72a7e1a-94a2-4d7c-ba13-6727398f8e35', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-10-04T11:46:26.367' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'5689b539-88db-49d2-8c5b-720e9ebc673e', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-10-04T18:02:42.470' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'b8aa1a54-9076-4c72-a323-7b3b95ab26f4', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-10-04T18:02:42.520' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'842d38fc-29a2-4a9e-8949-84d76fc6a259', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-05T12:03:14.870' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'afbd3366-4c4f-46b1-8f96-903cfe6f8a00', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-10-04T11:45:24.777' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'a3074d55-141e-496e-a55c-93b5fd2dce6c', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-04T18:02:42.543' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'e60670d2-4ade-449c-8a4b-9ad7d5179a43', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-04T11:46:26.400' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd6f2707f-70ab-45f0-9c57-9d11ee5078d2', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-10-04T11:43:47.643' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'2ab18520-ee93-40f1-8633-9f5b174ac14e', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-10-04T11:43:47.663' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'bb14769d-4760-4341-9faf-9fa82eeada65', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2018-06-28T11:30:09.723' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7861b618-0b12-4a56-abda-a5e8d17ac5d7', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2018-06-28T11:30:09.723' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd62f6c43-ae93-4d50-a6f0-b64c9cacec7b', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-10-05T12:03:14.890' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'f0a60dc3-46ad-4fac-9a28-bd05eb8f11d6', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-10-04T11:46:39.690' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ffd4aebd-6283-4c52-976b-c09b70f8034b', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-10-04T11:46:39.740' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd54498c9-e0a7-4cb2-859d-cb07d6826679', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-10-05T12:03:14.910' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'42fc1519-61c2-4501-bb4e-cd160bea87a5', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-10-04T11:45:24.790' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'30507f21-c866-4494-ae07-dae4d3906295', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-10-04T11:43:47.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9d079f5a-c791-4628-b0d6-e3f7c8580a08', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-10-04T11:46:26.420' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'fa162511-0213-4da2-9fbf-e5f45af5b7fc', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-10-05T12:03:14.933' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8b445869-735c-4582-8af1-ec41d78a58dd', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-10-04T11:46:39.760' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'77e34fe6-beb9-48f4-ad63-f03cb2f165d6', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-02T21:54:18.637' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'1c127383-0c46-44ac-8784-f8ae8a6dc390', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-10-04T11:43:47.700' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ca5601ec-7cd9-4577-a699-fc7c3c4c1308', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-10-04T11:46:26.437' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9bee8a50-35bc-4198-b172-ffa341b9bc6e', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-10-04T11:46:39.790' AS DateTime))
INSERT [dbo].[Sys_Number] ([Number_ID], [Number_Num], [Number_DataBase], [Number_TableName], [Number_NumField], [Number_CreateTime]) VALUES (N'b5fcc999-85b9-4dce-a3fc-64b43ef82f68', N'1', NULL, N'Member', N'Member_Num', CAST(N'2018-04-25T23:00:03.723' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'0003', N'销售', N'销售', 1, CAST(N'2019-08-10T16:17:34.393' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0001', N'超级管理员', N'拥有所有权限', 2, CAST(N'2016-06-20T10:20:10.073' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'0002', N'普通角色', NULL, 1, CAST(N'2016-07-06T17:59:20.527' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'279b14da-b891-40cc-8ff8-08c52e858d9a', N'00000000-0000-0000-0000-000000000000', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:42:04.127' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'9329908d-b13b-447b-9b72-0e5ed0269cb2', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.247' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'60e2be44-7390-4f1c-9729-2e1563c66f9e', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:44:20.150' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'3297e99a-6784-421b-9deb-34c94fd1e74e', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:44:20.057' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'ad04fdb0-0027-47c7-98a6-390b8547f527', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.240' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'1b892f44-5827-4053-9411-42cba317a683', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'c9518758-b2e1-4f51-b517-5282e273889c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'1d69e140-52da-4ab5-9f37-4eb5c93fda63', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'c9518758-b2e1-4f51-b517-5282e273889c', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', CAST(N'2019-08-31T17:01:02.247' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'3134f9c7-2af5-4ce1-924d-569eadcd29d6', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'c9518758-b2e1-4f51-b517-5282e273889c', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', CAST(N'2019-08-31T17:01:02.240' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'e7ee3d0c-6092-4502-ac8e-5da173ea4261', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:44:20.130' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'ec35eac0-12df-415b-a310-601411f06741', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.240' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'a8d66f27-bf3a-4fb2-99e6-60654e96584a', N'00000000-0000-0000-0000-000000000000', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:42:04.143' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'7bd4084e-3724-47f9-beba-7b83e4ae3db7', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', CAST(N'2019-08-31T17:11:11.000' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'ae47c840-aa8e-4701-b14a-7cb309513a35', N'00000000-0000-0000-0000-000000000000', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:42:04.177' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'6bf64e84-7d45-4309-a697-7eebe094b3fa', N'00000000-0000-0000-0000-000000000000', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:42:04.160' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'fa4586bc-abe8-4c39-a835-97c4f54548cd', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'84439325-3cd2-4b65-9e66-98727d41692d', N'00000000-0000-0000-0000-000000000000', N'c9518758-b2e1-4f51-b517-5282e273889c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:42:04.110' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'ee17f990-a624-4460-b620-9b917560376c', N'00000000-0000-0000-0000-000000000000', N'c9518758-b2e1-4f51-b517-5282e273889c', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', CAST(N'2019-10-04T17:41:39.670' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'f963c5c8-230a-4243-85ab-af3cb77194c0', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-10-04T17:44:20.110' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'da1dc78c-725f-4633-9964-c338214710ee', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'a7ac15d0-3bb9-418a-b624-c72310c7326c', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'67dac091-5e7f-4ba1-b859-f1726f3e828b', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', CAST(N'2019-10-04T17:46:46.893' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'管理员', N'admin', N'123456', N'1396510655@qq.com', 2, CAST(N'2017-04-06T19:55:53.083' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'430c10d5-827c-49a3-bcf5-7b20739dea7e', N'888', N'888', N'88', N'88', NULL, CAST(N'2019-09-28T12:21:39.640' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'39a1b8fb-8a30-4b57-9615-7f389206ab05', N'55566', N'555', N'555', N'555', NULL, CAST(N'2019-09-27T18:34:18.863' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', N'郝志颖', N'user', N'123', N'18123456789@live.com', NULL, CAST(N'2019-07-08T15:10:27.847' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'ae5ba4fd-2aa6-4fbc-88e0-197b496d307f', N'39a1b8fb-8a30-4b57-9615-7f389206ab05', N'bef1edb3-740d-4afc-bd2a-6e351444a894', CAST(N'2019-09-28T15:30:41.020' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'7e45e885-4e6d-4e59-af31-41ceef8e2ba5', N'430c10d5-827c-49a3-bcf5-7b20739dea7e', N'bef1edb3-740d-4afc-bd2a-6e351444a894', CAST(N'2019-09-29T10:32:20.910' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'277c8b50-3a40-4f64-ae3b-6201bf810327', N'39a1b8fb-8a30-4b57-9615-7f389206ab05', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2019-09-28T15:30:41.027' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'a5ef47f2-0d58-4193-af54-7aba7b768b60', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2019-09-27T20:49:44.587' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'32f50a0b-a28d-4ed1-bd06-cd39eee80e6c', N'430c10d5-827c-49a3-bcf5-7b20739dea7e', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2019-09-29T10:32:20.920' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'4b678497-e71a-4cd8-8fd8-d385c30aa0ca', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2019-09-29T22:25:02.483' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'9bbdd711-40b6-4347-996d-dea73ca98615', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'bef1edb3-740d-4afc-bd2a-6e351444a894', CAST(N'2019-09-29T22:25:02.847' AS DateTime))
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Member_ID]  DEFAULT (newid()) FOR [Member_ID]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Member_CreateTime]  DEFAULT (getdate()) FOR [Member_CreateTime]
GO
ALTER TABLE [dbo].[Sys_AppLog] ADD  CONSTRAINT [DF_Sys_AppLog_AppLog_ID]  DEFAULT (newid()) FOR [AppLog_ID]
GO
ALTER TABLE [dbo].[Sys_AppLog] ADD  CONSTRAINT [DF_Sys_AppLog_AppLog_CreateTime]  DEFAULT (getdate()) FOR [AppLog_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Function] ADD  CONSTRAINT [DF_Sys_Function_Function_ID]  DEFAULT (newid()) FOR [Function_ID]
GO
ALTER TABLE [dbo].[Sys_Function] ADD  CONSTRAINT [DF_Sys_Function_Function_CreateTime]  DEFAULT (getdate()) FOR [Function_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Menu] ADD  CONSTRAINT [DF_Sys_Menu_Menu_ID]  DEFAULT (newid()) FOR [Menu_ID]
GO
ALTER TABLE [dbo].[Sys_Menu] ADD  CONSTRAINT [DF_Sys_Menu_Menu_CreateTime]  DEFAULT (getdate()) FOR [Menu_CreateTime]
GO
ALTER TABLE [dbo].[Sys_MenuFunction] ADD  CONSTRAINT [DF_Sys_MenuFunction_MenuFunction_ID]  DEFAULT (newid()) FOR [MenuFunction_ID]
GO
ALTER TABLE [dbo].[Sys_MenuFunction] ADD  CONSTRAINT [DF_Sys_MenuFunction_MenuFunction_CreateTime]  DEFAULT (getdate()) FOR [MenuFunction_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Number] ADD  CONSTRAINT [DF_Sys_Number_Number_ID]  DEFAULT (newid()) FOR [Number_ID]
GO
ALTER TABLE [dbo].[Sys_Number] ADD  CONSTRAINT [DF_Sys_Number_Number_CreateTime]  DEFAULT (getdate()) FOR [Number_CreateTime]
GO
ALTER TABLE [dbo].[Sys_Role] ADD  CONSTRAINT [DF_Sys_Role_Role_ID]  DEFAULT (newid()) FOR [Role_ID]
GO
ALTER TABLE [dbo].[Sys_Role] ADD  CONSTRAINT [DF_Sys_Role_Role_CreateTime]  DEFAULT (getdate()) FOR [Role_CreateTime]
GO
ALTER TABLE [dbo].[Sys_RoleMenuFunction] ADD  CONSTRAINT [DF_Sys_RoleMenuFunction_RoleMenuFunction_ID]  DEFAULT (newid()) FOR [RoleMenuFunction_ID]
GO
ALTER TABLE [dbo].[Sys_RoleMenuFunction] ADD  CONSTRAINT [DF_Sys_RoleMenuFunction_RoleMenuFunction_CreateTime]  DEFAULT (getdate()) FOR [RoleMenuFunction_CreateTime]
GO
ALTER TABLE [dbo].[Sys_User] ADD  CONSTRAINT [DF_Sys_User_User_ID]  DEFAULT (newid()) FOR [User_ID]
GO
ALTER TABLE [dbo].[Sys_User] ADD  CONSTRAINT [DF_Sys_User_User_CreateTime]  DEFAULT (getdate()) FOR [User_CreateTime]
GO
ALTER TABLE [dbo].[Sys_UserRole] ADD  CONSTRAINT [DF_Sys_UserRole_UserRole_ID]  DEFAULT (newid()) FOR [UserRole_ID]
GO
ALTER TABLE [dbo].[Sys_UserRole] ADD  CONSTRAINT [DF_Sys_UserRole_UserRole_CreateTime]  DEFAULT (getdate()) FOR [UserRole_CreateTime]
GO
ALTER TABLE [dbo].[Sys_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserRole_Sys_User] FOREIGN KEY([UserRole_UserID])
REFERENCES [dbo].[Sys_User] ([User_ID])
GO
ALTER TABLE [dbo].[Sys_UserRole] CHECK CONSTRAINT [FK_Sys_UserRole_Sys_User]
GO
/****** Object:  StoredProcedure [dbo].[PROC_SPLITPAGE]    Script Date: 2019/10/12 18:59:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------系统的--------------
CREATE  PROCEDURE [dbo].[PROC_SPLITPAGE]
    @SQL text,--varchar(8000),         --要执行的SQL语句
    @PAGE INT = 1,              --要显示的页码
    @PAGESIZE INT,              --每页的大小
    @PAGECOUNT INT = 0 OUT,     --总页数
    @RECORDCOUNT INT = 0 OUT    --总记录数
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @P1 INT

    EXEC SP_CURSOROPEN @P1 OUTPUT, @SQL, @SCROLLOPT = 1, @CCOPT = 1, @ROWCOUNT = @PAGECOUNT OUTPUT

    SET @RECORDCOUNT = @PAGECOUNT

    SELECT @PAGECOUNT=
        CEILING(1.0 * @PAGECOUNT / @PAGESIZE) , @PAGE = (@PAGE-1) * @PAGESIZE + 1

    EXEC SP_CURSORFETCH @P1, 16, @PAGE, @PAGESIZE 

    EXEC SP_CURSORCLOSE @P1
END





GO
