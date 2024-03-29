USE [master]
GO
/****** Object:  Database [MagicVilla]    Script Date: 4/28/2023 10:02:01 PM ******/
CREATE DATABASE [MagicVilla]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MagicVilla', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MagicVilla.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MagicVilla_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MagicVilla_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MagicVilla] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MagicVilla].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MagicVilla] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MagicVilla] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MagicVilla] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MagicVilla] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MagicVilla] SET ARITHABORT OFF 
GO
ALTER DATABASE [MagicVilla] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MagicVilla] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MagicVilla] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MagicVilla] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MagicVilla] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MagicVilla] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MagicVilla] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MagicVilla] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MagicVilla] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MagicVilla] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MagicVilla] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MagicVilla] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MagicVilla] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MagicVilla] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MagicVilla] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MagicVilla] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MagicVilla] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MagicVilla] SET RECOVERY FULL 
GO
ALTER DATABASE [MagicVilla] SET  MULTI_USER 
GO
ALTER DATABASE [MagicVilla] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MagicVilla] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MagicVilla] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MagicVilla] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MagicVilla] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MagicVilla] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MagicVilla', N'ON'
GO
ALTER DATABASE [MagicVilla] SET QUERY_STORE = OFF
GO
USE [MagicVilla]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/28/2023 10:02:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VillaNumbers]    Script Date: 4/28/2023 10:02:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VillaNumbers](
	[VillaNo] [int] NOT NULL,
	[SpecialDetails] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[VillaID] [int] NOT NULL,
 CONSTRAINT [PK_VillaNumbers] PRIMARY KEY CLUSTERED 
(
	[VillaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Villas]    Script Date: 4/28/2023 10:02:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Villas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NULL,
	[Rate] [float] NOT NULL,
	[Sqft] [int] NOT NULL,
	[Occupancy] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Amenity] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Villas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221115124645_AddVillaIntoDb', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221115125545_SeedVillaTable', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221115125828_SeedVillaTableWithCreatedDate', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221127151303_AddVillaNumbers', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221130125040_AddForeignKeyToVillaTable', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230419081600_ChangeNullableToFalse', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230419081717_ChangeNullableToFalse1', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[Villas] ON 

INSERT [dbo].[Villas] ([Id], [Name], [Detail], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [UpdatedDate], [CreatedDate]) VALUES (1, N'Royal Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 200, 550, 4, N'https://dotnetmastery.com/bluevillaimages/villa3.jpg', N'Good', CAST(N'2023-04-28T17:41:45.1570053' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Detail], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [UpdatedDate], [CreatedDate]) VALUES (2, N'Premium Pool Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 300, 550, 4, N'https://dotnetmastery.com/bluevillaimages/villa1.jpg', N'Good', CAST(N'2023-04-28T17:41:57.2770016' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Detail], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [UpdatedDate], [CreatedDate]) VALUES (3, N'Luxury Pool Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 400, 750, 4, N'https://dotnetmastery.com/bluevillaimages/villa4.jpg', N'Good', CAST(N'2023-04-28T17:42:04.1962261' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Detail], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [UpdatedDate], [CreatedDate]) VALUES (4, N'Diamond Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 550, 900, 4, N'https://dotnetmastery.com/bluevillaimages/villa5.jpg', N'Good', CAST(N'2023-04-28T17:42:13.0677621' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Detail], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [UpdatedDate], [CreatedDate]) VALUES (5, N'Diamond Pool Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 600, 1100, 4, N'https://dotnetmastery.com/bluevillaimages/villa2.jpg', N'Good', CAST(N'2023-04-28T17:42:24.8705235' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Villas] OFF
GO
/****** Object:  Index [IX_VillaNumbers_VillaID]    Script Date: 4/28/2023 10:02:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_VillaNumbers_VillaID] ON [dbo].[VillaNumbers]
(
	[VillaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VillaNumbers] ADD  DEFAULT ((0)) FOR [VillaID]
GO
ALTER TABLE [dbo].[VillaNumbers]  WITH CHECK ADD  CONSTRAINT [FK_VillaNumbers_Villas_VillaID] FOREIGN KEY([VillaID])
REFERENCES [dbo].[Villas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VillaNumbers] CHECK CONSTRAINT [FK_VillaNumbers_Villas_VillaID]
GO
USE [master]
GO
ALTER DATABASE [MagicVilla] SET  READ_WRITE 
GO
