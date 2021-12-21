USE [master]
GO
/****** Object:  Database [yacht shipyard]    Script Date: 14.12.2021 12:07:34 ******/
CREATE DATABASE [yacht shipyard]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yacht shipyard', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\yacht shipyard.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'yacht shipyard_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\yacht shipyard_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [yacht shipyard] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yacht shipyard].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yacht shipyard] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yacht shipyard] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yacht shipyard] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yacht shipyard] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yacht shipyard] SET ARITHABORT OFF 
GO
ALTER DATABASE [yacht shipyard] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yacht shipyard] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yacht shipyard] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yacht shipyard] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yacht shipyard] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yacht shipyard] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yacht shipyard] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yacht shipyard] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yacht shipyard] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yacht shipyard] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yacht shipyard] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yacht shipyard] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yacht shipyard] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yacht shipyard] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yacht shipyard] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yacht shipyard] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yacht shipyard] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yacht shipyard] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [yacht shipyard] SET  MULTI_USER 
GO
ALTER DATABASE [yacht shipyard] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yacht shipyard] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yacht shipyard] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yacht shipyard] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [yacht shipyard] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [yacht shipyard] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [yacht shipyard] SET QUERY_STORE = OFF
GO
USE [yacht shipyard]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[Accessory_ID]  AS ((1)),
	[AccName] [varchar](50) NOT NULL,
	[DescriptionOfAccessory] [varchar](100) NULL,
	[Price] [int] NOT NULL,
	[VAT] [int] NOT NULL,
	[Inventory] [int] NOT NULL,
	[OrderLevel] [int] NOT NULL,
	[OrderBatch] [int] NOT NULL,
	[Partner_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boat]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boat](
	[boat_ID] [int] NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[BoatType] [varchar](50) NOT NULL,
	[NumberOfRowers] [int] NOT NULL,
	[Mast] [varchar](50) NOT NULL,
	[Colour] [varchar](50) NOT NULL,
	[Wood] [varchar](50) NOT NULL,
	[BasePrice] [int] NOT NULL,
	[VAT] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoatAccessories]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoatAccessories](
	[Fit_ID] [int] NOT NULL,
	[Accrssory_ID] [int] NOT NULL,
	[Boat_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Contract_ID] [int] NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[DepositPayed] [int] NOT NULL,
	[Order_ID] [int] NOT NULL,
	[ContractTotalPrice] [int] NOT NULL,
	[ContracTotalPrice_inclVAT] [int] NOT NULL,
	[ProductionProcess] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] NOT NULL,
	[FistName] [varchar](50) NOT NULL,
	[FamilyName] [varchar](50) NOT NULL,
	[DateOfBirth] [varchar](50) NOT NULL,
	[OrganisationName] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[IDNumber] [varchar](50) NOT NULL,
	[IDDocumentName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryCriteria]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryCriteria](
	[Detail_ID] [int] NOT NULL,
	[Accessory_ID] [int] NOT NULL,
	[Order_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_ID] [int] NOT NULL,
	[Contract_ID] [int] NOT NULL,
	[Settled] [varchar](50) NOT NULL,
	[Sum] [int] NOT NULL,
	[Sum_inclVAT] [int] NOT NULL,
	[Date] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_ID] [int] NOT NULL,
	[Date] [varbinary](10) NOT NULL,
	[Salesperson_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Boat_ID] [int] NOT NULL,
	[DeliveryAddress] [varchar](100) NOT NULL,
	[City] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Partner_ID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPerson]    Script Date: 14.12.2021 12:07:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson](
	[SalesPerson_ID] [int] NOT NULL,
	[FirstName] [nchar](10) NOT NULL,
	[FamilyName] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [yacht shipyard] SET  READ_WRITE 
GO