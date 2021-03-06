USE master
GO

CREATE DATABASE LTWWWJAVA_DHKTPM13A_BAITAPLON_NHOM18
GO

USE [LTWWWJAVA_DHKTPM13A_BAITAPLON_NHOM18]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 7/3/2020 10:24:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuongSanPham] [int] NULL,
	[GiaSanPham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 7/3/2020 10:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 7/3/2020 10:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[NgayTaoDonHang] [datetime] NOT NULL,
	[TinhTrangDonHang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 7/3/2020 10:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[Username] [varchar](30) NOT NULL,
	[Pass] [varchar](40) NOT NULL,
	[isNhanVien] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/3/2020 10:24:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[Gia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[Hinh] [nvarchar](500) NULL,
	[MaDanhMuc] [int] NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuongSanPham], [GiaSanPham]) VALUES (1, 1, 1, 50000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuongSanPham], [GiaSanPham]) VALUES (1, 2, 1, 160000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuongSanPham], [GiaSanPham]) VALUES (2, 3, 2, 440000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuongSanPham], [GiaSanPham]) VALUES (2, 4, 2, 210000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuongSanPham], [GiaSanPham]) VALUES (3, 6, 1, 500000)
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Chăm Sóc Da Mặt')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Chăm Sóc Cơ Thể')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayTaoDonHang], [TinhTrangDonHang]) VALUES (1, 1, CAST(N'2020-06-28 23:45:12.230' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayTaoDonHang], [TinhTrangDonHang]) VALUES (2, 2, CAST(N'2020-06-29 23:50:12.230' AS DateTime), 0)
INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayTaoDonHang], [TinhTrangDonHang]) VALUES (3, 3, CAST(N'2020-06-29 23:55:12.230' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [DiaChi], [Email], [SoDienThoai], [Username], [Pass], [isNhanVien]) VALUES (1, N'Phạm Nhứt Nguyên', N'12 Lê Lợi - Gò Vấp', N'phamnhutduynguyen@gmail.com', N'0367038430', N'admin', N'1', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [DiaChi], [Email], [SoDienThoai], [Username], [Pass], [isNhanVien]) VALUES (2, N'Phạm Duy Nguyên', N'112 Nguyễn Ánh - Tân Bình', N'gianguyengiaa3@gmail.com', N'0123456985', N'nguyenpham', N'2', 0)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [DiaChi], [Email], [SoDienThoai], [Username], [Pass], [isNhanVien]) VALUES (3, N'Nguyen Dinh Thong', N'23A Cách Mạng T8', N'dinhthong0123@gmail.com', N'0123659874', N'dinhthong173', N'1234', 0)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [DiaChi], [Email], [SoDienThoai], [Username], [Pass], [isNhanVien]) VALUES (4, N'Phan Xuân Bách', N'Số 12, Nguyễn  Văn Bảo, tp hcm', N'dhktpm13a@gmail.com', N'0912345685', N'bachphan123', N'123', 0)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [DiaChi], [Email], [SoDienThoai], [Username], [Pass], [isNhanVien]) VALUES (5, N'Nguyễn Đình Thông', N'quận Gò Vấp, tp HCM', N'thongdinh173@gmail.com', N'0923659874', N'thongdinh', N'123456', 0)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (1, N'Tẩy trang', 50000, 200, N'bụi bẩn len lỏi sâu trong lỗ chân lông, giúp lỗ chân lông thông thoáng và sạch khỏe hơn. Đặc biệt với kết cấu dạng gel mịn nhẹ, sản phẩm không gây tổn thương bề mặt, không gây kích ứng da nên thích hợp với cả da nhạy cảm.', N'resources/images/HinhSanPham/hinh1.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (2, N'Sữa rửa mặt', 160000, 150, N'Xoa đều khắp cơ thể và massage toàn thân sẽ giúp bạn thư giãn và làn da của bạn được mịn màng.  Sau đó tắm lại bằng nước sạch.', N'resources/images/HinhSanPham/hinh2.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (3, N'Sữa tắm', 220000, 150, N'Berdoues 1902 luôn được vô vàn cô gái yêu quý và tin dùng bởi khả năng chăm sóc hoàn hảo nhưng lại vô cùng lành tính của mình.', N'resources/images/HinhSanPham/hinh3.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (4, N'Gel rửa tay', 105000, 105, N'là sự lựa chọn lý tưởng dành cho những làn da hỗn hợp và da dầu cần được bổ sung độ ẩm và dưỡng chất. Sản phẩm giúp cung cấp hàm lượng hydrat cần thiết.', N'resources/images/HinhSanPham/hinh4.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (5, N'Kem chống nắng', 220000, 5, N'Cung cấp độ ẩm với cường độ cao và giữ ẩm trong thời gian dài, đặc biệt thích hợp cho nàng da khô thiếu mịn màng. Là loại mỹ phẩm dùng trong lúc đi nắng', N'resources/images/HinhSanPham/hinh2.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (6, N'Kem chống nắng Iness', 500000, 100, N'Là loại mỹ phẩm dùng trong lúc đi nắng. liền sẹo do mụn, vết thương.', N'resources/images/HinhSanPham/hinh5.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (7, N'Kem dưỡng InstaNatural Vitamin C Moisturizer', 550000, 20, N'Kem Dưỡng InstaNatural Vitamin C Moisturizer cũng nhanh chóng chiếm được niềm tin của nhiều tín đồ như dòng serum. Bởi khả năng dưỡng ẩm, dưỡng sáng và mờ thâm cực kỳ hiệu quả.', N'resources/images/HinhSanPham/hinh6.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (8, N'Dưỡng Da Mặt Cosmedica Skincare Super Nutrient Balm (20g)', 400000, 25, N'Điểm đặc biệt của sản phẩm này chính là chứa nhiều chất chống oxy hoá như trà xanh, Vitamin C, Cranberry, Shea Butte, Vitamin E,…', N'resources/images/HinhSanPham/hinh7.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (9, N'Gel Collagen Sụn Cá Hồi MorePas – Qua PG (50g', 350000, 5, N'Gel Collagen Sụn Cá Hồi MorePas – Qua PG – Cứu cánh cho làn da nhanh chóng phục hồi, liền sẹo do mụn, vết thương. ', N'resources/images/HinhSanPham/hinh8.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (10, N'CC Serum Dưỡng Trắng Da Senka White Beauty Serum In CC (40g)', 150000, 30, N'Được thiết kế theo công nghệ Nhật Bản dưới dạng kem serum, dễ dàng thẩm thấu sâu và mang lại hiệu quả cao trong việc chăm sóc da. CC Serum Senka là sự lựa chọn lý tưởng với 3 tính năng chỉ trong một bước chăm sóc như chống nắng, che khuyết điểm và dưỡng trắng. ', N'resources/images/HinhSanPham/hinh9.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (11, N'Gel Dưỡng Ẩm Paula’s Choice Skin Balancing Invisible Finish Moisture Gel (60ml)', 356000, 15, N'Paula’s Choice Skin Balancing Invisible Finish Moisture Gel là sự lựa chọn lý tưởng dành cho những làn da hỗn hợp và da dầu cần được bổ sung độ ẩm và dưỡng chất. Sản phẩm giúp cung cấp hàm lượng hydrat cần thiết. Giúp giảm thiểu tình trạng tiết bã nhờn trên da từ đó cải thiện tình trạng lỗ chân lông to. ản phẩm chứa Vitamin C, B, E, chiết xuất cam thảo, tinh chất hạt nho, Sodium Hyaluronic, Niacinamide. Tăng cường khả năng tái tạo da, dưỡng da săn chắc và sáng khỏe. ', N'resources/images/HinhSanPham/hinh10.jpg', 1, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (12, N'Bơ Dưỡng Thể Bath And Body Works Cherry Blossom (185g)', 320000, 15, N'Bơ dưỡng thể BATH AND BODY works ultra Shea BODY butter chính là giải pháp cho nàng da khô  Cung cấp độ ẩm với cường độ cao và giữ ẩm trong thời gian dài, đặc biệt thích hợp cho nàng da khô thiếu mịn màng  Mùi hương dịu nhẹ, có thể kéo dài 24h, giúp bạn thư giản khi thoa lên người.', N'resources/images/HinhSanPham/hinh11.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (13, N'Bộ Sản Phẩm Chăm Sóc Cơ Thể The Body Shop Delights Bag Body Care Gifts (3pcs)', 320000, 24, N'Bộ Sản Phẩm Chăm Sóc Cơ Thể The Body Shop Delights Bag Body Care Gifts là những sản phẩm must-have cho bất kì cho gái nào. Sản phẩm bao gồm 3 món nhỏ xinh, rất dễ dàng để bạn mang theo bên mình bất cứ đâu. Chưa hết đâu nha, đi kèm sản phẩm còn có túi mỹ phẩm siêu tiện dụng. Khóa kéo dày dặn, chắc chắn nên các nàng cứ hãy yên tâm là em ấy hoàn toàn khác biệt so với những sản phẩm tặng kèm thông thường khác. ', N'resources/images/HinhSanPham/hinh12.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (14, N'Chống Nắng Dạng Sáp JM Solution 24k Gold Premium Light Sun Stick (20g)', 180000, 22, N'Kết cấu mỏng nhẹ tự nhiên, thấm nhanh, không bị dây ra quần áo, không gây bệt trắng  Được thừa hưởng những công nghệ chống nắng tiên tiến nhất.   Có khả năng chống trôi khi da đổ dầu, mồ hôi.', N'resources/images/HinhSanPham/hinh13.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (15, N'Dầu Tắm Siêu Cấp Ẩm Eucerin pH5 Sensitive Dry Skin (200ml)', 165000, 16, N'Đôi khi nàng chăm sóc da mặt nhưng quên mất da cơ thể cũng dễ biểu hiện những dấu hiệu lão hóa lắm đấy. Để cấp ẩm cho cơ thể ngoài việc uống nước và ăn rau đầy đủ, bạn cần phải có một chai sữa tắm “làm bạn”. Với đầy đủ dưỡng chất, và được kiểm nghiệm an toàn, dầu tắm siêu ẩm sẽ giúp nàng khắc phục các vấn đề về da ngay từ lúc tắm. ', N'resources/images/HinhSanPham/hinh15.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (16, N'Gel Tắm Mềm Mịn Da Gel Douche Evoluderm (500ml)', 145000, 29, N'Cách dùng:  Cho một lượng gel tắm vào tay hay vào bông tắm.  Xoa đều khắp cơ thể và massage toàn thân sẽ giúp bạn thư giãn và làn da của bạn được mịn màng.  Sau đó tắm lại bằng nước sạch.', N'resources/images/HinhSanPham/hinh16.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (17, N'Gel Tẩy Tế Bào Chết Sexy Look Enzyme Exfoliating Gel (120g)', 150000, 20, N'Gel Tẩy Tế Bào Chết Sexylook giúp bạn lấy sạch đi lớp da chết, bụi bẩn len lỏi sâu trong lỗ chân lông, giúp lỗ chân lông thông thoáng và sạch khỏe hơn. Đặc biệt với kết cấu dạng gel mịn nhẹ, sản phẩm không gây tổn thương bề mặt, không gây kích ứng da nên thích hợp với cả da nhạy cảm.', N'resources/images/HinhSanPham/hinh17.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (18, N'Gel Tẩy Tế Bào Chết Tea Tree Squeaky-Clean Scrub (100ml)', 380000, 5, N'Đây là một sản phẩm tẩy tế bào chết đa năng, thích hợp sử dụng cho vùng da mặt, lưng, ngực và cổ. Cách sử dụng tựa như sữa rửa mặt nên rất dễ dàng thao tác. Hiệu quả tẩy da chết tuyệt vời giúp làm sạch sâu lỗ chân lông. Nhanh chống trả lại làn da mềm mịn và tươi mới, đồng thời giảm thâm mụn hiệu quả khi sử dụng thường xuyên và đều đặn. ', N'resources/images/HinhSanPham/hinh18.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (19, N'Kem Dưỡng Thể Berdoues 1902 Mille Fleurs Body Balm (200ml)', 660000, 12, N'Xuất thân từ hãng mỹ phẩm chăm sóc cơ thể dừng danh nước Pháp với lịch sử hình thành hơn 100 năm. Berdoues 1902 luôn được vô vàn cô gái yêu quý và tin dùng bởi khả năng chăm sóc hoàn hảo nhưng lại vô cùng lành tính của mình.', N'resources/images/HinhSanPham/hinh19.jpg', 2, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [SoLuong], [MoTa], [Hinh], [MaDanhMuc], [TinhTrang]) VALUES (20, N'Kem Dưỡng Thể Neutrogena Hydro Boost Whipped Body Balm (189g)', 220000, 20, N'Neutrogena Hydro Boost Whipped Body Balm là sản phẩm dưỡng ẩm hoàn hảo dành cho da khô đến da quá khô. Sản phẩm giúp bạn nhanh chóng cải thiện tình trạng da khô ráp, cấp ẩm kịp thời cho da ẩm mịn và căng tràn sức sống nhờ thành phần chính là Hyaluronic Acid. ', N'resources/images/HinhSanPham/hinh20.jpg', 2, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
