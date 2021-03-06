USE [UniversityData]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[DeptId] [int] IDENTITY(200,1) NOT NULL,
	[DeptName] [varchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (200, N'faculty')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (201, N'IT')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (202, N'Hr')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (203, N'Finance')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (204, N'Ware house')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (205, N'Maintance')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (206, N'Laibrary')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (207, N'play')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (208, N'Account2')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (209, N'sindbad')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (210, N'game')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (211, N'gaming')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (212, N'Transport')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (213, N'Sports Game')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (214, N'Sport Gala')
INSERT [dbo].[Departments] ([DeptId], [DeptName]) VALUES (215, N'Labs')
SET IDENTITY_INSERT [dbo].[Departments] OFF
/****** Object:  Table [dbo].[StdRegistration]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StdRegistration](
	[StdId] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](50) NULL,
	[MidName] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Father] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Cnic] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Semister] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[Martial] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[DateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (1, N'Pakistan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (2, N'India')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (3, N'Saudia')
SET IDENTITY_INSERT [dbo].[Country] OFF
/****** Object:  Table [dbo].[Login]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[UserName] [varchar](15) NULL,
	[Password] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacultyDeparts]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacultyDeparts](
	[DepartId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
	[Msg] [varchar](50) NULL,
 CONSTRAINT [PK_FacultyDeparts] PRIMARY KEY CLUSTERED 
(
	[DepartId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FacultyDeparts] ON
INSERT [dbo].[FacultyDeparts] ([DepartId], [DepartmentName], [Msg]) VALUES (1, N'Bs Computer Science', N'done')
INSERT [dbo].[FacultyDeparts] ([DepartId], [DepartmentName], [Msg]) VALUES (2, N'Bs civil', N'done')
SET IDENTITY_INSERT [dbo].[FacultyDeparts] OFF
/****** Object:  Table [dbo].[Employees]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(200,1) NOT NULL,
	[EmpName] [varchar](50) NULL,
	[Desigination] [varchar](50) NULL,
	[JoiningDate] [varchar](50) NULL,
	[Salary] [varchar](50) NULL,
	[DeptId] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (201, N'eisha', N'IT', N'2018-12-12', N'550000', 201)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (202, N'umair', N'Faculty', N'2018-12-12', N'600000', 200)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (204, N'aysha', N'IT', N'2018-12-12', N'60000', 201)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (206, N'Rumaisa', N'Faculty', N'2018-12-12', N'60,000', 201)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (207, N'faisal', N'IT', N'2018-03-18', N'60000', 201)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (208, N'umair', N'IT', N'23/02/2018', N'4500', 201)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (209, N'asif', N'Officer', N'12/12/2018', N'2000', 202)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (210, N'eisha', N'IT Officer', N'12/12/2018', N'55000', 213)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (211, N'eisha', N'IT', N'12/12/2018', N'55000', 214)
INSERT [dbo].[Employees] ([EmployeeId], [EmpName], [Desigination], [JoiningDate], [Salary], [DeptId]) VALUES (212, N'eisha', N'IT', N'12/02/2018', N'55000', 215)
SET IDENTITY_INSERT [dbo].[Employees] OFF
/****** Object:  Table [dbo].[City]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
	[CountryId] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (1, N'Karachi', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (2, N'Lahore', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (3, N'Islamabad', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (4, N'Multan', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (5, N'Sakkar', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (6, N'KPK', 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (7, N'Mombay', 2)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (8, N'Shimla', 2)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (9, N'Ragistan', 2)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (10, N'Madina', 3)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (11, N'Makka', 3)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (12, N'Riyaz', 3)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId]) VALUES (13, N'Jaddah', 3)
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[Batches]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Batches](
	[BatchId] [int] IDENTITY(1,1) NOT NULL,
	[BatchName] [varchar](50) NULL,
	[DepartId] [int] NULL,
	[Msg] [varchar](50) NULL,
 CONSTRAINT [PK_Batches] PRIMARY KEY CLUSTERED 
(
	[BatchId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Batches] ON
INSERT [dbo].[Batches] ([BatchId], [BatchName], [DepartId], [Msg]) VALUES (1, N'First Year', 1, N'done')
INSERT [dbo].[Batches] ([BatchId], [BatchName], [DepartId], [Msg]) VALUES (2, N'Second Year', 1, N'done')
INSERT [dbo].[Batches] ([BatchId], [BatchName], [DepartId], [Msg]) VALUES (3, N'First Year', 2, N'done')
SET IDENTITY_INSERT [dbo].[Batches] OFF
/****** Object:  Table [dbo].[Semisters]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semisters](
	[SemisterId] [int] IDENTITY(1,1) NOT NULL,
	[SemisterName] [varchar](50) NULL,
	[DepartId] [int] NULL,
	[BatchId] [int] NULL,
	[msg] [varchar](50) NULL,
 CONSTRAINT [PK_Semisters] PRIMARY KEY CLUSTERED 
(
	[SemisterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Semisters] ON
INSERT [dbo].[Semisters] ([SemisterId], [SemisterName], [DepartId], [BatchId], [msg]) VALUES (1, N'Semister1', 1, 1, NULL)
INSERT [dbo].[Semisters] ([SemisterId], [SemisterName], [DepartId], [BatchId], [msg]) VALUES (2, N'Semister1', 1, 1, N'done')
INSERT [dbo].[Semisters] ([SemisterId], [SemisterName], [DepartId], [BatchId], [msg]) VALUES (3, N'Semister 3', 1, 2, N'done')
SET IDENTITY_INSERT [dbo].[Semisters] OFF
/****** Object:  Table [dbo].[Courses]    Script Date: 04/11/2018 23:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Courses](
	[CoursesId] [int] IDENTITY(1,1) NOT NULL,
	[CoursesName] [varchar](50) NULL,
	[DepartId] [int] NULL,
	[BatchId] [int] NULL,
	[SemisterId] [int] NULL,
	[Msg] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON
INSERT [dbo].[Courses] ([CoursesId], [CoursesName], [DepartId], [BatchId], [SemisterId], [Msg]) VALUES (1, N'Programming', 1, 1, 1, N'done')
SET IDENTITY_INSERT [dbo].[Courses] OFF
/****** Object:  ForeignKey [FK_Batches_FacultyDeparts]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[Batches]  WITH CHECK ADD  CONSTRAINT [FK_Batches_FacultyDeparts] FOREIGN KEY([DepartId])
REFERENCES [dbo].[FacultyDeparts] ([DepartId])
GO
ALTER TABLE [dbo].[Batches] CHECK CONSTRAINT [FK_Batches_FacultyDeparts]
GO
/****** Object:  ForeignKey [FK_City_Country]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
/****** Object:  ForeignKey [FK_Courses_Batches]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Batches] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([BatchId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Batches]
GO
/****** Object:  ForeignKey [FK_Courses_FacultyDeparts]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_FacultyDeparts] FOREIGN KEY([DepartId])
REFERENCES [dbo].[FacultyDeparts] ([DepartId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_FacultyDeparts]
GO
/****** Object:  ForeignKey [FK_Courses_Semisters]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Semisters] FOREIGN KEY([SemisterId])
REFERENCES [dbo].[Semisters] ([SemisterId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Semisters]
GO
/****** Object:  ForeignKey [FK_Employees_Departments]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
/****** Object:  ForeignKey [FK_Semisters_Batches]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[Semisters]  WITH CHECK ADD  CONSTRAINT [FK_Semisters_Batches] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([BatchId])
GO
ALTER TABLE [dbo].[Semisters] CHECK CONSTRAINT [FK_Semisters_Batches]
GO
/****** Object:  ForeignKey [FK_Semisters_FacultyDeparts]    Script Date: 04/11/2018 23:23:54 ******/
ALTER TABLE [dbo].[Semisters]  WITH CHECK ADD  CONSTRAINT [FK_Semisters_FacultyDeparts] FOREIGN KEY([DepartId])
REFERENCES [dbo].[FacultyDeparts] ([DepartId])
GO
ALTER TABLE [dbo].[Semisters] CHECK CONSTRAINT [FK_Semisters_FacultyDeparts]
GO
