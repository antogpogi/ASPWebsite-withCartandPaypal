USE [master]
GO
/****** Object:  Database [dbHandArmor]    Script Date: 7/15/2017 3:55:51 PM ******/
CREATE DATABASE [dbHandArmor] ON  PRIMARY 
( NAME = N'dbHandArmor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\dbHandArmor.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbHandArmor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\dbHandArmor_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbHandArmor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbHandArmor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbHandArmor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbHandArmor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbHandArmor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbHandArmor] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbHandArmor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbHandArmor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbHandArmor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbHandArmor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbHandArmor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbHandArmor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbHandArmor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbHandArmor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbHandArmor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbHandArmor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbHandArmor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbHandArmor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbHandArmor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbHandArmor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbHandArmor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbHandArmor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbHandArmor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbHandArmor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbHandArmor] SET  MULTI_USER 
GO
ALTER DATABASE [dbHandArmor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbHandArmor] SET DB_CHAINING OFF 
GO
USE [dbHandArmor]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 7/15/2017 3:55:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/15/2017 3:55:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Category] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Price] [numeric](18, 2) NULL,
	[UnitInStock] [numeric](18, 0) NULL,
	[Picture] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([Id], [Username], [Password]) VALUES (1, N'icis', N'ici')
INSERT [dbo].[Admins] ([Id], [Username], [Password]) VALUES (2, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admins] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Category], [Size], [Color], [Description], [Price], [UnitInStock], [Picture]) VALUES (1, N'11809 Dress Gloves', N'Dress Gloves', N'6 1/2', N'Light Blue', N'Short Vinyl Spandex gloves that will make any winter wardrobe pop.', CAST(4808.00 AS Numeric(18, 2)), CAST(15 AS Numeric(18, 0)), N'11809_light_blue_grande.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
USE [master]
GO
ALTER DATABASE [dbHandArmor] SET  READ_WRITE 
GO
