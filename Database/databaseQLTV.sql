﻿USE [DOAnQLTV]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taiKhoan] [varchar](24) NOT NULL,
	[matKhau] [nvarchar](24) NOT NULL,
	[MaDG] [char](4) NULL,
 CONSTRAINT [PK__Account__3213E83F338920D9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Account__B4C45318EC710BEF] UNIQUE NONCLUSTERED 
(
	[taiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUMUON]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUMUON](
	[MaPM] [char](4) NOT NULL,
	[MaSach] [char](4) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[TinhTrangSach] [nvarchar](10) NULL,
 CONSTRAINT [PK__CT_PHIEU__EC06B0BDDAA1CF29] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[MaDG] [char](4) NOT NULL,
	[TenDG] [nvarchar](35) NOT NULL,
	[NgaySinhDG] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[SDTDG] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK__DOCGIA__27258660B2783026] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__DOCGIA__DD061A194E9F534D] UNIQUE NONCLUSTERED 
(
	[SDTDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KESACH]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KESACH](
	[MaKeSach] [char](6) NOT NULL,
	[ViTri] [nvarchar](9) NULL,
 CONSTRAINT [PK__KESACH__8582FBBE950E0B56] PRIMARY KEY CLUSTERED 
(
	[MaKeSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [char](4) NOT NULL,
	[TenNV] [nvarchar](35) NULL,
	[NgaySinhNV] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[SDT] [nvarchar](15) NULL,
	[ChucVu] [nvarchar](9) NULL,
 CONSTRAINT [PK__NHANVIEN__2725D70ADAEFC803] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__NHANVIEN__CA1930A5B2EB9268] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNXB] [char](5) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[SDTNXB] [nvarchar](15) NULL,
 CONSTRAINT [PK__NHAXUATB__3A19482CDDEDF266] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__NHAXUATB__D7769699169E4C68] UNIQUE NONCLUSTERED 
(
	[SDTNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[MaPM] [char](4) NOT NULL,
	[MaNV] [char](4) NULL,
	[MaDG] [char](4) NULL,
 CONSTRAINT [PK__PHIEUMUO__2725E7FF6B8646EB] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [char](4) NOT NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[MaTL] [char](4) NULL,
	[MaNXB] [char](5) NULL,
	[NamXB] [int] NULL,
	[MaKeSach] [char](6) NULL,
 CONSTRAINT [PK__SACH__B235742D7A28F812] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[support]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[support](
	[mssv] [char](10) NOT NULL,
	[hoTen] [nvarchar](35) NULL,
	[gioiTinh] [char](3) NULL,
	[SDT] [char](10) NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mssv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 09/08/2022 19:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MaTL] [char](4) NOT NULL,
	[TenTL] [nvarchar](35) NULL,
 CONSTRAINT [PK__THELOAI__272500717A0E0297] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Account__MaDG__4865BE2A] FOREIGN KEY([MaDG])
REFERENCES [dbo].[DOCGIA] ([MaDG])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Account__MaDG__4865BE2A]
GO
ALTER TABLE [dbo].[CT_PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK__CT_PHIEUM__MaSac__690797E6] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CT_PHIEUMUON] CHECK CONSTRAINT [FK__CT_PHIEUM__MaSac__690797E6]
GO
ALTER TABLE [dbo].[CT_PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK__CT_PHIEUMU__MaPM__681373AD] FOREIGN KEY([MaPM])
REFERENCES [dbo].[PHIEUMUON] ([MaPM])
GO
ALTER TABLE [dbo].[CT_PHIEUMUON] CHECK CONSTRAINT [FK__CT_PHIEUMU__MaPM__681373AD]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK__PHIEUMUON__MaDG__44CA3770] FOREIGN KEY([MaDG])
REFERENCES [dbo].[DOCGIA] ([MaDG])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK__PHIEUMUON__MaDG__44CA3770]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK__PHIEUMUON__MaNV__43D61337] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK__PHIEUMUON__MaNV__43D61337]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK__SACH__MaKeSach__5D95E53A] FOREIGN KEY([MaKeSach])
REFERENCES [dbo].[KESACH] ([MaKeSach])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK__SACH__MaKeSach__5D95E53A]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK__SACH__MaNXB__5E8A0973] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK__SACH__MaNXB__5E8A0973]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK__SACH__MaTL__5F7E2DAC] FOREIGN KEY([MaTL])
REFERENCES [dbo].[THELOAI] ([MaTL])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK__SACH__MaTL__5F7E2DAC]
GO

create trigger check_Account on Account 
for insert as
BEGIN
	IF exists (
				select taiKhoan, matKhau 
				from Account
				group by taiKhoan, matKhau
				having LEN(taiKhoan) < 6 or LEN(matKhau) < 6
			  )
	BEGIN
		PRINT N'Tài khoản và mật khẩu phải có tối thiểu 6 ký tự'
		ROLLBACK TRAN
	END
END
	
go

create table support
(
	mssv char(10) primary key,
	hoTen nvarchar(35),
	gioiTinh nvarchar(3),
	SDT nvarchar(15) unique,
	email varchar(50) unique,
) 
create table TheTV
(
	maTTV char(5) primary key,
	MaDG char(4),
	foreign key (MaDG) references DOCGIA(MaDG)
	
) 


select b.MaSach 'Mã sách', b.TenSach 'Tên sách', b.TenTacGia 'Tên tác giả', c.TenTL 'Thể loại' , d.TenNXB 'Tên NXB' ,b.NamXB 'Năm XB' from KESACH as a, SACH as b, THELOAI as c, NHAXUATBAN as d where a.MaKeSach = b.MaKeSach and b.MaTL = c.MaTL and d.MaNXB = b.MaNXB 
EXCEPT
select distinct b.MaSach 'Mã sách', b.TenSach 'Tên sách', b.TenTacGia 'Tên tác giả', c.TenTL 'Thể loại' , d.TenNXB 'Tên NXB'   ,b.NamXB 'Năm XB' from CT_PHIEUMUON as a, SACH as b, THELOAI as c, NHAXUATBAN as d where a.MaSach = b.MaSach and b.MaTL = c.MaTL and d.MaNXB = b.MaNXB
select count(*) from SACH
select distinct b.MaSach 'Mã sách', b.TenSach 'Tên sách', b.TenTacGia 'Tên tác giả', c.TenTL 'Thể loại' , d.TenNXB  ,b.NamXB
from CT_PHIEUMUON as a, SACH as b, THELOAI as c, NHAXUATBAN as d
where b.MaTL = c.MaTL and d.MaNXB = b.MaNXB and a.MaSach = b.MaSach
group by a.MaPM

