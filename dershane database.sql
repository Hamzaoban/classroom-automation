USE [master]
GO
/****** Object:  Database [Dershane]    Script Date: 11.01.2020 03:57:31 ******/
CREATE DATABASE [Dershane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dershane', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Dershane.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dershane_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Dershane_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dershane] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dershane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dershane] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dershane] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dershane] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dershane] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dershane] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dershane] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dershane] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dershane] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dershane] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dershane] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dershane] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dershane] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dershane] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dershane] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dershane] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dershane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dershane] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dershane] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dershane] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dershane] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dershane] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dershane] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dershane] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dershane] SET  MULTI_USER 
GO
ALTER DATABASE [Dershane] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dershane] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dershane] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dershane] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Dershane]
GO
/****** Object:  Table [dbo].[etut]    Script Date: 11.01.2020 03:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etut](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ogr_no] [nchar](10) NULL,
	[ogr_ad] [nchar](50) NULL,
	[ogr_soyad] [nchar](50) NULL,
	[tarih] [varchar](50) NULL,
	[saat] [varchar](50) NULL,
	[ogretmen_ad] [varchar](50) NULL,
	[ogretmen_soyad] [varchar](50) NULL,
	[ders] [varchar](50) NULL,
 CONSTRAINT [PK_bos_saatler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanıcılar]    Script Date: 11.01.2020 03:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanıcılar](
	[id] [nchar](10) NULL,
	[sifre] [nchar](10) NULL,
	[rutbe] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenci]    Script Date: 11.01.2020 03:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ogrenci_no] [varchar](50) NOT NULL,
	[ad] [varchar](50) NULL,
	[soyad] [varchar](50) NULL,
	[sinif] [varchar](50) NULL,
	[bolumu] [varchar](50) NULL,
 CONSTRAINT [PK_ogrenci] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogretmen]    Script Date: 11.01.2020 03:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogretmen](
	[id] [nchar](50) NULL,
	[tc_no] [nchar](60) NULL,
	[ad] [nchar](60) NULL,
	[soyad] [nchar](60) NULL,
	[tel_no] [nchar](60) NULL,
	[maas] [nchar](60) NULL,
	[brans] [nchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[veli]    Script Date: 11.01.2020 03:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[veli](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[veli_ad] [varchar](50) NULL,
	[veli_soyad] [varchar](50) NULL,
	[tc_no] [varchar](50) NULL,
	[tel_no] [varchar](50) NULL,
	[velinin_cocugu] [varchar](50) NULL,
 CONSTRAINT [PK_veli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[etut] ON 

INSERT [dbo].[etut] ([id], [ogr_no], [ogr_ad], [ogr_soyad], [tarih], [saat], [ogretmen_ad], [ogretmen_soyad], [ders]) VALUES (2, N'93        ', N'Doğukan                                           ', N'Eski                                              ', N'8 Ocak 2020 Çarşamba', N'13:00', N'Hasan                                    ', N'Taş', N'Kimya')
SET IDENTITY_INSERT [dbo].[etut] OFF
INSERT [dbo].[Kullanıcılar] ([id], [sifre], [rutbe]) VALUES (N'Admin     ', N'Admin     ', N'1         ')
INSERT [dbo].[Kullanıcılar] ([id], [sifre], [rutbe]) VALUES (N'Personel  ', N'Personel  ', N'2         ')
SET IDENTITY_INSERT [dbo].[ogrenci] ON 

INSERT [dbo].[ogrenci] ([id], [ogrenci_no], [ad], [soyad], [sinif], [bolumu]) VALUES (1007, N'341', N'Hamza', N'Oban', N'12', N'MF')
SET IDENTITY_INSERT [dbo].[ogrenci] OFF
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'1                                                 ', N'123123123                                                   ', N'Hamza                                                       ', N'Oban                                                        ', N'05378722053                                                 ', N'2000                                                        ', N'Geometri                                          ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'2                                                 ', N'123123123                                                   ', NULL, NULL, NULL, NULL, N'Biyoloji                                          ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'3                                                 ', N'123123123                                                   ', N'hamza                                                       ', N'oban                                                        ', N'05378722053                                                 ', N'2000                                                        ', N'Kimya                                             ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'4                                                 ', N'123123123                                                   ', N'                                                            ', N'                                                            ', N'                                                            ', N'                                                            ', N'Edebiyat                                          ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'5                                                 ', N'123123123                                                   ', N'                                                            ', N'                                                            ', N'                                                            ', N'                                                            ', N'Dil Anlatım                                       ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'6                                                 ', N'44224100412                                                 ', N'Oban                                                        ', N'Hamzaa                                                      ', N'05378722053                                                 ', N'10000                                                       ', N'Matematik                                         ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'7                                                 ', N'123123                                                      ', NULL, NULL, NULL, NULL, N'                                                  ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'8                                                 ', N'                                                            ', NULL, NULL, NULL, NULL, N'                                                  ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'9                                                 ', N'11885695783                                                 ', N'Taşkıran                                                    ', N'Mertcan                                                     ', N'05382788556                                                 ', N'2326                                                        ', N'Geometri                                          ')
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (N'                                                  ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ogretmen] ([id], [tc_no], [ad], [soyad], [tel_no], [maas], [brans]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, N'                                                  ')
SET IDENTITY_INSERT [dbo].[veli] ON 

INSERT [dbo].[veli] ([id], [veli_ad], [veli_soyad], [tc_no], [tel_no], [velinin_cocugu]) VALUES (2, N'Ali ', N'Oban', N'44224100415', N'05357131125', N'341')
INSERT [dbo].[veli] ([id], [veli_ad], [veli_soyad], [tc_no], [tel_no], [velinin_cocugu]) VALUES (3, N'Osman', N'Gürbüz', N'11235695788', N'05342565489', N'91')
INSERT [dbo].[veli] ([id], [veli_ad], [veli_soyad], [tc_no], [tel_no], [velinin_cocugu]) VALUES (4, N'Burak', N'Soylu', N'65984558752', N'05369855421', N'93')
INSERT [dbo].[veli] ([id], [veli_ad], [veli_soyad], [tc_no], [tel_no], [velinin_cocugu]) VALUES (5, N'Sıtkı', N'Kırılmaz', N'44255610589', N'05389822533', N'125')
SET IDENTITY_INSERT [dbo].[veli] OFF
USE [master]
GO
ALTER DATABASE [Dershane] SET  READ_WRITE 
GO
