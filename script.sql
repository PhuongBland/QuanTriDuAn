USE [master]
GO
/****** Object:  Database [QuanLyBanQuanAo]    Script Date: 3/31/2022 1:39:02 PM ******/
CREATE DATABASE [QuanLyBanQuanAo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanQuanAo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyBanQuanAo.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanQuanAo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyBanQuanAo_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyBanQuanAo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanQuanAo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanQuanAo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanQuanAo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanQuanAo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanQuanAo', N'ON'
GO
ALTER DATABASE [QuanLyBanQuanAo] SET QUERY_STORE = OFF
GO
USE [QuanLyBanQuanAo]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 3/31/2022 1:39:03 PM ******/
CREATE ROLE [MSmerge_PAL_role]
GO
/****** Object:  DatabaseRole [MSmerge_64D5D4326D91496DA0F9B9A58C0DAD34]    Script Date: 3/31/2022 1:39:03 PM ******/
CREATE ROLE [MSmerge_64D5D4326D91496DA0F9B9A58C0DAD34]
GO
/****** Object:  DatabaseRole [MSmerge_57D96F4CC0404E9DA153A30C343979BF]    Script Date: 3/31/2022 1:39:03 PM ******/
CREATE ROLE [MSmerge_57D96F4CC0404E9DA153A30C343979BF]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_64D5D4326D91496DA0F9B9A58C0DAD34]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_57D96F4CC0404E9DA153A30C343979BF]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 3/31/2022 1:39:03 PM ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  Table [dbo].[tbl_ChiNhanh]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiNhanh](
	[ID] [int] NOT NULL,
	[TenCN] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHoaDon]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHoaDon](
	[ID] [int] NOT NULL,
	[ID_SP] [int] NOT NULL,
	[ID_HoaDon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[ID] [int] NOT NULL,
	[NgayMua] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[GiamGia] [nvarchar](50) NULL,
	[ID_NhanVien] [int] NOT NULL,
	[ID_ChiNhanh] [int] NOT NULL,
	[ID_KhachHang] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[ID] [int] NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiSP]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiSP](
	[ID] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVien](
	[ID] [int] NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[ChucVu] [nvarchar](50) NOT NULL,
	[Luong] [nvarchar](50) NOT NULL,
	[ID_CN] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[ID] [int] NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[GiaBan] [nvarchar](50) NOT NULL,
	[LoaiSP] [nvarchar](50) NOT NULL,
	[MoTaSP] [nvarchar](50) NOT NULL,
	[XuatXu] [nvarchar](50) NOT NULL,
	[SoLuong] [nvarchar](50) NOT NULL,
	[ID_LoaiSP] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThuocTinh]    Script Date: 3/31/2022 1:39:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThuocTinh](
	[ID] [int] NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
	[Mau] [nvarchar](50) NOT NULL,
	[SoLuong] [nvarchar](50) NOT NULL,
	[ID_SP] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tbl_ThuocTinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_ChiNhanh] ([ID], [TenCN], [rowguid]) VALUES (1, N'Bùi Thị Xuân', N'51a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiNhanh] ([ID], [TenCN], [rowguid]) VALUES (2, N'Trần Phú', N'52a36c71-52ab-ec11-8df3-000c29c99b27')
GO
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (1, 1, 2, 100, N'6ca36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (2, 2, 1, 15, N'6da36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (3, 3, 2, 17, N'6ea36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (4, 1, 3, 17, N'6fa36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (5, 2, 4, 3, N'70a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (6, 2, 5, 3, N'71a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (7, 1, 5, 3, N'72a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (8, 3, 6, 17, N'73a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (9, 2, 6, 7, N'74a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (10, 1, 6, 7, N'75a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (11, 3, 7, 7, N'76a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (12, 2, 7, 57, N'77a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong], [rowguid]) VALUES (13, 3, 7, 157, N'78a36c71-52ab-ec11-8df3-000c29c99b27')
GO
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang], [rowguid]) VALUES (1, CAST(N'2022-03-18T19:02:08.460' AS DateTime), 250000, NULL, 1, 1, 2, N'65a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang], [rowguid]) VALUES (2, CAST(N'2022-03-18T19:03:36.533' AS DateTime), 17890000, NULL, 1, 2, 1, N'66a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang], [rowguid]) VALUES (3, CAST(N'2022-03-18T19:03:36.537' AS DateTime), 2550000, NULL, 1, 2, 4, N'67a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang], [rowguid]) VALUES (4, CAST(N'2022-03-18T19:03:36.537' AS DateTime), 540000, NULL, 2, 1, 3, N'68a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang], [rowguid]) VALUES (5, CAST(N'2022-03-18T19:02:08.460' AS DateTime), 250000, NULL, 2, 1, 2, N'69a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang], [rowguid]) VALUES (6, CAST(N'2022-03-18T19:03:36.540' AS DateTime), 250000, NULL, 2, 2, 1, N'6aa36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang], [rowguid]) VALUES (7, CAST(N'2022-03-18T19:03:36.577' AS DateTime), 250000, NULL, 3, 2, 1, N'6ba36c71-52ab-ec11-8df3-000c29c99b27')
GO
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT], [rowguid]) VALUES (1, N'Lê Quốc Hoàng', N'018658528', N'53a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT], [rowguid]) VALUES (2, N'Võ Thị Thúy Phương', N'018695711', N'54a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT], [rowguid]) VALUES (3, N'Nguyễn Văn DD', N'0123456789', N'55a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT], [rowguid]) VALUES (4, N'Nguyễn Văn A', N'0776598805', N'56a36c71-52ab-ec11-8df3-000c29c99b27')
GO
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai], [rowguid]) VALUES (1, N'Quần', N'57a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai], [rowguid]) VALUES (2, N'Áo', N'58a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai], [rowguid]) VALUES (3, N'Quan bo', N'59a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai], [rowguid]) VALUES (4, N'Quan bo', N'5aa36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai], [rowguid]) VALUES (5, N'Quan bo', N'5ba36c71-52ab-ec11-8df3-000c29c99b27')
GO
INSERT [dbo].[tbl_NhanVien] ([ID], [HoTen], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [ID_CN], [rowguid]) VALUES (1, N'Nguyễn Quốc Vương', N'16/06/1999', N'50 Huỳnh Thúc Kháng', N'0908907295', N'Chủ  Tịch', N'5000', 1, N'5ca36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_NhanVien] ([ID], [HoTen], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [ID_CN], [rowguid]) VALUES (2, N'Nguyễn Khánh Linh', N'12/05/2000', N'75 Ngô Quyền', N'0182121212', N'Lao Công', N'1000', 2, N'5da36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_NhanVien] ([ID], [HoTen], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [ID_CN], [rowguid]) VALUES (3, N'Lê Qu?c Hoàng', N'15/07/1999', N'80 Lạc Dương', N'018659527', N'Giám Đốc', N'2000', 2, N'5ea36c71-52ab-ec11-8df3-000c29c99b27')
GO
INSERT [dbo].[tbl_SanPham] ([ID], [TenSP], [GiaBan], [LoaiSP], [MoTaSP], [XuatXu], [SoLuong], [ID_LoaiSP], [rowguid]) VALUES (1, N'Áo hoodile', N'150000', N'Áo', N'áo khoác', N'Việt Nam', N'10', 1, N'5fa36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_SanPham] ([ID], [TenSP], [GiaBan], [LoaiSP], [MoTaSP], [XuatXu], [SoLuong], [ID_LoaiSP], [rowguid]) VALUES (2, N'Áo thun', N'180000', N'Áo', N'Áo mặc', N'Đài Loan', N'15', 2, N'60a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_SanPham] ([ID], [TenSP], [GiaBan], [LoaiSP], [MoTaSP], [XuatXu], [SoLuong], [ID_LoaiSP], [rowguid]) VALUES (3, N'Quần âu', N'170000', N'Quần', N'Quần thun', N'Trung Quốc', N'17', 4, N'61a36c71-52ab-ec11-8df3-000c29c99b27')
GO
INSERT [dbo].[tbl_ThuocTinh] ([ID], [Size], [Mau], [SoLuong], [ID_SP], [rowguid]) VALUES (1, N'M', N'Đỏ', N'15', 1, N'62a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ThuocTinh] ([ID], [Size], [Mau], [SoLuong], [ID_SP], [rowguid]) VALUES (2, N'L', N'Đen', N'20', 2, N'63a36c71-52ab-ec11-8df3-000c29c99b27')
INSERT [dbo].[tbl_ThuocTinh] ([ID], [Size], [Mau], [SoLuong], [ID_SP], [rowguid]) VALUES (3, N'XL', N'Hồng', N'25', 3, N'64a36c71-52ab-ec11-8df3-000c29c99b27')
GO
/****** Object:  Index [MSmerge_index_581577110]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_581577110] ON [dbo].[tbl_ChiNhanh]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_613577224]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_613577224] ON [dbo].[tbl_ChiTietHoaDon]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_645577338]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_645577338] ON [dbo].[tbl_HoaDon]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_677577452]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_677577452] ON [dbo].[tbl_KhachHang]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_709577566]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_709577566] ON [dbo].[tbl_LoaiSP]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_741577680]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_741577680] ON [dbo].[tbl_NhanVien]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_773577794]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_773577794] ON [dbo].[tbl_SanPham]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_805577908]    Script Date: 3/31/2022 1:39:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_805577908] ON [dbo].[tbl_ThuocTinh]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_ChiNhanh] ADD  CONSTRAINT [MSmerge_df_rowguid_34AA507E7AA8487CB648410BF05BD627]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon] ADD  CONSTRAINT [MSmerge_df_rowguid_204A2FF1C9AB42B9BC09A2D8F7F80064]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_HoaDon] ADD  CONSTRAINT [DF_tbl_HoaDon_NgayMua]  DEFAULT (getdate()) FOR [NgayMua]
GO
ALTER TABLE [dbo].[tbl_HoaDon] ADD  CONSTRAINT [MSmerge_df_rowguid_1BC68B793DE74B6EADA43FA400215215]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_KhachHang] ADD  CONSTRAINT [MSmerge_df_rowguid_39B169FFA99740BB89789C823EC76F1E]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_LoaiSP] ADD  CONSTRAINT [MSmerge_df_rowguid_18C795462D7544F1BC38A72EA9BBC9E2]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_NhanVien] ADD  CONSTRAINT [MSmerge_df_rowguid_6419829691CE4704AF18E8ECA2BD3810]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_SanPham] ADD  CONSTRAINT [MSmerge_df_rowguid_36F9381CA2964AB8A37806EB8E0489D7]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_ThuocTinh] ADD  CONSTRAINT [MSmerge_df_rowguid_610B04CCB25B4518B193682469E8C8EB]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_HoaDon] FOREIGN KEY([ID_HoaDon])
REFERENCES [dbo].[tbl_HoaDon] ([ID])
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon] CHECK CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_HoaDon]
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_SanPham] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[tbl_SanPham] ([ID])
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon] CHECK CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_SanPham]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang] FOREIGN KEY([ID_KhachHang])
REFERENCES [dbo].[tbl_KhachHang] ([ID])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_NhanVien] FOREIGN KEY([ID_NhanVien])
REFERENCES [dbo].[tbl_NhanVien] ([ID])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_NhanVien]
GO
ALTER TABLE [dbo].[tbl_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NhanVien_tbl_NhanVien] FOREIGN KEY([ID_CN])
REFERENCES [dbo].[tbl_ChiNhanh] ([ID])
GO
ALTER TABLE [dbo].[tbl_NhanVien] CHECK CONSTRAINT [FK_tbl_NhanVien_tbl_NhanVien]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SanPham_tbl_LoaiSP] FOREIGN KEY([ID_LoaiSP])
REFERENCES [dbo].[tbl_LoaiSP] ([ID])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_tbl_SanPham_tbl_LoaiSP]
GO
ALTER TABLE [dbo].[tbl_ThuocTinh]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ThuocTinh_tbl_SanPham] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[tbl_SanPham] ([ID])
GO
ALTER TABLE [dbo].[tbl_ThuocTinh] CHECK CONSTRAINT [FK_tbl_ThuocTinh_tbl_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[AddBranchType]    Script Date: 3/31/2022 1:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[AddBranchType]
@type nvarchar(50),
@id int
AS
BEGIN
  UPDATE tbl_ChiNhanh SET TenCN = @type WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[AddProductType]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[AddProductType]
@loaisp nvarchar(50)
AS
BEGIN
   insert into tbl_LoaiSP(TenLoai) values (@loaisp)
END
GO
/****** Object:  StoredProcedure [dbo].[AddStaffType]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[AddStaffType]
@type nvarchar(50),
@id int
AS
BEGIN
  UPDATE tbl_NhanVien SET HoTen = @type WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteBranchType]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[DeleteBranchType]
@id int
AS
BEGIN
   DELETE  FROM tbl_ChiNhanh
	WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteStaffType]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[DeleteStaffType]
@id int
AS
BEGIN
   DELETE  FROM tbl_NhanVien
	WHERE ID = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[SearchBranchTypeByID]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SearchBranchTypeByID]
@id int
AS
BEGIN
   select *from tbl_ChiNhanh
   where tbl_ChiNhanh.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SearchStaffTypeByID]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SearchStaffTypeByID]
@id int
AS
BEGIN
   select *from tbl_NhanVien
   where tbl_NhanVien.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[ViewBranchType]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[ViewBranchType]
AS
BEGIN
   select *from tbl_ChiNhanh
END
GO
/****** Object:  StoredProcedure [dbo].[ViewStaffType]    Script Date: 3/31/2022 1:39:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[ViewStaffType]
AS
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanQuanAo] SET  READ_WRITE 
GO
