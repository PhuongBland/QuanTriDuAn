

USE [QuanLyBanQuanAo]
GO
/****** Object:  Table [dbo].[tbl_ChiNhanh]    Script Date: 3/18/2022 7:06:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiNhanh](
	[ID] [int] NOT NULL,
	[TenCN] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHoaDon]    Script Date: 3/18/2022 7:06:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHoaDon](
	[ID] [int] NOT NULL,
	[ID_SP] [int] NOT NULL,
	[ID_HoaDon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 3/18/2022 7:06:24 PM ******/
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
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 3/18/2022 7:06:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[ID] [int] NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiSP]    Script Date: 3/18/2022 7:06:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiSP](
	[ID] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 3/18/2022 7:06:24 PM ******/
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
 CONSTRAINT [PK_tbl_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 3/18/2022 7:06:24 PM ******/
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
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThuocTinh]    Script Date: 3/18/2022 7:06:24 PM ******/
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
 CONSTRAINT [PK_tbl_ThuocTinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_ChiNhanh] ([ID], [TenCN]) VALUES (1, N'Bùi Thị Xuân')
INSERT [dbo].[tbl_ChiNhanh] ([ID], [TenCN]) VALUES (2, N'Trần Phú')
GO
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (1, 1, 2, 100)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (2, 2, 1, 15)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (3, 3, 2, 17)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (4, 1, 3, 17)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (5, 2, 4, 3)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (6, 2, 5, 3)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (7, 1, 5, 3)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (8, 3, 6, 17)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (9, 2, 6, 7)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (10, 1, 6, 7)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (11, 3, 7, 7)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (12, 2, 7, 57)
INSERT [dbo].[tbl_ChiTietHoaDon] ([ID], [ID_SP], [ID_HoaDon], [SoLuong]) VALUES (13, 3, 7, 157)
GO
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang]) VALUES (1, CAST(N'2022-03-18T19:02:08.460' AS DateTime), 250000, NULL, 3, 1, 2)
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang]) VALUES (2, CAST(N'2022-03-18T19:03:36.533' AS DateTime), 17890000, NULL, 3, 2, 1)
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang]) VALUES (3, CAST(N'2022-03-18T19:03:36.537' AS DateTime), 2550000, NULL, 3, 2, 4)
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang]) VALUES (4, CAST(N'2022-03-18T19:03:36.537' AS DateTime), 540000, NULL, 3, 1, 3)
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang]) VALUES (5, CAST(N'2022-03-18T19:02:08.460' AS DateTime), 250000, NULL, 3, 1, 2)
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang]) VALUES (6, CAST(N'2022-03-18T19:03:36.540' AS DateTime), 250000, NULL, 3, 2, 1)
INSERT [dbo].[tbl_HoaDon] ([ID], [NgayMua], [TongTien], [GiamGia], [ID_NhanVien], [ID_ChiNhanh], [ID_KhachHang]) VALUES (7, CAST(N'2022-03-18T19:03:36.577' AS DateTime), 250000, NULL, 3, 2, 1)
GO
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT]) VALUES (1, N'Lê Quốc Hoàng', N'018658528')
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT]) VALUES (2, N'Võ Thị Thúy Phương', N'018695711')
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT]) VALUES (3, N'Nguyễn Văn DD', N'0123456789')
INSERT [dbo].[tbl_KhachHang] ([ID], [TenKH], [SDT]) VALUES (4, N'Nguyễn Văn A', N'0776598805')
GO
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai]) VALUES (1, N'Quần')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai]) VALUES (2, N'Áo')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai]) VALUES (3, N'Quan bo')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai]) VALUES (4, N'Quan bo')
INSERT [dbo].[tbl_LoaiSP] ([ID], [TenLoai]) VALUES (5, N'Quan bo')
GO
INSERT [dbo].[tbl_NhanVien] ([ID], [HoTen], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [ID_CN]) VALUES (1, N'Nguyễn Quốc Vương', N'16/06/1999', N'50 Huỳnh Thúc Kháng', N'0908907295', N'Chủ  Tịch', N'5000', 1)
INSERT [dbo].[tbl_NhanVien] ([ID], [HoTen], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [ID_CN]) VALUES (2, N'Nguyễn Khánh Linh', N'12/05/2000', N'75 Ngô Quyền', N'0182121212', N'Lao Công', N'1000', 2)
INSERT [dbo].[tbl_NhanVien] ([ID], [HoTen], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [ID_CN]) VALUES (3, N'Lê Qu?c Hoàng', N'15/07/1999', N'80 Lạc Dương', N'018659527', N'Giám Đốc', N'2000', 2)
GO
INSERT [dbo].[tbl_SanPham] ([ID], [TenSP], [GiaBan], [LoaiSP], [MoTaSP], [XuatXu], [SoLuong], [ID_LoaiSP]) VALUES (1, N'Áo hoodile', N'150000', N'Áo', N'áo khoác', N'Việt Nam', N'10', 1)
INSERT [dbo].[tbl_SanPham] ([ID], [TenSP], [GiaBan], [LoaiSP], [MoTaSP], [XuatXu], [SoLuong], [ID_LoaiSP]) VALUES (2, N'Áo thun', N'180000', N'Áo', N'Áo mặc', N'Đài Loan', N'15', 2)
INSERT [dbo].[tbl_SanPham] ([ID], [TenSP], [GiaBan], [LoaiSP], [MoTaSP], [XuatXu], [SoLuong], [ID_LoaiSP]) VALUES (3, N'Quần âu', N'170000', N'Quần', N'Quần thun', N'Trung Quốc', N'17', 4)
GO
INSERT [dbo].[tbl_ThuocTinh] ([ID], [Size], [Mau], [SoLuong], [ID_SP]) VALUES (1, N'M', N'Đỏ', N'15', 1)
INSERT [dbo].[tbl_ThuocTinh] ([ID], [Size], [Mau], [SoLuong], [ID_SP]) VALUES (2, N'L', N'Đen', N'20', 2)
INSERT [dbo].[tbl_ThuocTinh] ([ID], [Size], [Mau], [SoLuong], [ID_SP]) VALUES (3, N'XL', N'Hồng', N'25', 3)
GO
ALTER TABLE [dbo].[tbl_HoaDon] ADD  CONSTRAINT [DF_tbl_HoaDon_NgayMua]  DEFAULT (getdate()) FOR [NgayMua]
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
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_ChiNhanh] FOREIGN KEY([ID_ChiNhanh])
REFERENCES [dbo].[tbl_ChiNhanh] ([ID])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_ChiNhanh]
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
/****** Object:  StoredProcedure [dbo].[AddBranchType]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AddProductType]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AddStaffType]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteBranchType]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteStaffType]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SearchBranchTypeByID]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SearchStaffTypeByID]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ViewBranchType]    Script Date: 3/18/2022 7:06:24 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ViewStaffType]    Script Date: 3/18/2022 7:06:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[ViewStaffType]
AS
GO
----------------BÀI TẬP------------------------------
--6. Thống kê: 
--các mặt hàng bán chạy nhất,-- nhiều sản phẩm nhất
SELECT *
FROM tbl_SanPham
WHERE ID = (SELECT TOP 1 CTHD.ID_SP
				FROM tbl_ChiTietHoaDon CTHD
				GROUP BY CTHD.ID_SP
				ORDER BY SUM(CTHD.SoLuong) DESC)
--khách hàng mua nhiều hàng nhất, 
SELECT TOP 1 KH.TenKH, SUM(CTHD.SoLuong) AS TONGSOLUONG
FROM tbl_KhachHang KH, tbl_HoaDon HD, tbl_ChiTietHoaDon CTHD
WHERE KH.ID = HD.ID_KhachHang AND HD.ID = CTHD.ID_HoaDon
GROUP BY KH.TenKH
ORDER BY TONGSOLUONG DESC
--sản phẩm có doanh thu cao nhất, 
SELECT *, (SELECT TOP 1 SUM(CTHD.SoLuong * SP.GiaBan)
				FROM tbl_ChiTietHoaDon CTHD, tbl_SanPham SP
				WHERE SP.ID = CTHD.ID_SP
				GROUP BY CTHD.ID_SP
				ORDER BY SUM(CTHD.SoLuong * SP.GiaBan) DESC) AS TONGDOANHTHU
FROM tbl_SanPham
WHERE ID = (SELECT TOP 1 CTHD.ID_SP
				FROM tbl_ChiTietHoaDon CTHD, tbl_SanPham SP
				WHERE SP.ID = CTHD.ID_SP
				GROUP BY CTHD.ID_SP
				ORDER BY SUM(CTHD.SoLuong * SP.GiaBan) DESC)
--nhân viên bán được nhiều hàng nhất,
SELECT TOP 1 NV.HoTen, SUM(CTHD.SoLuong) AS TONGSOLUONG
FROM tbl_NhanVien NV, tbl_HoaDon HD, tbl_ChiTietHoaDon CTHD
WHERE NV.ID = HD.ID_NhanVien AND HD.ID = CTHD.ID_HoaDon
GROUP BY NV.HoTen
ORDER BY TONGSOLUONG DESC
--nhân viên không bán được sản phẩm nào (theo chí nhánh và theo công ty)
SELECT NV.HoTen, SUM(CTHD.SoLuong) AS TONGSOLUONG
FROM tbl_NhanVien NV, tbl_HoaDon HD, tbl_ChiTietHoaDon CTHD
WHERE NV.ID = HD.ID_NhanVien AND HD.ID = CTHD.ID_HoaDon
GROUP BY NV.HoTen
HAVING SUM(CTHD.SoLuong) = 0


