USE [HzyAdminDB]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_AppLog]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_Function]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_MenuFunction]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_Number]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_RoleMenuFunction]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2019/9/24 19:41:07 ******/
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
/****** Object:  Table [dbo].[Sys_UserRole]    Script Date: 2019/9/24 19:41:07 ******/
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
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ea411c02-37d1-493c-be4d-0528fbfc9fbb', N'/Admin/Role/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["1"]}', CAST(N'2019-08-10T16:17:43.040' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6b2e26e8-232c-4604-a826-05f51248e07e', N'/Admin/User/Index', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:06.440' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'42bb5fd2-bb7b-4711-82a5-0a5bae2fea4d', N'/Admin/User/Index', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:42.600' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'f99aed86-9b9f-4ee7-98f4-0e30b099b935', N'/Admin/User/Info?formKey=ac18f496-e93d-42f0-b59e-e321acc85335', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:44.870' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6bc8e176-a543-4f23-8b12-12e38f472fcb', N'/Admin/Member/GetDataSource', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"Member_Name":[""],"User_Name":[""]}', CAST(N'2019-08-10T16:16:44.703' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd43d9694-0203-4010-8d1f-16926c6fb83b', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["1"]}', CAST(N'2019-08-10T16:18:42.913' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'77fb16d7-8d12-45a1-9feb-19689063cd1e', N'/Admin/Role/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["1"]}', CAST(N'2019-08-10T16:18:48.513' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'fac28c47-03cd-4cdd-8238-1c118b9c02ae', N'/Admin/Login/Check', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"UserName":["user"],"UserPassword":["123"],"LoginCode":[""]}', CAST(N'2019-08-10T16:16:41.180' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'9c97e490-a02b-44b7-b3ec-1d4e34d0c09f', N'/Admin/User/Index', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:38.903' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a6471c97-9f31-45d2-94d7-2124f7ad3c1b', N'/Admin/Home/Main/', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:03.817' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3cf98038-8bd0-4b8b-b9fb-24e54f6bc423', N'/Admin/Home/', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:04.330' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6a9aeacd-ede8-450a-bc6f-277215699a82', N'/Admin/Member/Index', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:16:44.587' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd4103267-82c3-4e61-85b0-2e2d50b80bce', N'/Admin/RoleFunction/Save', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Sys_RoleMenuFunctionList[0][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[0][RoleMenuFunction_FunctionID]":["c9518758-b2e1-4f51-b517-5282e273889c"],"Sys_RoleMenuFunctionList[0][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[1][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[1][RoleMenuFunction_FunctionID]":["bffefb1c-8988-4ddf-b4ac-81c2b30e80cd"],"Sys_RoleMenuFunctionList[1][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[2][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[2][RoleMenuFunction_FunctionID]":["e7ef2a05-8317-41c3-b588-99519fe88bf9"],"Sys_RoleMenuFunctionList[2][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[3][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[3][RoleMenuFunction_FunctionID]":["f27ecb0a-197d-47b1-b243-59a8c71302bf"],"Sys_RoleMenuFunctionList[3][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[4][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[4][RoleMenuFunction_FunctionID]":["383e7ee2-7690-46ac-9230-65155c84aa30"],"Sys_RoleMenuFunctionList[4][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[5][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[5][RoleMenuFunction_FunctionID]":["9c388461-2704-4c5e-a729-72c17e9018e1"],"Sys_RoleMenuFunctionList[5][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[6][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[6][RoleMenuFunction_FunctionID]":["2401f4d0-60b0-4e2e-903f-84c603373572"],"Sys_RoleMenuFunctionList[6][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[7][RoleMenuFunction_RoleID]":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"],"Sys_RoleMenuFunctionList[7][RoleMenuFunction_FunctionID]":["b6fd5425-504a-46a9-993b-2f8dc9158eb8"],"Sys_RoleMenuFunctionList[7][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"RoleId":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"]}', CAST(N'2019-08-10T16:16:28.330' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a942a918-a2b7-4cd8-8b71-2ed5009fe19f', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"User_Name":[""],"User_LoginName":[""]}', CAST(N'2019-08-10T16:18:54.727' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a2570bdd-b11b-4d15-adbd-33892cdcb4d0', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"]}', CAST(N'2019-08-10T16:18:58.220' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'86f2cb1a-ea3c-490c-9985-34eec506879f', N'/Admin/User/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["ac18f496-e93d-42f0-b59e-e321acc85335"]}', CAST(N'2019-08-10T16:18:50.927' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'f42bfca1-c1fb-4b5a-8286-3c94c59cb187', N'/Admin/RoleFunction/Save', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"Sys_RoleMenuFunctionList[0][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[0][RoleMenuFunction_FunctionID]":["c9518758-b2e1-4f51-b517-5282e273889c"],"Sys_RoleMenuFunctionList[0][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[1][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[1][RoleMenuFunction_FunctionID]":["bffefb1c-8988-4ddf-b4ac-81c2b30e80cd"],"Sys_RoleMenuFunctionList[1][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[2][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[2][RoleMenuFunction_FunctionID]":["e7ef2a05-8317-41c3-b588-99519fe88bf9"],"Sys_RoleMenuFunctionList[2][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[3][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[3][RoleMenuFunction_FunctionID]":["f27ecb0a-197d-47b1-b243-59a8c71302bf"],"Sys_RoleMenuFunctionList[3][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[4][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[4][RoleMenuFunction_FunctionID]":["383e7ee2-7690-46ac-9230-65155c84aa30"],"Sys_RoleMenuFunctionList[4][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[5][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[5][RoleMenuFunction_FunctionID]":["9c388461-2704-4c5e-a729-72c17e9018e1"],"Sys_RoleMenuFunctionList[5][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[6][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[6][RoleMenuFunction_FunctionID]":["2401f4d0-60b0-4e2e-903f-84c603373572"],"Sys_RoleMenuFunctionList[6][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"Sys_RoleMenuFunctionList[7][RoleMenuFunction_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_RoleMenuFunctionList[7][RoleMenuFunction_FunctionID]":["b6fd5425-504a-46a9-993b-2f8dc9158eb8"],"Sys_RoleMenuFunctionList[7][RoleMenuFunction_MenuID]":["7c34c2fd-98ed-4655-aa04-bb00b915a751"],"RoleId":["bef1edb3-740d-4afc-bd2a-6e351444a894"]}', CAST(N'2019-08-10T16:19:12.090' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3263bc24-1f2a-4268-b5d6-3cbcf6a541f0', N'/Admin/Role/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"Role_Name":[""],"?findback":["1"]}', CAST(N'2019-08-10T16:18:48.570' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'f26fa03e-13ce-4d77-9c45-3d23bc99889e', N'/Admin/User/Info?formKey=ac18f496-e93d-42f0-b59e-e321acc85335', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:49.743' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ecc032a5-1201-43c4-8ea6-48f2f305a540', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"User_Name":[""],"User_LoginName":[""]}', CAST(N'2019-08-10T16:18:52.363' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'bb788771-ee0e-4fe9-90b1-49de3a4d2602', N'/Admin/Role/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["bef1edb3-740d-4afc-bd2a-6e351444a894"]}', CAST(N'2019-08-10T16:17:34.413' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'76deb8fa-f7f8-408c-9cc7-4c002a950af0', N'/Admin/Role/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"Role_Name":[""]}', CAST(N'2019-08-10T16:17:35.567' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3ba2d8c2-4c70-4a1e-aac0-4e0467643043', N'/Admin/User/Info?formKey=ac18f496-e93d-42f0-b59e-e321acc85335', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:53.213' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'aadf4ce8-c2ae-4750-9e84-4e7b066f7119', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["40ff1844-c099-4061-98e0-cd6e544fcfd3"]}', CAST(N'2019-08-10T16:16:30.210' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'85613741-a1e7-4a33-85b3-4e87808274c4', N'/Admin/Role/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["bef1edb3-740d-4afc-bd2a-6e351444a894"]}', CAST(N'2019-08-10T16:17:34.410' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'b275c8b7-c23c-40f1-93dc-5498630d4d76', N'/Admin/User/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["ac18f496-e93d-42f0-b59e-e321acc85335"]}', CAST(N'2019-08-10T16:17:49.913' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'895e3a28-d03d-4660-b95f-55476705a073', N'/Admin/Role/Info?formKey=', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:06.883' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'79fc55d6-cf25-4e9b-976d-576ea3431473', N'/Admin/Home/Main/', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:16:41.277' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'24d34207-a980-4758-a7a8-5d38bd1b93cb', N'/Admin/RoleFunction/Save', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"RoleId":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"]}', CAST(N'2019-08-10T16:19:08.780' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'312720b7-a5e7-4629-b7a8-6023af070b5f', N'/Admin/Home/Connetct', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:03.820' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'0090e43d-27a6-4931-80a5-6317ed8e40c2', N'/Admin/User/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["ac18f496-e93d-42f0-b59e-e321acc85335"]}', CAST(N'2019-08-10T16:16:08.597' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd6944d89-a927-48d8-9638-63c051e5e05a', N'/Admin/Member/GetDataSource', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'{"rows":["1"]}', CAST(N'2019-08-10T16:16:44.663' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'b997b430-f686-4f3d-8058-6eebc26ee9ae', N'/Admin/Home/', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:42.080' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'0cad18c9-92f5-40de-9d45-754dec9910de', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["1"]}', CAST(N'2019-08-10T16:17:38.983' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'0b452983-3b0e-4a59-8bc0-7f76090e6ccc', N'/Admin/Home/Main/', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:19:16.967' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6d590f85-5f6d-433e-ad30-7f880680f006', N'/Admin/User/Save', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"formKey":["ac18f496-e93d-42f0-b59e-e321acc85335"],"User_ID":["ac18f496-e93d-42f0-b59e-e321acc85335"],"User_Name":["用户1"],"User_LoginName":["user"],"User_Pwd":["123"],"User_Email":["18123456789@live.com"],"User_IsDelete":[""],"User_CreateTime":["2019-07-08 15:10:27"],"Role_ID":[""],"Role_Num":[""],"Role_Name":[""],"Role_Remark":[""],"Role_IsDelete":[""],"Role_CreateTime":[""],"Sys_UserRoleList[0][UserRole_ID]":["4b678497-e71a-4cd8-8fd8-d385c30aa0ca"],"Sys_UserRoleList[0][UserRole_UserID]":["ac18f496-e93d-42f0-b59e-e321acc85335"],"Sys_UserRoleList[0][UserRole_RoleID]":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"Sys_UserRoleList[0][UserRole_CreateTime]":["2019-08-10 16:00:18"],"Sys_UserRoleList[0][Role_Name]":["普通用户"],"Sys_UserRoleList[1][UserRole_ID]":["9bbdd711-40b6-4347-996d-dea73ca98615"],"Sys_UserRoleList[1][UserRole_UserID]":["ac18f496-e93d-42f0-b59e-e321acc85335"],"Sys_UserRoleList[1][UserRole_RoleID]":["bef1edb3-740d-4afc-bd2a-6e351444a894"],"Sys_UserRoleList[1][UserRole_CreateTime]":["2019-08-10 16:00:18"],"Sys_UserRoleList[1][Role_Name]":["销售"]}', CAST(N'2019-08-10T16:18:50.890' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'340e6756-f2e0-4a76-a1b3-819badbecf9f', N'/', N'127.0.0.1', N'00000000-0000-0000-0000-000000000000', N'', CAST(N'2019-08-10T16:16:02.413' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd740b0b8-61c3-49b3-b594-83be5b1c5112', N'/Admin/Role?findback=1', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:42.990' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'aa9ea60f-a1a8-4c0c-8687-88ab30ecfff8', N'/Admin/Home/', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:03.750' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'59595120-4ead-49d1-8fc4-88dde6505a87', N'/Admin/User/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["ac18f496-e93d-42f0-b59e-e321acc85335"]}', CAST(N'2019-08-10T16:18:53.290' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'bd381e9e-c56a-4d4c-b888-892bc93d7863', N'/Admin/User/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["ac18f496-e93d-42f0-b59e-e321acc85335"]}', CAST(N'2019-08-10T16:18:46.227' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c9cad93e-9f88-46c3-900b-8c5324a1c655', N'/Admin/User/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":["ac18f496-e93d-42f0-b59e-e321acc85335"]}', CAST(N'2019-08-10T16:17:40.663' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'e9020413-837f-4fc9-b6ba-928fdd01f1de', N'/Admin/Home/', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:19:16.860' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'bd5cd971-3640-4734-9849-92c4b9d8d474', N'/Admin/Home/Connetct', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:03.810' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'471eb365-024f-48bd-93c7-940d06b2216a', N'/Admin/Login/', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:17:02.447' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ec822273-79f6-4fe7-ac09-9468ceaecbc8', N'/Admin/RoleFunction/Index', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:12.910' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6ca1e944-5803-46d4-bd10-95a215bfda6f', N'/Admin/RoleFunction/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:13.063' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'794996cb-b9b8-459c-a494-97cb6537a4f5', N'/Admin/Login/Check', N'127.0.0.1', N'00000000-0000-0000-0000-000000000000', N'{"UserName":["admin"],"UserPassword":["123456"],"LoginCode":[""]}', CAST(N'2019-08-10T16:16:04.133' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1b84269a-e072-4e15-a348-984685a60aaf', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["1"]}', CAST(N'2019-08-10T16:16:06.543' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'452dd2be-8f88-4253-9dc3-9985044950bc', N'/Admin/RoleFunction/Index', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:58.120' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a12c5779-ce7f-44b8-8288-9cd70425e018', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"]}', CAST(N'2019-08-10T16:16:13.090' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'90522aad-411e-42ee-94e6-a16b19dc9b28', N'/Admin/Role/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"Role_Name":[""]}', CAST(N'2019-08-10T16:17:05.820' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'f5876e5b-cae4-4613-9115-a16fa6436850', N'/Admin/Login/', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:19:22.373' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'7ab390e8-9526-4869-bc69-a2ca2bb65f6c', N'/Admin/Login/Check', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"UserName":["user"],"UserPassword":["123"],"LoginCode":[""]}', CAST(N'2019-08-10T16:19:16.843' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8afdbd64-a14e-4a11-a106-a7de974ba83c', N'/Admin/User/Info?formKey=ac18f496-e93d-42f0-b59e-e321acc85335', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:40.560' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'b0950db8-209c-4ec9-92bc-a940ec3437a8', N'/Admin/Home/', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:16:41.197' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'2afd7e61-8e20-4127-8a48-a9899fd35225', N'/Admin/Role/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["1"]}', CAST(N'2019-08-10T16:17:05.793' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'9ce870e7-d77e-42a9-8f60-ade82f78ef64', N'/Admin/Role?findback=1', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:48.420' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'07931ba9-2398-48eb-9d74-aea63d0f5c67', N'/Admin/Login/Check', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'{"UserName":["admin"],"UserPassword":["123456"],"LoginCode":[""]}', CAST(N'2019-08-10T16:17:03.730' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8bb4c24a-1b93-4523-9b34-b4fef5e48321', N'/Admin/Role/Index', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:17:05.707' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'93a25a36-fbd6-4c19-831f-b58ec433be5d', N'/Admin/Home/Connetct', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:16:41.267' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a4fbacbf-6b6f-41ea-b200-b7ed0d79561b', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"]}', CAST(N'2019-08-10T16:16:28.390' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'13fe47cf-b0e6-4cf4-bde2-b94ecb3b04a7', N'/Admin/Home/Main/', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:04.460' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'ebc3f2fb-c9b2-4940-abc6-ba5f675ba724', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"]}', CAST(N'2019-08-10T16:19:08.793' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'500c887c-2219-4b09-8dd1-bae71b646c5c', N'/Admin/Home/Connetct', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:42.583' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'd1229fb0-1715-4295-bdcd-baebb209e8c9', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["bef1edb3-740d-4afc-bd2a-6e351444a894"]}', CAST(N'2019-08-10T16:18:59.723' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'8b8afd08-97e5-49b9-b726-c06e7acf2345', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"User_Name":[""],"User_LoginName":[""]}', CAST(N'2019-08-10T16:18:42.960' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'450a03f1-bb03-471c-9445-c353e97e83fd', N'/Admin/Role/Save', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"formKey":[""],"Role_ID":["00000000-0000-0000-0000-000000000000"],"Role_Num":["0003"],"Role_Name":["销售"],"Role_Remark":["销售"],"Role_IsDelete":["2"],"Role_CreateTime":[""]}', CAST(N'2019-08-10T16:17:34.383' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'a263fc17-82c0-4cb8-bebb-c493a2ca87a0', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["bef1edb3-740d-4afc-bd2a-6e351444a894"]}', CAST(N'2019-08-10T16:19:09.793' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'92a41d89-cb33-4d4d-aa44-c5224ef7b530', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"User_Name":[""],"User_LoginName":[""]}', CAST(N'2019-08-10T16:17:39.100' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'1d20f1d4-94a7-4328-8f00-d2c389604291', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["bef1edb3-740d-4afc-bd2a-6e351444a894"]}', CAST(N'2019-08-10T16:19:12.110' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'36664c20-5805-4685-8185-d34c1a35325f', N'/Admin/Role/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"ID":[""]}', CAST(N'2019-08-10T16:17:06.957' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'31affea9-272d-4bf5-ab90-d5ba2f46349e', N'/Admin/RoleFunction/GetRoleMenuFunctionTree', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"roleid":["18fa4771-6f58-46a3-80d2-6f0f5e9972e3"]}', CAST(N'2019-08-10T16:19:03.500' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'04119ac3-ab2a-4b44-8bd2-e3a62fa03668', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"User_Name":[""],"User_LoginName":[""]}', CAST(N'2019-08-10T16:17:48.940' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c5c849b6-8b34-4088-bf67-e72a87121645', N'/Admin/Home/Connetct', N'127.0.0.1', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'', CAST(N'2019-08-10T16:19:16.957' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'e05597b6-652d-46eb-b659-eb05cc169dac', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"User_Name":[""],"User_LoginName":[""]}', CAST(N'2019-08-10T16:16:11.377' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3f7274f8-3f5e-47a0-b0d7-ec95fb683ddb', N'/Admin/User/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"User_Name":[""],"User_LoginName":[""]}', CAST(N'2019-08-10T16:16:06.620' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'6c386f55-0e3c-471c-b577-ee70953b6456', N'/Admin/Login/', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:19:13.240' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'41155b2a-4386-4300-9944-ee78e9ecf110', N'/Admin/Home/Connetct', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:04.437' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'2882ae6b-57b0-49a7-bb36-f0246efe24d4', N'/Admin/Role/GetDataSource', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'{"rows":["20"],"page":["1"],"sortName":[""],"sortOrder":["asc"],"Role_Name":[""],"?findback":["1"]}', CAST(N'2019-08-10T16:17:43.113' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'64f3ead8-9eaa-4856-9c8e-f2ac591c6e65', N'/Admin/User/Info?formKey=ac18f496-e93d-42f0-b59e-e321acc85335', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:08.513' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'c7d7c614-684e-4df6-9423-f590d7c1fb81', N'/Admin/Login/', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:16:36.210' AS DateTime))
INSERT [dbo].[Sys_AppLog] ([AppLog_ID], [AppLog_Api], [AppLog_IP], [AppLog_UserID], [AppLog_Parameter], [AppLog_CreateTime]) VALUES (N'3deb77cd-3c62-4c3b-9752-f6e1e8d33dd3', N'/Admin/RoleFunction/LoadForm', N'127.0.0.1', N'0198459e-2034-4533-b843-5d227ad20740', N'', CAST(N'2019-08-10T16:18:58.207' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', N'80', N'打印', N'Print', CAST(N'2016-06-20T13:40:36.787' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', N'10', N'能否拥有该菜单', N'Have', CAST(N'2016-06-20T13:40:29.657' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'60', N'检索', N'Search', CAST(N'2017-02-16T17:06:23.430' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', N'50', N'保存', N'Save', CAST(N'2017-04-22T13:51:52.837' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', N'40', N'删除', N'Delete', CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'20', N'添加', N'Add', CAST(N'2016-06-20T13:40:36.787' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', N'70', N'导出', N'GetExcel', CAST(N'2017-02-09T16:34:14.017' AS DateTime))
INSERT [dbo].[Sys_Function] ([Function_ID], [Function_Num], [Function_Name], [Function_ByName], [Function_CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'30', N'修改', N'Edit', CAST(N'2016-06-20T13:40:43.153' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'4ce21a81-1cae-44d2-b29e-07058ff04b3e', N'Z-160', N'代码创建', N'/Admin/CreateCode/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:17:32.723' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'Z-130', N'菜单功能', N'/Admin/MenuFunction/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:33.997' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'd721fc55-2174-40eb-bb37-5c54a158525a', N'Z-120', N'功能管理', N'/Admin/Function/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:21.087' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'9591f249-1471-44f7-86b5-6fdae8b93888', N'Z', N'系统管理', NULL, N'el-icon-monitor', NULL, 1, CAST(N'2018-03-10T12:16:38.890' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'Z-100', N'用户管理', N'/Admin/User/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:03.657' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'bd024f3a-99a7-4407-861c-a016f243f222', N'Z-140', N'角色功能', N'/Admin/RoleFunction/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:46.617' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'A-100', N'会员管理', N'/Admin/Member/Index', NULL, N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, CAST(N'2018-04-25T21:36:28.533' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'60ae9382-31ab-4276-a379-d3876e9bb783', N'Z-110', N'角色管理', N'/Admin/Role/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:18:55.290' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'Z-150', N'修改密码', N'/Admin/ChangePwd/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2018-03-10T12:17:03.810' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'Z-170', N'操作日志', N'/Admin/AppLog/Index', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, CAST(N'2019-07-08T21:15:41.870' AS DateTime))
INSERT [dbo].[Sys_Menu] ([Menu_ID], [Menu_Num], [Menu_Name], [Menu_Url], [Menu_Icon], [Menu_ParentID], [Menu_IsShow], [Menu_CreateTime]) VALUES (N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', N'A', N'基础信息', NULL, N'el-icon-coin', NULL, 1, CAST(N'2018-04-25T21:18:09.403' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9d7baf7d-36b0-4b3b-a5ad-064c8dfc8324', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T18:37:14.633' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'e2d0c07a-e74f-46f2-8991-113cd58c4785', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:21:32.810' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'0b81b937-fdc2-4a2c-90c4-11e9ddf3ba71', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-11T10:22:14.937' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8aaa6319-d36a-4fcd-8797-19d97a077e1b', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'cfc06085-563d-488d-807a-1b766180eff9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T18:37:25.673' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7f549d57-c5d3-4ad8-bc12-1e7c99ae4de5', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8c0bf314-fa41-40d3-8d8c-20f614dd078a', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'a49b958c-f00c-4c0d-b031-21190e5c74fa', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2018-04-22T15:47:38.933' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7e466377-1810-4027-ae1b-227f53953b21', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd32e240a-ab34-41a3-92fc-249dab655c3a', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'73caab90-ac89-4334-ae61-2b55f3d08826', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:21:54.007' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'4a99997e-ef14-414b-94a6-2f480e5b2cd2', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T18:37:14.637' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'f134c325-eb68-498f-86b2-307c315eb8cc', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:22:14.940' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ed6454dc-3d01-47e2-86f3-40121f9c6976', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-08T18:37:25.670' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'92913243-421b-420d-9fbf-42d7db59aec9', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T18:37:14.627' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'397b5f2c-812e-431a-914d-43d318bc4242', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T18:37:25.667' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'6529e142-e4de-44a7-9acb-53df1796480c', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-08T18:37:14.630' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'1e827ff5-b7c8-43dd-b9ed-571d376b3dce', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:22:14.940' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'26cf07df-7c4b-4c59-b091-57479a28a8ac', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-08T18:37:14.630' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'540d4cfb-1b2f-4736-80ca-5a613642b5b4', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'c6dbd0f0-db95-4251-895b-6009239106cc', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:22:14.937' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ef36a4f2-a70e-4ae3-923b-609910127a33', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd72a7e1a-94a2-4d7c-ba13-6727398f8e35', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'5689b539-88db-49d2-8c5b-720e9ebc673e', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'b8aa1a54-9076-4c72-a323-7b3b95ab26f4', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'842d38fc-29a2-4a9e-8949-84d76fc6a259', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:21:32.803' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'afbd3366-4c4f-46b1-8f96-903cfe6f8a00', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T18:37:14.633' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'a3074d55-141e-496e-a55c-93b5fd2dce6c', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T21:15:57.680' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'e60670d2-4ade-449c-8a4b-9ad7d5179a43', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:21:54.003' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd6f2707f-70ab-45f0-9c57-9d11ee5078d2', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T18:37:25.670' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'2ab18520-ee93-40f1-8633-9f5b174ac14e', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-08T18:37:25.667' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'bb14769d-4760-4341-9faf-9fa82eeada65', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2018-06-28T11:30:09.723' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'7861b618-0b12-4a56-abda-a5e8d17ac5d7', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2018-06-28T11:30:09.723' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'0b9170f7-e444-49a2-9f0c-a7e02ea1c33e', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd62f6c43-ae93-4d50-a6f0-b64c9cacec7b', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:21:32.807' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'f0a60dc3-46ad-4fac-9a28-bd05eb8f11d6', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:22:14.947' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ffd4aebd-6283-4c52-976b-c09b70f8034b', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:22:14.947' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'd54498c9-e0a7-4cb2-859d-cb07d6826679', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-11T10:21:32.803' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'42fc1519-61c2-4501-bb4e-cd160bea87a5', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T18:37:14.630' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'259c0396-8390-4632-be02-d02dc1c17123', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2018-07-31T13:51:51.553' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'30507f21-c866-4494-ae07-dae4d3906295', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T18:37:25.673' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9d079f5a-c791-4628-b0d6-e3f7c8580a08', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:21:54.010' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'fa162511-0213-4da2-9fbf-e5f45af5b7fc', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:21:32.810' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'8b445869-735c-4582-8af1-ec41d78a58dd', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:22:14.943' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'1c127383-0c46-44ac-8784-f8ae8a6dc390', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T18:37:25.667' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'ca5601ec-7cd9-4577-a699-fc7c3c4c1308', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-11T10:21:54.003' AS DateTime))
INSERT [dbo].[Sys_MenuFunction] ([MenuFunction_ID], [MenuFunction_MenuID], [MenuFunction_FunctionID], [MenuFunction_CreateTime]) VALUES (N'9bee8a50-35bc-4198-b172-ffa341b9bc6e', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:22:14.943' AS DateTime))
INSERT [dbo].[Sys_Number] ([Number_ID], [Number_Num], [Number_DataBase], [Number_TableName], [Number_NumField], [Number_CreateTime]) VALUES (N'b5fcc999-85b9-4dce-a3fc-64b43ef82f68', N'1', NULL, N'Member', N'Member_Num', CAST(N'2018-04-25T23:00:03.723' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'0003', N'销售', N'销售', 2, CAST(N'2019-08-10T16:17:34.393' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0001', N'超级管理员', N'拥有所有权限', 2, CAST(N'2016-06-20T10:20:10.073' AS DateTime))
INSERT [dbo].[Sys_Role] ([Role_ID], [Role_Num], [Role_Name], [Role_Remark], [Role_IsDelete], [Role_CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'0002', N'普通用户', NULL, 1, CAST(N'2016-07-06T17:59:20.527' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'9329908d-b13b-447b-9b72-0e5ed0269cb2', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.247' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'ad04fdb0-0027-47c7-98a6-390b8547f527', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.240' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'1b892f44-5827-4053-9411-42cba317a683', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'c9518758-b2e1-4f51-b517-5282e273889c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'1d69e140-52da-4ab5-9f37-4eb5c93fda63', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'c9518758-b2e1-4f51-b517-5282e273889c', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', CAST(N'2019-08-31T17:01:02.247' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'3134f9c7-2af5-4ce1-924d-569eadcd29d6', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'c9518758-b2e1-4f51-b517-5282e273889c', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', CAST(N'2019-08-31T17:01:02.240' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'ec35eac0-12df-415b-a310-601411f06741', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.240' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'7bd4084e-3724-47f9-beba-7b83e4ae3db7', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', CAST(N'2019-08-31T17:11:11.000' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'88e3ebed-7ca5-424c-aebd-7d96cf61fa18', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:11:10.997' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'9c942e85-4c79-4f9a-8e34-8dca70d82d28', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'c9518758-b2e1-4f51-b517-5282e273889c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:11:10.997' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'fa4586bc-abe8-4c39-a835-97c4f54548cd', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'35547e69-7859-4889-bba5-a85c3f70406c', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:11:10.997' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'c95c8d1f-cbd0-48c1-b7dc-be96c1f219b8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:11:11.000' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'da1dc78c-725f-4633-9964-c338214710ee', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'2401f4d0-60b0-4e2e-903f-84c603373572', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'a7ac15d0-3bb9-418a-b624-c72310c7326c', N'bef1edb3-740d-4afc-bd2a-6e351444a894', N'9c388461-2704-4c5e-a729-72c17e9018e1', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:01:02.243' AS DateTime))
INSERT [dbo].[Sys_RoleMenuFunction] ([RoleMenuFunction_ID], [RoleMenuFunction_RoleID], [RoleMenuFunction_FunctionID], [RoleMenuFunction_MenuID], [RoleMenuFunction_CreateTime]) VALUES (N'f416cbf4-48b7-44a6-bb1b-e4bd101ce304', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'383e7ee2-7690-46ac-9230-65155c84aa30', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', CAST(N'2019-08-31T17:11:11.000' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'管理员', N'admin', N'123456', N'1396510655@qq.com', 2, CAST(N'2017-04-06T19:55:53.083' AS DateTime))
INSERT [dbo].[Sys_User] ([User_ID], [User_Name], [User_LoginName], [User_Pwd], [User_Email], [User_IsDelete], [User_CreateTime]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', N'用户1', N'user', N'123', N'18123456789@live.com', NULL, CAST(N'2019-07-08T15:10:27.847' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'a5ef47f2-0d58-4193-af54-7aba7b768b60', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2018-12-12T11:36:46.700' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'4b678497-e71a-4cd8-8fd8-d385c30aa0ca', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2019-08-10T16:18:50.913' AS DateTime))
INSERT [dbo].[Sys_UserRole] ([UserRole_ID], [UserRole_UserID], [UserRole_RoleID], [UserRole_CreateTime]) VALUES (N'9bbdd711-40b6-4347-996d-dea73ca98615', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'bef1edb3-740d-4afc-bd2a-6e351444a894', CAST(N'2019-08-10T16:18:50.913' AS DateTime))
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
/****** Object:  StoredProcedure [dbo].[GetNumber]    Script Date: 2019/9/24 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetNumber]
	@numfield varchar(50),--varchar(8000),         --字段名
    @tablename varchar(50)              --表名
AS
BEGIN
	DECLARE @Number int = 0
	select @Number=Number_Num from Sys_Number where Number_TableName=@tablename and Number_NumField=@numfield
    IF @Number=0 BEGIN
		insert into Sys_Number(Number_TableName,Number_NumField,Number_Num) values(@tablename,@numfield,1)
		select 1
	END
	ELSE BEGIN
		update Sys_Number set Number_Num = @Number +1 where Number_TableName=@tablename and Number_NumField=@numfield
		select (@Number +1)
	END
END





GO
/****** Object:  StoredProcedure [dbo].[PROC_SPLITPAGE]    Script Date: 2019/9/24 19:41:08 ******/
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
