



/****** Object:  Table [dbo].[tblKHACHHANG]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](200) NOT NULL,
	[DIACHI] [nvarchar](300) NOT NULL,
	[DIENTHOAI] [varchar](11) NULL,
	[EMAIL] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLOAIDIENTHOAI]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOAIDIENTHOAI](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNHACUNGCAP]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNHACUNGCAP](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCC] [nvarchar](200) NOT NULL,
	[DIACHI] [nvarchar](300) NOT NULL,
	[DIENTHOAI] [nvarchar](11) NULL,
	[EMAIL] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNHANVIEN]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[TENNV] [nvarchar](200) NOT NULL,
	[DIACHI] [nvarchar](300) NOT NULL,
	[DIENTHOAI] [varchar](11) NULL,
	[EMAIL] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDIENTHOAI]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDIENTHOAI](
	[MADT] [int] IDENTITY(1,1) NOT NULL,
	[TENDT] [nvarchar](200) NOT NULL,
	[HINH] [varchar](50) NOT NULL,
	[GIAMUA] [money] NOT NULL,
	[GIABAN] [money] NOT NULL,
	[MOTA] [nvarchar](2000) NOT NULL,
	[MALOAI] [int] NOT NULL,
	[SLTON] [int] NOT NULL,
 CONSTRAINT [PK__tblDIENT__603F005BAA208042] PRIMARY KEY CLUSTERED 
(
	[MADT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tblNHAPKHO]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNHAPKHO](
	[MAPNK] [int] IDENTITY(1,1) NOT NULL,
	[NGAYNHAP] [date] NULL,
	[TONGTG] [money] NULL,
	[MANV] [int] NULL,
	[MANCC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCTPNHAPKHO]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCTPNHAPKHO](
	[MAPNK] [int] NOT NULL,
	[MADT] [int] NOT NULL,
	[SL] [int] NULL,
	[GIANHAP] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPNK] ASC,
	[MADT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHOADON]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAP] [date] NULL,
	[TONGTG] [money] NULL,
	[HANBAOHANH] [date] NULL,
	[MAKH] [int] NULL,
	[MANV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCTHD]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCTHD](
	[MAHD] [int] NOT NULL,
	[MADT] [int] NOT NULL,
	[SLMUA] [int] NOT NULL,
	[GIABAN] [money] NOT NULL,
 CONSTRAINT [PK__tblCTHD__C63CD0CBACD47E17] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC,
	[MADT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTAIKHOAN]    Script Date: 02/04/2023 12:45:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTAIKHOAN](
	[userID] [varchar](20) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[role] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (13, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (14, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (15, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (16, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (17, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (18, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (19, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (20, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (21, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (22, 1, 1, 21990000.0000)
INSERT [dbo].[tblCTHD] ([MAHD], [MADT], [SLMUA], [GIABAN]) VALUES (23, 1, 1, 21990000.0000)
GO
INSERT [dbo].[tblCTPNHAPKHO] ([MAPNK], [MADT], [SL], [GIANHAP]) VALUES (1, 2, 20, 0.0000)
INSERT [dbo].[tblCTPNHAPKHO] ([MAPNK], [MADT], [SL], [GIANHAP]) VALUES (2, 14, 10, 0.0000)
INSERT [dbo].[tblCTPNHAPKHO] ([MAPNK], [MADT], [SL], [GIANHAP]) VALUES (3, 16, 30, 0.0000)
INSERT [dbo].[tblCTPNHAPKHO] ([MAPNK], [MADT], [SL], [GIANHAP]) VALUES (4, 19, 20, 0.0000)
INSERT [dbo].[tblCTPNHAPKHO] ([MAPNK], [MADT], [SL], [GIANHAP]) VALUES (5, 36, 15, 0.0000)
INSERT [dbo].[tblCTPNHAPKHO] ([MAPNK], [MADT], [SL], [GIANHAP]) VALUES (6, 14, 1, 14000000.0000)
GO
SET IDENTITY_INSERT [dbo].[tblDIENTHOAI] ON 

INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (1, N'iPhone 14', N'/Content/images/ip-14.jpg', 11990000.0000, 21990000.0000, N'Màn hình:OLED6.1"Super Retina XDRHệ điều hành: IOS 16Camera sau: 2 camera 12 MPCamera trước: 12 MPChip: Apple A15 BionicRAM: 6 GBDung lượng lưu trữ: 128 GBSIM: 1 Nano SIM & 1 eSIM hỗ trợ 5GPin, Sạc: 3279mAh 20W', 1, 25)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (2, N'iPhone 14 Pro Max', N'/Content/images/ip-14pm.jpg', 20190000.0000, 24890000.0000, N'Thiết kế và chất liệu: Khung viền thép không gỉ và mặt lưng kính.

- Kích thước, trọng lượng: 160 x 77.6 x 7.85 mm, trọng lượng 240 gam.

- Màn hình: OLED 6.7 inch, công nghệ màn hình Super Retina XDR. Độ phân giải 2796 x 1290 Pixels, tần số quét 120Hz.

- Camera: Trước 12 MP. Sau 48 MP, 12 MP, 12 MP.', 1, 76)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (3, N'iPhone 14 Plus', N'/Content/images/ip-14-plus.jpg', 14490000.0000, 24490000.0000, N'Màn hình:
OLED6.7"Super Retina XDR
Hệ điều hành: iOS 16
Camera sau: 2 camera 12 MP
Camera trước: 12 MP
Chip: Apple A15 Bionic
RAM: 6 GB
Dung lượng lưu trữ: 128 GB
SIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G
Pin, Sạc: 4325 mAh20 W', 1, 25)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (4, N'iPhone 8 Plus', N'/Content/images/iPh-8-plus.jpg', 3990000.0000, 6990000.0000, N'Kích thước màn hình 5.5 inches
Camera sau 12 MP (f/1.8, 28mm, OIS) + 12 MP (f/2.8, 57mm), tự động lấy nét nhận diện theo giai đoạn, zoom quang 2x, 4 LED flash (2 tone)
Camera trước 7 MP, f/2.2, 1080p@30fps, 720p@240fps, nhận diện khuôn mặt, HDR, panorama
Chipset Apple A11 Bionic APL1W72
Dung lượng RAM 3 GB
Bộ nhớ trong 64 GB
Pin Li-ion 2691mAh
Thẻ SIM Nano-SIM
Hệ điều hành 11
Độ phân giải màn hình 1080 x 1920 pixels (FullHD)
Trọng lượng 202 g (7.13 oz)', 1, 7)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (5, N'iPhone 13 Pro Max', N'/Content/images/iph-13-Promax.jpg', 15990000.0000, 27990000.0000, N'
Màn hình: OLED 6.7" Super Retina XDR
Hệ điều hành: iOS 15
Camera sau: 3 camera 12 MP
Camera trước: 12 MP
Chip: Apple A15 Bionic
RAM: 6 GB
Dung lượng lưu trữ: 512 GB
SIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G
Pin, Sạc: 4352mAh 20W', 1, 13)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (13, N'Samsung Galaxy A23', N'/Content/images/ss-galaxy-A23.jpg', 4690000.0000, 54900000.0000, N'
Màn hình: PLS TFT LCD 6.6", Full HD+
Hệ điều hành: Android 12
Camera sau: Chính 50 MP & Phụ 5 MP, 2 MP, 2 MP
Camera trước: 8 MP
Chip: Snapdragon 680
RAM: 6 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 5000mAh 25W', 2, 125)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (14, N'Samsung Galaxy Z Flip4', N'/Content/images/sszflip4.jpg', 14000000.0000, 19990000.0000, N'Màn hình: 6.7 inch (màn hình chính Dynamic AMOLED 2X), 2.1 inch (màn hình phụ Super AMOLED), tần số quét 120 Hz.
Chip: Snapdragon 8+ Gen 1.
RAM: 8 GB.
Bộ nhớ trong: 256 GB, 512 GB.
Hệ điều hành: Android 12.
Pin: 3.700 mAh (2 viên pin), sạc nhanh 25 W.
Camera sau: 12 MP + 12 MP.
Camera selfie: 10 MP.', 2, 99)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (15, N'Samsung Galaxy S21 FE 5G', N'/Content/images/ss-galaxy-S21FE.jpg', 8000000.0000, 12000000.0000, N'
Màn hình: Dynamic AMOLED 2X6.4", Full HD+
Hệ điều hành: Android 12
Camera sau: Chính 12 MP & Phụ 12 MP, 8 MP
Camera trước: 32 MP
Chip: Exynos 2100
RAM: 6 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 5G
Pin, Sạc: 4500mAh 25W', 2, 72)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (16, N'Samsung S23 Ultra', N'/Content/images/sss23.jpg', 17990000.0000, 26990000.0000, N'Màn hình OLED kích thước 6.8 inch (3.088 × 1.440 pixel) hỗ trợ HDR10+, tần số quét 1-120 Hz và độ sáng 1.750 nits, máy có tùy chọn bộ nhớ RAM 8 GB hoặc 12 GB tương ứng với ba phiên bản bộ nhớ trong: 256 GB, 512 GB và 1 TB.', 2, 142)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (17, N'OPPO Reno8 Pro 5G', N'/Content/images/oppo-reno-8-5g.jpg', 10890000.0000, 17990000.0000, N'Màn:	AMOLED, 6.7", Full HD+
Hệ Điều Hành:	Android 12
Camera Sau:	Chính 50 MP & Phụ 8 MP, 2 MP
Camera Trước:	32 MP
CPU:	MediaTek Dimensity 8100 Max 8 nhân
Ram:	12 GB
Bộ nhớ trong:	256 GB
Thẻ Sim:	2 Nano SIM, Hỗ trợ 5G
Dung lượng pin: 4500mAh, 80W', 3, 68)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (18, N'OPPO Reno6 Pro 5G', N'/Content/images/op-reno6-pro.jpg', 10000000.0000, 13990000.0000, N'
Màn hình: AMOLED 6.55", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 50 MP & Phụ 16 MP, 13 MP, 2 MP
Camera trước: 32 MP
Chip: Snapdragon 870 5G
RAM: 12 GB
Dung lượng lưu trữ: 256 GB
SIM: 2 Nano SIM, Hỗ trợ 5G
Pin, Sạc: 4500mAh 65W', 3, 75)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (19, N'Xiaomi 11T 5G', N'/Content/images/xiaomi-11t-1.jpg', 2890000.0000, 8990000.0000, N'Màn hình:

AMOLED6.67"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 108 MP & Phụ 8 MP, 5 MP
Camera trước:

16 MP
Chip:

MediaTek Dimensity 1200
RAM:

8 GB
Dung lượng lưu trữ:

256 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

5000mAh 67 W', 4, 42)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (20, N'OPPO A96', N'/Content/images/op-A96.jpg', 5600000.0000, 6990000.0000, N'
Màn hình: IPS LCD 6.59", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 50 MP & Phụ 2 MP
Camera trước: 16 MP
Chip: Snapdragon 680
RAM: 8 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 5000mAh 33W', 3, 87)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (21, N'Xiaomi 13 Pro', N'/Content/images/xi-13-Pro.jpg', 23000000.0000, 29990000.0000, N'
Màn hình: AMOLED 6.73" Quad HD+ (2K+)
Hệ điều hành: Android 13
Camera sau: Chính 50 MP & Phụ 50 MP, 50 MP
Camera trước: 32 MP
Chip: Snapdragon 8 Gen 2 8 nhân
RAM: 12 GB
Dung lượng lưu trữ: 256 GB
SIM: 2 Nano SIM, Hỗ trợ 5G
Pin, Sạc: 4820mAh 120W', 6, 39)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (22, N'Xiaomi Redmi Note 11 Pro 5G', N'/Content/images/xi-redmi-note11.jpg', 6000000.0000, 7890000.0000, N'
Màn hình: AMOLED 6.67", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP
Camera trước: 16 MP
Chip: Snapdragon 695 5G
RAM: 8 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G
Pin, Sạc: 5000mAh 67W', 4, 54)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (35, N'Realme 9 Pro+ 5G ', N'/Content/images/realme-9-pro-plus-1-1.jpg', 3490000.0000, 8490000.0000, N'Màn hình:

Super AMOLED6.4"Full HD+
Hệ điều hành:

Android 12
Camera sau:

Chính 50 MP & Phụ 8 MP, 2 MP
Camera trước:

16 MP
Chip:

MediaTek Dimensity 920 5G
RAM:

8 GB
Dung lượng lưu trữ:

128 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

4500 mAh60 W', 6, 124)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (36, N'Vivo V25 Pro 5G', N'/Content/images/vivo-v25-pro-5g-sld-xanh-1.jpg', 3890000.0000, 11990000.0000, N'Màn hình:

AMOLED6.56"Full HD+
Hệ điều hành:

Android 12
Camera sau:

Chính 64 MP & Phụ 8 MP, 2 MP
Camera trước:

32 MP
Chip:

MediaTek Dimensity 1300
RAM:

8 GB
Dung lượng lưu trữ:

128 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

4830 mAh66 W', 8, 65)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (37, N'Realme 10', N'/Content/images/rm10.jpg', 5000000.0000, 6870000.0000, N'
Màn hình: Super AMOLED 6.4"Full HD+
Hệ điều hành: Android 12
Camera sau: Chính 50 MP & Phụ 2 MP
Camera trước: 16 MP
Chip: MediaTek Helio G99
RAM: 8 GB
Dung lượng lưu trữ: 256 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 5000mAh 33W', 6, 83)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (38, N'Realme 8 Pro', N'/Content/images/rm-8-pro.jpg', 2790000.0000, 5790000.0000, N'
Màn hình: Super AMOLED 6.4", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 108 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước: 16 MP
Chip: Snapdragon 720G
RAM: 8 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 4500mAh 50W', 6, 73)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (39, N' Vivo Y02s', N'/Content/images/vv-Y02s.jpg', 2500000.0000, 3400000.0000, N'
Màn hình: IPS LCD 6.51"HD+
Hệ điều hành: Android 12
Camera sau: 8 MP
Camera trước: 5 MP
Chip: MediaTek Helio P35
RAM: 3 GB
Dung lượng lưu trữ: 32 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 5000mAh 10W', 8, 38)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (40, N'Vivo Y16', N'/Content/images/vv-Y16.jpg', 3000000.0000, 4400000.0000, N'
Màn hình: IPS LCD 6.51"HD+
Hệ điều hành: Android 12
Camera sau: Chính 13 MP & Phụ 2 MP
Camera trước: 5 MP
Chip: MediaTek Helio P35
RAM: 4 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 5000mAh 10W', 8, 42)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (41, N'Vivo V25E', N'/Content/images/vv-V25E.jpg', 6000000.0000, 7490000.0000, N'
Màn hình: AMOLED 6.44", Full HD+
Hệ điều hành: Android 12
Camera sau: Chính 64 MP & Phụ 2 MP, 2 MP
Camera trước: 32 MP
Chip: MediaTek Helio G99
RAM: 8 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 4500mAh 44W', 8, 120)
INSERT [dbo].[tblDIENTHOAI] ([MADT], [TENDT], [HINH], [GIAMUA], [GIABAN], [MOTA], [MALOAI], [SLTON]) VALUES (42, N'Vivo Y35', N'/Content/images/vv-y35.jpg', 5090000.0000, 6990000.0000, N'
Màn hình: IPS LCD 6.58", Full HD+
Hệ điều hành: Android 12
Camera sau: Chính 50 MP & Phụ 2 MP, 2 MP
Camera trước: 16 MP
Chip: Snapdragon 680
RAM: 8 GB
Dung lượng lưu trữ: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, Sạc: 5000mAh 44W', 8, 65)
SET IDENTITY_INSERT [dbo].[tblDIENTHOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHOADON] ON 

INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (13, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (14, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (15, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (16, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (17, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (18, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (19, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (20, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (21, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (22, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
INSERT [dbo].[tblHOADON] ([MAHD], [NGAYLAP], [TONGTG], [HANBAOHANH], [MAKH], [MANV]) VALUES (23, CAST(N'2023-03-27' AS Date), 21990000.0000, CAST(N'2024-03-27' AS Date), 11, 1)
SET IDENTITY_INSERT [dbo].[tblHOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKHACHHANG] ON 

INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (1, N'Nguyễn Thị Hồng H', N'570 Đ. Phạm Văn Đồng, Hiệp Bình Phước, Thủ Đức, Thành phố Hồ Chí Minh', N'0359290331', N'nguyenthihonghang123@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (2, N'Phạm Minh Nhật', N'275 Nguyễn Xí, Phường 13, Bình Thạnh, Thành phố Hồ Chí Minh', N'0939383288', N'phamminhnhat456@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (3, N'Lỷ Thanh Kỳ', N'56 Đặng Văn Bi, Bình Thọ, Thủ Đức, Thành phố Hồ Chí Minh', N'0576342446', N'thanhky23@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (4, N'Dương Minh Mẫn', N'49 Nguyễn Xiển, Trường Thạnh, Quận 9, Thành phố Hồ Chí Minh', N'0792202675', N'minhman78@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (5, N'Trần Thị Yến Nhi', N'25 Đ. Lê Văn Việt, Hiệp Phú, Quận 9, Thành phố Hồ Chí Minh', N'0534827499', N'yennhi133@gmailcom')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (6, N'Huỳnh Thị Thùy Trang', N'98 Đ. Man Thiện, Hiệp Phú, Quận 9, Thành phố Hồ Chí Minh', N'0358739287', N'tranghuynh456@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (11, N'Nguyễn Văn Y', N'12/23', N'0369998789', N'abc@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (22, N'Nguyễn Văn F', N'12 lê văn chí', N'0369998783', N'trinh10a2@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (23, N'Nguyễn Văn G', N'a', N'0369998789', N'abc@gmail.com')
INSERT [dbo].[tblKHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (24, N'b', N'12/23', N'0369998756', N'trinh10a2@gmail.com')
SET IDENTITY_INSERT [dbo].[tblKHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLOAIDIENTHOAI] ON 

INSERT [dbo].[tblLOAIDIENTHOAI] ([MALOAI], [TENLOAI]) VALUES (1, N'APPLE')
INSERT [dbo].[tblLOAIDIENTHOAI] ([MALOAI], [TENLOAI]) VALUES (2, N'SAMSUNG')
INSERT [dbo].[tblLOAIDIENTHOAI] ([MALOAI], [TENLOAI]) VALUES (3, N'OPPO')
INSERT [dbo].[tblLOAIDIENTHOAI] ([MALOAI], [TENLOAI]) VALUES (4, N'XIAOMI')
INSERT [dbo].[tblLOAIDIENTHOAI] ([MALOAI], [TENLOAI]) VALUES (6, N'REALME')
INSERT [dbo].[tblLOAIDIENTHOAI] ([MALOAI], [TENLOAI]) VALUES (8, N'VIVO')
SET IDENTITY_INSERT [dbo].[tblLOAIDIENTHOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNHACUNGCAP] ON 

INSERT [dbo].[tblNHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (1, N'Công Ty TNHH Mi Home', N'261 Lê Lợi, P. Lê Lợi, Q. Ngô Quyền, Tp. Hải Phòng', N'0365888866', N'info@mihome.vn')
INSERT [dbo].[tblNHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (2, N'Công Ty Nokia', N'Phòng 703, Tầng7, Tòa Nhà Metropolitan, 235 Đồng Khởi, P. Bến Nghé, Q. 1, Tp. Hồ Chí Minh (TPHCM)', N'02838236894', N'chau.nguyen@nokia.com')
INSERT [dbo].[tblNHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (3, N'Công Ty TNHH Thế Giới Di Động', N'Phòng 6.5, Tầng6, Tòa Nhà E. Town 2, 364 Cộng Hòa, P. 13, Q. Tân Bình, Tp. Hồ Chí Minh (TPHCM)', N'02835100109', N'lienhe@thegioididong.com')
INSERT [dbo].[tblNHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (4, N'Công ty TNHH Thương Mại Công Nghệ Bạch Long', N'134 Trần Phú, phường 4, quận 5, Tp. Hồ Chí Minh (TPHCM)', N'869287135', N'marketing@bachlongmobile.com')
INSERT [dbo].[tblNHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (5, N'Doanh nghiệp tư nhân Ngọc An Khang', N'261P Trần Hưng Đạo, Hẻm 8, Mỹ Xuyên, Long Xuyên, An Giang', N'0909577752', N'ngoc0909577752@gmail.com')
INSERT [dbo].[tblNHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (6, N'Công Ty TNHH Đầu Tư & Phân Phối Thiết Bị Viễn Thông Long Hưng', N'73-75-77-79 Nguyễn Đình Chiểu, P. 1, Bến Tre', N'02753819999', N'longhungbentre@yahoo.com.vn')
SET IDENTITY_INSERT [dbo].[tblNHACUNGCAP] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNHANVIEN] ON 

INSERT [dbo].[tblNHANVIEN] ([MANV], [TENNV], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (1, N'Trần Thế Vinh', N'12B,KP8,Tân Hòa,Biên Hòa,Đồng Nai', N'0369997678', N'vinhtranthe117@gmail.com')
INSERT [dbo].[tblNHANVIEN] ([MANV], [TENNV], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (2, N'Phạm Ngọc Mạnh', N'100 Quốc lộ 13,HIệp Bình Chánh,Thủ Đức,Tp.HCM', N'0986372723', N'phammanh@gmail.com')
INSERT [dbo].[tblNHANVIEN] ([MANV], [TENNV], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (3, N'Bùi Ngọc Khánh Vy', N'75/2 Tân Lập 2,Quận 9,Tp.HCM', N'0357167162', N'Vy112@gmail.com')
INSERT [dbo].[tblNHANVIEN] ([MANV], [TENNV], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (4, N'Phạm Đăng Trình', N'22 Đường số 4,Hiệp Bình Chánh,Thủ Đức,Tp.HCM', N'0397672505', N'trinh10a2@gmail.com')
SET IDENTITY_INSERT [dbo].[tblNHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNHAPKHO] ON 

INSERT [dbo].[tblNHAPKHO] ([MAPNK], [NGAYNHAP], [TONGTG], [MANV], [MANCC]) VALUES (1, CAST(N'2023-02-14' AS Date), 0.0000, 3, 2)
INSERT [dbo].[tblNHAPKHO] ([MAPNK], [NGAYNHAP], [TONGTG], [MANV], [MANCC]) VALUES (2, CAST(N'2023-02-16' AS Date), 0.0000, 4, 1)
INSERT [dbo].[tblNHAPKHO] ([MAPNK], [NGAYNHAP], [TONGTG], [MANV], [MANCC]) VALUES (3, CAST(N'2023-02-20' AS Date), 0.0000, 2, 5)
INSERT [dbo].[tblNHAPKHO] ([MAPNK], [NGAYNHAP], [TONGTG], [MANV], [MANCC]) VALUES (4, CAST(N'2023-02-26' AS Date), 0.0000, 3, 3)
INSERT [dbo].[tblNHAPKHO] ([MAPNK], [NGAYNHAP], [TONGTG], [MANV], [MANCC]) VALUES (5, CAST(N'2023-03-05' AS Date), 0.0000, 4, 4)
INSERT [dbo].[tblNHAPKHO] ([MAPNK], [NGAYNHAP], [TONGTG], [MANV], [MANCC]) VALUES (6, CAST(N'2023-04-01' AS Date), 14000000.0000, 1, 1)
SET IDENTITY_INSERT [dbo].[tblNHAPKHO] OFF
GO
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'abc', N'Vinhtran@1107', N'KH')
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'abv', N'Vinhtran@1107', N'KH')
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'manh111', N'123aa', N'NV')
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'ntmt', N'Vinhtran@1107', N'QT')
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'trinh1123', N'123aa', N'NV')
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'vinh', N'Vinhtran@1107', N'KH')
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'vinh123', N'123aa', N'QT')
INSERT [dbo].[tblTAIKHOAN] ([userID], [password], [role]) VALUES (N'vy1122', N'123aa', N'NV')
GO
ALTER TABLE [dbo].[tblCTHD]  WITH CHECK ADD  CONSTRAINT [FK__tblCTHD__MADT__398D8EEE] FOREIGN KEY([MADT])
REFERENCES [dbo].[tblDIENTHOAI] ([MADT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblCTHD] CHECK CONSTRAINT [FK__tblCTHD__MADT__398D8EEE]
GO
ALTER TABLE [dbo].[tblCTHD]  WITH CHECK ADD  CONSTRAINT [FK__tblCTHD__MAHD__38996AB5] FOREIGN KEY([MAHD])
REFERENCES [dbo].[tblHOADON] ([MAHD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblCTHD] CHECK CONSTRAINT [FK__tblCTHD__MAHD__38996AB5]
GO
ALTER TABLE [dbo].[tblCTPNHAPKHO]  WITH CHECK ADD FOREIGN KEY([MAPNK])
REFERENCES [dbo].[tblNHAPKHO] ([MAPNK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblCTPNHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK__tblCTPNHAP__MADT__44FF419A] FOREIGN KEY([MADT])
REFERENCES [dbo].[tblDIENTHOAI] ([MADT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblCTPNHAPKHO] CHECK CONSTRAINT [FK__tblCTPNHAP__MADT__44FF419A]
GO
ALTER TABLE [dbo].[tblDIENTHOAI]  WITH CHECK ADD  CONSTRAINT [FK__tblDIENTH__MALOA__2E1BDC42] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[tblLOAIDIENTHOAI] ([MALOAI])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblDIENTHOAI] CHECK CONSTRAINT [FK__tblDIENTH__MALOA__2E1BDC42]
GO
ALTER TABLE [dbo].[tblHOADON]  WITH CHECK ADD FOREIGN KEY([MAKH])
REFERENCES [dbo].[tblKHACHHANG] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblHOADON]  WITH CHECK ADD FOREIGN KEY([MANV])
REFERENCES [dbo].[tblNHANVIEN] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblNHAPKHO]  WITH CHECK ADD FOREIGN KEY([MANCC])
REFERENCES [dbo].[tblNHACUNGCAP] ([MANCC])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblNHAPKHO]  WITH CHECK ADD FOREIGN KEY([MANV])
REFERENCES [dbo].[tblNHANVIEN] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblCTHD]  WITH CHECK ADD  CONSTRAINT [CK__tblCTHD__SLMUA__37A5467C] CHECK  (([SLMUA]>(0)))
GO
ALTER TABLE [dbo].[tblCTHD] CHECK CONSTRAINT [CK__tblCTHD__SLMUA__37A5467C]
GO
ALTER TABLE [dbo].[tblCTPNHAPKHO]  WITH CHECK ADD CHECK  (([SL]>=(0)))
GO
ALTER TABLE [dbo].[tblDIENTHOAI]  WITH CHECK ADD  CONSTRAINT [CK__tblDIENTH__GIABA__2D27B809] CHECK  (([GIABAN]>(0)))
GO
ALTER TABLE [dbo].[tblDIENTHOAI] CHECK CONSTRAINT [CK__tblDIENTH__GIABA__2D27B809]
GO
ALTER TABLE [dbo].[tblDIENTHOAI]  WITH CHECK ADD  CONSTRAINT [CK__tblDIENTH__GIAMU__2C3393D0] CHECK  (([GIAMUA]>(0)))
GO
ALTER TABLE [dbo].[tblDIENTHOAI] CHECK CONSTRAINT [CK__tblDIENTH__GIAMU__2C3393D0]
GO
ALTER TABLE [dbo].[tblDIENTHOAI]  WITH CHECK ADD  CONSTRAINT [CK__tblDIENTH__SLTON__2F10007B] CHECK  (([SLTON]>=(0)))
GO
ALTER TABLE [dbo].[tblDIENTHOAI] CHECK CONSTRAINT [CK__tblDIENTH__SLTON__2F10007B]
GO
ALTER TABLE [dbo].[tblHOADON]  WITH CHECK ADD CHECK  (([NGAYLAP]<[HANBAOHANH]))
GO
ALTER TABLE [dbo].[tblHOADON]  WITH CHECK ADD CHECK  (([NGAYLAP]<=getdate()))
GO
ALTER TABLE [dbo].[tblKHACHHANG]  WITH CHECK ADD CHECK  (([DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] IS NULL))
GO
ALTER TABLE [dbo].[tblNHACUNGCAP]  WITH CHECK ADD CHECK  (([DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] IS NULL))
GO
ALTER TABLE [dbo].[tblNHANVIEN]  WITH CHECK ADD CHECK  (([DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [DIENTHOAI] IS NULL))
GO
