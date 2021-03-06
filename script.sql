USE [master]
GO
/****** Object:  Database [Ambulance]    Script Date: 5/5/2022 00:46:15 ******/
CREATE DATABASE [Ambulance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ambulance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ambulance.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ambulance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Ambulance_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Ambulance] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ambulance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ambulance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ambulance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ambulance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ambulance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ambulance] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ambulance] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ambulance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ambulance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ambulance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ambulance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ambulance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ambulance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ambulance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ambulance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ambulance] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ambulance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ambulance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ambulance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ambulance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ambulance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ambulance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ambulance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ambulance] SET RECOVERY FULL 
GO
ALTER DATABASE [Ambulance] SET  MULTI_USER 
GO
ALTER DATABASE [Ambulance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ambulance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ambulance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ambulance] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ambulance] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ambulance] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ambulance', N'ON'
GO
ALTER DATABASE [Ambulance] SET QUERY_STORE = OFF
GO
USE [Ambulance]
GO
/****** Object:  Table [dbo].[Call]    Script Date: 5/5/2022 00:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [nvarchar](10) NOT NULL,
	[adress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Call] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/5/2022 00:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[position] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 5/5/2022 00:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [nvarchar](10) NOT NULL,
	[busy] [bit] NOT NULL,
 CONSTRAINT [PK_Ambulance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/5/2022 00:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Call] ON 

INSERT [dbo].[Call] ([id], [number], [adress]) VALUES (1, N'11', N'Пушкина 13')
INSERT [dbo].[Call] ([id], [number], [adress]) VALUES (2, N'13', N'Советская 15')
INSERT [dbo].[Call] ([id], [number], [adress]) VALUES (5, N'12', N'Ильина 12')
INSERT [dbo].[Call] ([id], [number], [adress]) VALUES (7, N'14', N'Московская 15')
SET IDENTITY_INSERT [dbo].[Call] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [name], [position]) VALUES (1, N'Сидоров', N'Глав. врач')
INSERT [dbo].[Employee] ([id], [name], [position]) VALUES (4, N'Иванов', N'Фельдшер')
INSERT [dbo].[Employee] ([id], [name], [position]) VALUES (5, N'Петров', N'Водитель')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Machine] ON 

INSERT [dbo].[Machine] ([id], [number], [busy]) VALUES (1, N'11', 1)
INSERT [dbo].[Machine] ([id], [number], [busy]) VALUES (4, N'13', 1)
INSERT [dbo].[Machine] ([id], [number], [busy]) VALUES (6, N'15', 0)
INSERT [dbo].[Machine] ([id], [number], [busy]) VALUES (9, N'16', 0)
INSERT [dbo].[Machine] ([id], [number], [busy]) VALUES (10, N'12', 1)
INSERT [dbo].[Machine] ([id], [number], [busy]) VALUES (11, N'14', 1)
SET IDENTITY_INSERT [dbo].[Machine] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [login], [password]) VALUES (1, N'Admin', N'123')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [Ambulance] SET  READ_WRITE 
GO
