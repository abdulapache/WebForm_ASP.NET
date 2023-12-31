USE [master]
GO
/****** Object:  Database [Emp_Employee]    Script Date: 03/03/2023 3:56:54 pm ******/
CREATE DATABASE [Emp_Employee]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Emp_Employee', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Emp_Employee.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Emp_Employee_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Emp_Employee_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Emp_Employee].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Emp_Employee] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Emp_Employee] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Emp_Employee] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Emp_Employee] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Emp_Employee] SET ARITHABORT OFF 
GO
ALTER DATABASE [Emp_Employee] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Emp_Employee] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Emp_Employee] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Emp_Employee] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Emp_Employee] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Emp_Employee] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Emp_Employee] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Emp_Employee] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Emp_Employee] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Emp_Employee] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Emp_Employee] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Emp_Employee] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Emp_Employee] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Emp_Employee] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Emp_Employee] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Emp_Employee] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Emp_Employee] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Emp_Employee] SET RECOVERY FULL 
GO
ALTER DATABASE [Emp_Employee] SET  MULTI_USER 
GO
ALTER DATABASE [Emp_Employee] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Emp_Employee] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Emp_Employee] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Emp_Employee] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Emp_Employee', N'ON'
GO
USE [Emp_Employee]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Emp_Employee]
GO
/****** Object:  Table [dbo].[tblEmp_Blood_Group]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Blood_Group](
	[EmpBlood_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpBlood_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpBlood_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Department]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Department](
	[EmpDepartment_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpDepartment_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpDepartment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Department_Level]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Department_Level](
	[EmpDepartmentLevel_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpDepartmentLevel_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpDepartmentLevel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Designation]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Designation](
	[EmpDesignation_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpDesignation_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpDesignation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Employee]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Employee](
	[EmpID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpLocation_ID] [numeric](18, 0) NOT NULL,
	[EmpCode] [varchar](50) NOT NULL,
	[EmpFatherName] [varchar](50) NOT NULL,
	[EmpFullName] [varchar](50) NOT NULL,
	[EmpSurName] [varchar](50) NOT NULL,
	[EmpNationality_ID] [numeric](18, 0) NOT NULL,
	[EmpIDNo] [varchar](1) NOT NULL,
	[EmpDOB] [datetime] NOT NULL,
	[EmpDOE] [datetime] NOT NULL,
	[EmpSection_ID] [numeric](18, 0) NOT NULL,
	[EmpDepartment_ID] [numeric](18, 0) NOT NULL,
	[EmpDepartmentLevel_ID] [numeric](18, 0) NOT NULL,
	[EmpDesignation_ID] [numeric](18, 0) NOT NULL,
	[EmpMarital_ID] [numeric](18, 0) NOT NULL,
	[EmpReligion_ID] [numeric](18, 0) NOT NULL,
	[EmpLeavePolicy_ID] [numeric](18, 0) NOT NULL,
	[Gender_ID] [numeric](18, 0) NOT NULL,
	[EmpBlood_ID] [numeric](18, 0) NOT NULL,
	[EmpHOD] [bit] NOT NULL,
	[EmpAsstHOD] [bit] NOT NULL,
	[Emp_DOJ] [datetime] NOT NULL,
	[EmpStatus_ID] [numeric](18, 0) NOT NULL,
	[EmpJobStatus_ID] [numeric](18, 0) NOT NULL,
	[EmpDOL] [datetime] NOT NULL,
	[EmpReson] [varchar](1) NOT NULL,
	[EmpGrade_ID] [numeric](18, 0) NOT NULL,
	[EmpDOC] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Employee_Status]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Employee_Status](
	[EmpStatus_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpStatus_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpStatus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Gender]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Gender](
	[Gender_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Gender_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Gender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Grade]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Grade](
	[EmpGrade_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpGrade_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpGrade_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Job_Status]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Job_Status](
	[EmpJobStatus_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpJobStatus_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpJobStatus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Leave_Ploicy]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Leave_Ploicy](
	[EmpLeavePolicy_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpLeavePolicy_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpLeavePolicy_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Marital_Status]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Marital_Status](
	[EmpMarital_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpMarital_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpMarital_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Nationality]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Nationality](
	[EmpNationality_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpNationality_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpNationality_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_OfficeLocation]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_OfficeLocation](
	[EmpLocation_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpLocation_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpLocation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Religion]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Religion](
	[EmpReligion_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpReligion_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpReligion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmp_Section]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Section](
	[EmpSection_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpSection_D] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpSection_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblEmp_Blood_Group] ON 

INSERT [dbo].[tblEmp_Blood_Group] ([EmpBlood_ID], [EmpBlood_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'b+')
INSERT [dbo].[tblEmp_Blood_Group] ([EmpBlood_ID], [EmpBlood_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'b-')
SET IDENTITY_INSERT [dbo].[tblEmp_Blood_Group] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Department] ON 

INSERT [dbo].[tblEmp_Department] ([EmpDepartment_ID], [EmpDepartment_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Operation')
INSERT [dbo].[tblEmp_Department] ([EmpDepartment_ID], [EmpDepartment_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Team Leader')
SET IDENTITY_INSERT [dbo].[tblEmp_Department] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Department_Level] ON 

INSERT [dbo].[tblEmp_Department_Level] ([EmpDepartmentLevel_ID], [EmpDepartmentLevel_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'CSFEL')
INSERT [dbo].[tblEmp_Department_Level] ([EmpDepartmentLevel_ID], [EmpDepartmentLevel_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'CSFL')
SET IDENTITY_INSERT [dbo].[tblEmp_Department_Level] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Designation] ON 

INSERT [dbo].[tblEmp_Designation] ([EmpDesignation_ID], [EmpDesignation_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Trainee Crew Members')
INSERT [dbo].[tblEmp_Designation] ([EmpDesignation_ID], [EmpDesignation_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Trainee Crew Members')
INSERT [dbo].[tblEmp_Designation] ([EmpDesignation_ID], [EmpDesignation_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'Trainee Crew Members')
INSERT [dbo].[tblEmp_Designation] ([EmpDesignation_ID], [EmpDesignation_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'Trainee Crew Members')
SET IDENTITY_INSERT [dbo].[tblEmp_Designation] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Employee] ON 

INSERT [dbo].[tblEmp_Employee] ([EmpID], [EmpLocation_ID], [EmpCode], [EmpFatherName], [EmpFullName], [EmpSurName], [EmpNationality_ID], [EmpIDNo], [EmpDOB], [EmpDOE], [EmpSection_ID], [EmpDepartment_ID], [EmpDepartmentLevel_ID], [EmpDesignation_ID], [EmpMarital_ID], [EmpReligion_ID], [EmpLeavePolicy_ID], [Gender_ID], [EmpBlood_ID], [EmpHOD], [EmpAsstHOD], [Emp_DOJ], [EmpStatus_ID], [EmpJobStatus_ID], [EmpDOL], [EmpReson], [EmpGrade_ID], [EmpDOC]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'234253dsfg452', N'Zaryab Ali', N'Ali Hassan', N'Mr', CAST(1 AS Numeric(18, 0)), N'3', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 1, 1, CAST(N'2023-03-09T00:00:00.000' AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'2023-03-11T00:00:00.000' AS DateTime), N'h', CAST(1 AS Numeric(18, 0)), CAST(N'2023-03-10T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmp_Employee] ([EmpID], [EmpLocation_ID], [EmpCode], [EmpFatherName], [EmpFullName], [EmpSurName], [EmpNationality_ID], [EmpIDNo], [EmpDOB], [EmpDOE], [EmpSection_ID], [EmpDepartment_ID], [EmpDepartmentLevel_ID], [EmpDesignation_ID], [EmpMarital_ID], [EmpReligion_ID], [EmpLeavePolicy_ID], [Gender_ID], [EmpBlood_ID], [EmpHOD], [EmpAsstHOD], [Emp_DOJ], [EmpStatus_ID], [EmpJobStatus_ID], [EmpDOL], [EmpReson], [EmpGrade_ID], [EmpDOC]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'234253dsfg452', N'Abdul Majeed', N'Rahman', N'Mr', CAST(1 AS Numeric(18, 0)), N'3', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 0, 0, CAST(N'2023-03-09T00:00:00.000' AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'2023-03-11T00:00:00.000' AS DateTime), N'h', CAST(1 AS Numeric(18, 0)), CAST(N'2023-03-10T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmp_Employee] ([EmpID], [EmpLocation_ID], [EmpCode], [EmpFatherName], [EmpFullName], [EmpSurName], [EmpNationality_ID], [EmpIDNo], [EmpDOB], [EmpDOE], [EmpSection_ID], [EmpDepartment_ID], [EmpDepartmentLevel_ID], [EmpDesignation_ID], [EmpMarital_ID], [EmpReligion_ID], [EmpLeavePolicy_ID], [Gender_ID], [EmpBlood_ID], [EmpHOD], [EmpAsstHOD], [Emp_DOJ], [EmpStatus_ID], [EmpJobStatus_ID], [EmpDOL], [EmpReson], [EmpGrade_ID], [EmpDOC]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'234253dsfg452', N'Majid', N'Harish', N'Mr', CAST(1 AS Numeric(18, 0)), N'3', CAST(N'2023-03-22T00:00:00.000' AS DateTime), CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 0, 0, CAST(N'2023-03-21T00:00:00.000' AS DateTime), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2023-03-27T00:00:00.000' AS DateTime), N'h', CAST(1 AS Numeric(18, 0)), CAST(N'2022-12-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblEmp_Employee] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Employee_Status] ON 

INSERT [dbo].[tblEmp_Employee_Status] ([EmpStatus_ID], [EmpStatus_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Part Time')
INSERT [dbo].[tblEmp_Employee_Status] ([EmpStatus_ID], [EmpStatus_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Full Time')
INSERT [dbo].[tblEmp_Employee_Status] ([EmpStatus_ID], [EmpStatus_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'Part Time')
INSERT [dbo].[tblEmp_Employee_Status] ([EmpStatus_ID], [EmpStatus_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'Part Time')
SET IDENTITY_INSERT [dbo].[tblEmp_Employee_Status] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Gender] ON 

INSERT [dbo].[tblEmp_Gender] ([Gender_ID], [Gender_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Male')
INSERT [dbo].[tblEmp_Gender] ([Gender_ID], [Gender_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Fe Male')
INSERT [dbo].[tblEmp_Gender] ([Gender_ID], [Gender_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'Male')
INSERT [dbo].[tblEmp_Gender] ([Gender_ID], [Gender_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'Male')
SET IDENTITY_INSERT [dbo].[tblEmp_Gender] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Grade] ON 

INSERT [dbo].[tblEmp_Grade] ([EmpGrade_ID], [EmpGrade_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Trainee Grew')
INSERT [dbo].[tblEmp_Grade] ([EmpGrade_ID], [EmpGrade_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Trainee Grew')
INSERT [dbo].[tblEmp_Grade] ([EmpGrade_ID], [EmpGrade_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'Trainee Grew')
SET IDENTITY_INSERT [dbo].[tblEmp_Grade] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Job_Status] ON 

INSERT [dbo].[tblEmp_Job_Status] ([EmpJobStatus_ID], [EmpJobStatus_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'On Job')
INSERT [dbo].[tblEmp_Job_Status] ([EmpJobStatus_ID], [EmpJobStatus_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Left Job')
INSERT [dbo].[tblEmp_Job_Status] ([EmpJobStatus_ID], [EmpJobStatus_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'On Job')
INSERT [dbo].[tblEmp_Job_Status] ([EmpJobStatus_ID], [EmpJobStatus_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'On Job')
SET IDENTITY_INSERT [dbo].[tblEmp_Job_Status] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Leave_Ploicy] ON 

INSERT [dbo].[tblEmp_Leave_Ploicy] ([EmpLeavePolicy_ID], [EmpLeavePolicy_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'02')
INSERT [dbo].[tblEmp_Leave_Ploicy] ([EmpLeavePolicy_ID], [EmpLeavePolicy_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'04')
INSERT [dbo].[tblEmp_Leave_Ploicy] ([EmpLeavePolicy_ID], [EmpLeavePolicy_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'02')
INSERT [dbo].[tblEmp_Leave_Ploicy] ([EmpLeavePolicy_ID], [EmpLeavePolicy_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'02')
SET IDENTITY_INSERT [dbo].[tblEmp_Leave_Ploicy] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Marital_Status] ON 

INSERT [dbo].[tblEmp_Marital_Status] ([EmpMarital_ID], [EmpMarital_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'single')
INSERT [dbo].[tblEmp_Marital_Status] ([EmpMarital_ID], [EmpMarital_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Married')
INSERT [dbo].[tblEmp_Marital_Status] ([EmpMarital_ID], [EmpMarital_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'single')
INSERT [dbo].[tblEmp_Marital_Status] ([EmpMarital_ID], [EmpMarital_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'single')
SET IDENTITY_INSERT [dbo].[tblEmp_Marital_Status] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Nationality] ON 

INSERT [dbo].[tblEmp_Nationality] ([EmpNationality_ID], [EmpNationality_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Pakistan')
INSERT [dbo].[tblEmp_Nationality] ([EmpNationality_ID], [EmpNationality_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'USA')
SET IDENTITY_INSERT [dbo].[tblEmp_Nationality] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_OfficeLocation] ON 

INSERT [dbo].[tblEmp_OfficeLocation] ([EmpLocation_ID], [EmpLocation_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Thoker Niaz')
INSERT [dbo].[tblEmp_OfficeLocation] ([EmpLocation_ID], [EmpLocation_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Lahore Cantt')
SET IDENTITY_INSERT [dbo].[tblEmp_OfficeLocation] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Religion] ON 

INSERT [dbo].[tblEmp_Religion] ([EmpReligion_ID], [EmpReligion_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Islam')
INSERT [dbo].[tblEmp_Religion] ([EmpReligion_ID], [EmpReligion_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Christan')
INSERT [dbo].[tblEmp_Religion] ([EmpReligion_ID], [EmpReligion_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'Islam')
INSERT [dbo].[tblEmp_Religion] ([EmpReligion_ID], [EmpReligion_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'Islam')
SET IDENTITY_INSERT [dbo].[tblEmp_Religion] OFF
SET IDENTITY_INSERT [dbo].[tblEmp_Section] ON 

INSERT [dbo].[tblEmp_Section] ([EmpSection_ID], [EmpSection_D]) VALUES (CAST(1 AS Numeric(18, 0)), N'Operations')
INSERT [dbo].[tblEmp_Section] ([EmpSection_ID], [EmpSection_D]) VALUES (CAST(2 AS Numeric(18, 0)), N'Manager')
INSERT [dbo].[tblEmp_Section] ([EmpSection_ID], [EmpSection_D]) VALUES (CAST(3 AS Numeric(18, 0)), N'Operations')
INSERT [dbo].[tblEmp_Section] ([EmpSection_ID], [EmpSection_D]) VALUES (CAST(4 AS Numeric(18, 0)), N'Operations')
SET IDENTITY_INSERT [dbo].[tblEmp_Section] OFF
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Blood_Group] FOREIGN KEY([EmpBlood_ID])
REFERENCES [dbo].[tblEmp_Blood_Group] ([EmpBlood_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Blood_Group]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Department] FOREIGN KEY([EmpDepartment_ID])
REFERENCES [dbo].[tblEmp_Department] ([EmpDepartment_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Department]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Department_Level] FOREIGN KEY([EmpDepartmentLevel_ID])
REFERENCES [dbo].[tblEmp_Department_Level] ([EmpDepartmentLevel_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Department_Level]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Designation] FOREIGN KEY([EmpDesignation_ID])
REFERENCES [dbo].[tblEmp_Designation] ([EmpDesignation_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Designation]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Employee_Status] FOREIGN KEY([EmpStatus_ID])
REFERENCES [dbo].[tblEmp_Employee_Status] ([EmpStatus_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Employee_Status]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Gender] FOREIGN KEY([Gender_ID])
REFERENCES [dbo].[tblEmp_Gender] ([Gender_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Gender]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Grade] FOREIGN KEY([EmpGrade_ID])
REFERENCES [dbo].[tblEmp_Grade] ([EmpGrade_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Grade]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Job_Status] FOREIGN KEY([EmpJobStatus_ID])
REFERENCES [dbo].[tblEmp_Job_Status] ([EmpJobStatus_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Job_Status]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Leave_Ploicy] FOREIGN KEY([EmpLeavePolicy_ID])
REFERENCES [dbo].[tblEmp_Leave_Ploicy] ([EmpLeavePolicy_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Leave_Ploicy]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Marital_Status] FOREIGN KEY([EmpMarital_ID])
REFERENCES [dbo].[tblEmp_Marital_Status] ([EmpMarital_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Marital_Status]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Nationality] FOREIGN KEY([EmpNationality_ID])
REFERENCES [dbo].[tblEmp_Nationality] ([EmpNationality_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Nationality]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_OfficeLocation] FOREIGN KEY([EmpLocation_ID])
REFERENCES [dbo].[tblEmp_OfficeLocation] ([EmpLocation_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_OfficeLocation]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Religion] FOREIGN KEY([EmpReligion_ID])
REFERENCES [dbo].[tblEmp_Religion] ([EmpReligion_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Religion]
GO
ALTER TABLE [dbo].[tblEmp_Employee]  WITH CHECK ADD  CONSTRAINT [fk_tblEmp_Employee_tblEmp_Section] FOREIGN KEY([EmpSection_ID])
REFERENCES [dbo].[tblEmp_Section] ([EmpSection_ID])
GO
ALTER TABLE [dbo].[tblEmp_Employee] CHECK CONSTRAINT [fk_tblEmp_Employee_tblEmp_Section]
GO
/****** Object:  StoredProcedure [dbo].[stp_EmpEmployee]    Script Date: 03/03/2023 3:56:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*

EXEC stp_EmpEmployee @nEmpLocation_ID =2,@nEmpDepartment_ID =2,@nEmpDepartmentLevel_ID =1,
                     @nEmpSection_ID =1,@nEmpReligion_ID =1,@nEmpJobStatus_ID =2,@nGender_ID =1,@Search = 'Majid',  @nIsUpdate = 2

EXEC stp_EmpEmployee @nEmpID = 10, @nEmpLocation_ID =2,@nEmpDepartment_ID =2,@nEmpDepartmentLevel_ID =1,
                     @nEmpSection_ID =1,@nEmpReligion_ID =1,@nEmpJobStatus_ID =2,@nGender_ID =1,@Search = 'Majid',  @nIsUpdate = 2

EXEC stp_EmpEmployee @nEmpID = 10, @nIsUpdate = 2
*/

CREATE PROC [dbo].[stp_EmpEmployee]
@nEmpID                 NUMERIC = NULL,
@nEmpLocation_ID		NUMERIC = NULL ,
@sEmpCode				VARCHAR(50) = NULL ,
@sEmpFatherName			VARCHAR(50) = NULL,
@sEmpFullName			VARCHAR(50) = NULL,
@sEmpSurName			VARCHAR(50) = NULL,
@nEmpNationality_ID		NUMERIC = NULL,
@sEmpIDNo				VARCHAR = NULL,
@dEmpDOB				DATETIME = NULL,
@dEmpDOE				DATETIME = NULL,
@nEmpSection_ID			NUMERIC = NULL,
@nEmpDepartment_ID		NUMERIC = NULL,
@nEmpDepartmentLevel_ID NUMERIC = NULL,
@nEmpDesignation_ID		NUMERIC = NULL,
@nEmpMarital_ID			NUMERIC = NULL,
@nEmpReligion_ID		NUMERIC = NULL,
@nEmpLeavePolicy_ID		NUMERIC = NULL,
@nGender_ID				NUMERIC = NULL,
@nEmpBlood_ID			NUMERIC = NULL,
@bEmpHOD				BIT = NULL,
@bEmpAsstHOD			BIT = NULL,
@dEmp_DOJ				DATETIME = NULL,
@nEmpStatus_ID			NUMERIC = NULL,
@nEmpJobStatus_ID		NUMERIC = NULL,
@dEmpDOL				DATETIME = NULL,
@sEmpReson				VARCHAR = NULL,
@nEmpGrade_ID			NUMERIC = NULL,
@dEmpDOC				DATETIME = NULL,
@Search					VARCHAR(50) = NULL,
@nIsUpdate              NUMERIC = NULL


AS

DECLARE @strSQL VARCHAR(5000);
DECLARE @strSQL_T VARCHAR(8000);
DECLARE @strWhere VARCHAR(5000);
DECLARE @strWhere_T VARCHAR(2000)




IF  @nIsUpdate = 0
BEGIN
INSERT INTO tblEmp_Employee
(
			EmpLocation_ID, 
			EmpCode, 
			EmpFatherName, 
			EmpFullName, 
			EmpSurName, 
			EmpNationality_ID, 
			EmpIDNo, 
			EmpDOB,
			EmpDOE, 
			EmpSection_ID, 
			EmpDepartment_ID, 
			EmpDepartmentLevel_ID, 
			EmpDesignation_ID, 
			EmpMarital_ID, 
			EmpReligion_ID, 
			EmpLeavePolicy_ID,
			Gender_ID, 
			EmpBlood_ID, 
			EmpHOD, 
			EmpAsstHOD, 
			Emp_DOJ, 
			EmpStatus_ID, 
			EmpJobStatus_ID, 
			EmpDOL, 
			EmpReson, 
			EmpGrade_ID, 
			EmpDOC
)
VALUES
(
			@nEmpLocation_ID         ,			
			@sEmpCode             ,				
			@sEmpFatherName       ,			
			@sEmpFullName         ,			
			@sEmpSurName	      ,		
			@nEmpNationality_ID   ,		
			@sEmpIDNo			  ,	
			@dEmpDOB			  ,	
			@dEmpDOE			  ,	
			@nEmpSection_ID		  ,	
			@nEmpDepartment_ID		  ,	
			@nEmpDepartmentLevel_ID ,
			@nEmpDesignation_ID		,
			@nEmpMarital_ID			,
			@nEmpReligion_ID		,
			@nEmpLeavePolicy_ID		,
			@nGender_ID				,
			@nEmpBlood_ID			,
			@bEmpHOD				,
			@bEmpAsstHOD			,
			@dEmp_DOJ				,
			@nEmpStatus_ID			,
			@nEmpJobStatus_ID		,
			@dEmpDOL				,
			@sEmpReson				,
			@nEmpGrade_ID			,
			@dEmpDOC				
)
END

IF @nIsUpdate = 1
BEGIN
UPDATE tblEmp_Employee 
SET 
       EmpLocation_ID	    =@nEmpLocation_ID,
	   EmpCode				=@sEmpCode, 
	   EmpFatherName		=@sEmpFatherName, 
	   EmpFullName			=@sEmpFullName, 
	   EmpSurName			=@sEmpSurName, 
	   EmpNationality_ID    =@nEmpNationality_ID, 
	   EmpIDNo              =@sEmpIDNo, 
	   EmpDOB               =@dEmpDOB,
       EmpDOE               =@dEmpDOE, 
	   EmpSection_ID        =@nEmpSection_ID, 
	   EmpDepartment_ID     =@nEmpDepartment_ID, 
	   EmpDepartmentLevel_ID=@nEmpDepartmentLevel_ID, 
	   EmpDesignation_ID    =@nEmpDesignation_ID, 
	   EmpMarital_ID        =@nEmpMarital_ID, 
	   EmpReligion_ID       =@nEmpReligion_ID, 
	   EmpLeavePolicy_ID    =@nEmpLeavePolicy_ID,
       Gender_ID            =@nGender_ID, 
	   EmpBlood_ID          =@nEmpBlood_ID, 
	   EmpHOD               =@bEmpHOD, 
	   EmpAsstHOD           =@bEmpAsstHOD, 
	   Emp_DOJ              =@dEmp_DOJ, 
	   EmpStatus_ID         =@nEmpStatus_ID, 
	   EmpJobStatus_ID      =@nEmpJobStatus_ID,
       EmpDOL               =@dEmpDOL, 
	   EmpReson             =@sEmpReson, 
	   EmpGrade_ID          =@nEmpGrade_ID, 
	   EmpDOC               =@dEmpDOC 
	   WHERE 
	   EmpID                =@nEmpID 
END 



IF @nIsUpdate = 2
	BEGIN

	set @strWhere = ' Where 1 = 1'

	IF ISNULL(@nEmpID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.EmpID = ' + CAST(@nEmpID AS varchar)	
		END
	IF ISNULL(@nEmpLocation_ID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.EmpLocation_ID = ' + CAST(@nEmpLocation_ID AS varchar)	
		END
	IF ISNULL(@nEmpDepartment_ID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.EmpDepartment_ID = ' + CAST(@nEmpDepartment_ID AS varchar)	
		END
	IF ISNULL(@nEmpDepartmentLevel_ID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.EmpDepartmentLevel_ID = ' + CAST(@nEmpDepartmentLevel_ID AS varchar)	
		END
	IF ISNULL(@nEmpSection_ID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.EmpSection_ID = ' + CAST(@nEmpSection_ID AS varchar)	
		END
	IF ISNULL(@nEmpReligion_ID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.EmpReligion_ID = ' + CAST(@nEmpReligion_ID AS varchar)	
		END
	IF ISNULL(@nEmpJobStatus_ID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.EmpJobStatus_ID = ' + CAST(@nEmpJobStatus_ID AS varchar)	
		END	
	IF ISNULL(@nGender_ID,-1) <> -1
		 BEGIN
			 SET @strWhere = @strWhere + ' AND A.Gender_ID = ' + CAST(@nGender_ID AS varchar)	
		END	

	IF ISNULL (@Search, '')<> ''
		BEGIN
		SET @strWhere = @strWhere + ' AND A.EmpfatherName LIKE ''%'+@Search+'%'''
		END

	SET @strSQL =' SELECT* FROM (
	SELECT A.EmpID, A.EmpLocation_ID,  N.EmpLocation_D, A.EmpCode, A.EmpFatherName, A.EmpFullname, A.EmpSurName,A.EmpNationality_ID, B.EmpNationality_D, A.EmpIDNo, A.EmpDOB, A.EmpDOE,A.EmpSection_ID, C.EmpSection_D,A.EmpDepartment_ID, O.EmpDepartment_D,A.EmpDepartmentLevel_ID, D.EmpDepartmentLevel_D, A.EmpDesignation_ID, E.EmpDesignation_D,
		A.EmpMarital_ID, F.EmpMarital_D,A.EmpReligion_ID, G.EmpReligion_D,A.EmpLeavePolicy_ID, H.EmpLeavePolicy_D, A.Gender_ID,I.Gender_D,A.EmpBlood_ID, J.EmpBlood_D, A.EmpHOD, A.EmpAsstHOD, A.Emp_DOJ,A.EmpStatus_ID, K.EmpStatus_D,A.EmpJobStatus_ID, L.EmpJobStatus_D,
		A.EmpDOL, A.EmpReson,A.EmpGrade_ID, M.EmpGrade_D, A.EmpDOC
		FROM tblEmp_Employee                     A
		LEFT OUTER JOIN tblEmp_Nationality       B ON A.EmpNationality_ID=B.EmpNationality_ID
		LEFT OUTER JOIN tblEmp_Section           C ON A.EmpSection_ID=C.EmpSection_ID
		LEFT OUTER JOIN tblEmp_Department_Level  D ON A.EmpDepartmentLevel_ID=D.EmpDepartmentLevel_ID
		LEFT OUTER JOIN tblEmp_Designation       E ON A.EmpDesignation_ID=E.EmpDesignation_ID
		LEFT OUTER JOIN tblEmp_Marital_Status    F ON A.EmpMarital_ID=F.EmpMarital_ID
		LEFT OUTER JOIN tblEmp_Religion          G ON A.EmpReligion_ID=G.EmpReligion_ID
		LEFT OUTER JOIN tblEmp_Leave_Ploicy      H ON A.EmpLeavePolicy_ID=H.EmpLeavePolicy_ID
		LEFT OUTER JOIN tblEmp_Gender            I ON A.Gender_ID=I.Gender_ID
		LEFT OUTER JOIN tblEmp_Blood_Group       J ON A.EmpBlood_ID=J.EmpBlood_ID
		LEFT OUTER JOIN tblEmp_Employee_Status   K ON A.EmpStatus_ID=K.EmpStatus_ID
		LEFT OUTER JOIN tblEmp_Job_Status        L ON A.EmpJobStatus_ID=L.EmpJobStatus_ID
		LEFT OUTER JOIN tblEmp_Grade             M ON A.EmpGrade_ID=M.EmpGrade_ID
		LEFT OUTER JOIN tblEmp_OfficeLocation    N ON A.EmpLocation_ID=N.EmpLocation_ID
		LEFT OUTER JOIN tblEmp_Department       O ON A.EmpDepartment_ID=O.EmpDepartment_ID
		)A '
		+ @strWhere
		EXEC(@strSQL)
		--PRINT(@strSQL)
	END

 


IF @nIsUpdate = 3
BEGIN
DELETE from tblEmp_Employee WHERE EmpID=@nEmpID	
END

IF @nIsUpdate = 4
BEGIN
--0
SELECT EmpNationality_ID,EmpNationality_D FROM tblEmp_Nationality
--1
SELECT EmpSection_ID, EmpSection_D FROM tblEmp_Section
--2
SELECT EmpDepartmentLevel_ID, EmpDepartmentLevel_D FROM tblEmp_Department_Level
--3
SELECT EmpDesignation_ID, EmpDesignation_D FROM tblEmp_Designation
--4
SELECT EmpMarital_ID, EmpMarital_D FROM tblEmp_Marital_Status
--5
SELECT EmpReligion_ID, EmpReligion_D FROM tblEmp_Religion
--6
SELECT EmpLeavePolicy_ID, EmpLeavePolicy_D FROM tblEmp_Leave_Ploicy
--7
SELECT Gender_ID, Gender_D FROM tblEmp_Gender
--8
SELECT EmpBlood_ID, EmpBlood_D FROM tblEmp_Blood_Group
--9
SELECT EmpStatus_ID, EmpStatus_D FROM tblEmp_Employee_Status
--10
SELECT EmpJobStatus_ID, EmpJobStatus_D FROM tblEmp_Job_Status
--11
SELECT EmpGrade_ID, EmpGrade_D FROM tblEmp_Grade
--12
SELECT EmpLocation_ID, EmpLocation_D FROM tblEmp_OfficeLocation
--13
SELECT EmpDepartment_ID, EmpDepartment_D FROM tblEmp_Department
END

IF @nIsUpdate = 5
	BEGIN
		SELECT A.EmpID, A.EmpLocation_ID,  N.EmpLocation_D, A.EmpCode, A.EmpFatherName, A.EmpFullname, A.EmpSurName,A.EmpNationality_ID, B.EmpNationality_D, A.EmpIDNo, A.EmpDOB, A.EmpDOE,A.EmpSection_ID, C.EmpSection_D,A.EmpDepartment_ID, O.EmpDepartment_D,A.EmpDepartmentLevel_ID, D.EmpDepartmentLevel_D, A.EmpDesignation_ID, E.EmpDesignation_D,
		A.EmpMarital_ID, F.EmpMarital_D,A.EmpReligion_ID, G.EmpReligion_D,A.EmpLeavePolicy_ID, H.EmpLeavePolicy_D, A.Gender_ID,I.Gender_D,A.EmpBlood_ID, J.EmpBlood_D, A.EmpHOD, A.EmpAsstHOD, A.Emp_DOJ,A.EmpStatus_ID, K.EmpStatus_D,A.EmpJobStatus_ID, L.EmpJobStatus_D,
		A.EmpDOL, A.EmpReson,A.EmpGrade_ID, M.EmpGrade_D, A.EmpDOC
		FROM tblEmp_Employee                     A
		LEFT OUTER JOIN tblEmp_Nationality       B ON A.EmpNationality_ID=B.EmpNationality_ID
		LEFT OUTER JOIN tblEmp_Section           C ON A.EmpSection_ID=C.EmpSection_ID
		LEFT OUTER JOIN tblEmp_Department_Level  D ON A.EmpDepartmentLevel_ID=D.EmpDepartmentLevel_ID
		LEFT OUTER JOIN tblEmp_Designation       E ON A.EmpDesignation_ID=E.EmpDesignation_ID
		LEFT OUTER JOIN tblEmp_Marital_Status    F ON A.EmpMarital_ID=F.EmpMarital_ID
		LEFT OUTER JOIN tblEmp_Religion          G ON A.EmpReligion_ID=G.EmpReligion_ID
		LEFT OUTER JOIN tblEmp_Leave_Ploicy      H ON A.EmpLeavePolicy_ID=H.EmpLeavePolicy_ID
		LEFT OUTER JOIN tblEmp_Gender            I ON A.Gender_ID=I.Gender_ID
		LEFT OUTER JOIN tblEmp_Blood_Group       J ON A.EmpBlood_ID=J.EmpBlood_ID
		LEFT OUTER JOIN tblEmp_Employee_Status   K ON A.EmpStatus_ID=K.EmpStatus_ID
		LEFT OUTER JOIN tblEmp_Job_Status        L ON A.EmpJobStatus_ID=L.EmpJobStatus_ID
		LEFT OUTER JOIN tblEmp_Grade             M ON A.EmpGrade_ID=M.EmpGrade_ID
		LEFT OUTER JOIN tblEmp_OfficeLocation    N ON A.EmpLocation_ID=N.EmpLocation_ID
		LEFT OUTER JOIN tblEmp_Department       O ON A.EmpDepartment_ID=O.EmpDepartment_ID

		WHERE A.EmpID = @nEmpID; 
	END

GO
USE [master]
GO
ALTER DATABASE [Emp_Employee] SET  READ_WRITE 
GO
