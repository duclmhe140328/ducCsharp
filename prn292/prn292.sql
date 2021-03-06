USE [master]
GO
/****** Object:  Database [Project_PRN292]    Script Date: 7/23/2021 12:08:43 PM ******/
CREATE DATABASE [Project_PRN292]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_PRN292', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Project_PRN292.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Project_PRN292_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Project_PRN292_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Project_PRN292] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_PRN292].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_PRN292] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_PRN292] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_PRN292] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_PRN292] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_PRN292] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_PRN292] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_PRN292] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_PRN292] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_PRN292] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_PRN292] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_PRN292] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_PRN292] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_PRN292] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_PRN292] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_PRN292] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Project_PRN292] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_PRN292] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_PRN292] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_PRN292] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_PRN292] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_PRN292] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_PRN292] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_PRN292] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_PRN292] SET  MULTI_USER 
GO
ALTER DATABASE [Project_PRN292] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_PRN292] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_PRN292] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_PRN292] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Project_PRN292] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_PRN292', N'ON'
GO
USE [Project_PRN292]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/23/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[accountid] [varchar](150) NOT NULL,
	[password] [varchar](150) NULL,
	[role] [nvarchar](150) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order.]    Script Date: 7/23/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order.](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[accountid] [nvarchar](250) NULL,
	[fullname] [nvarchar](250) NULL,
	[email] [nvarchar](250) NULL,
	[address] [nvarchar](250) NULL,
	[date] [date] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Order.] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/23/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[productid] [int] NULL,
	[orderid] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/23/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](150) NULL,
	[size] [float] NULL,
	[price] [float] NULL,
	[StatusSale] [bit] NULL,
	[image] [nvarchar](150) NULL,
	[brandID] [int] NULL,
	[quantity] [int] NULL,
	[about] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TableBrand]    Script Date: 7/23/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableBrand](
	[brandID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_TableBrand] PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 7/23/2021 12:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[code] [nvarchar](10) NULL,
	[name] [nvarchar](50) NULL,
	[salary] [int] NULL,
	[bonus] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([accountid], [password], [role], [status]) VALUES (N'aa', N'111', N'user', 0)
INSERT [dbo].[Account] ([accountid], [password], [role], [status]) VALUES (N'abc', N'abc', N'user', 1)
INSERT [dbo].[Account] ([accountid], [password], [role], [status]) VALUES (N'admin', N'admin', N'admin', 1)
INSERT [dbo].[Account] ([accountid], [password], [role], [status]) VALUES (N'newaccount', N'1111', N'user', 1)
SET IDENTITY_INSERT [dbo].[Order.] ON 

INSERT [dbo].[Order.] ([orderid], [accountid], [fullname], [email], [address], [date], [status]) VALUES (27, N'Admin', N'1', N'2', N'3', CAST(N'2021-07-20' AS Date), 0)
INSERT [dbo].[Order.] ([orderid], [accountid], [fullname], [email], [address], [date], [status]) VALUES (28, N'Admin', N'1', N'2', N'3', CAST(N'2021-07-20' AS Date), 0)
INSERT [dbo].[Order.] ([orderid], [accountid], [fullname], [email], [address], [date], [status]) VALUES (29, N'abc', N'Nguy?n Ð?c Th?ng', N'thangndhe140674@fpt.edu.vn', N'S? nhà 8 , ngách 8/201 , phu?ng Phú Ðô', CAST(N'2021-07-23' AS Date), 0)
INSERT [dbo].[Order.] ([orderid], [accountid], [fullname], [email], [address], [date], [status]) VALUES (30, N'abc', N'Nguy?n Ð?c Th?ng2', N'thangndhe140674@fpt.edu.vn', N'S? nhà 8 , ngách 8/201 , phu?ng Phú Ðô', CAST(N'2021-07-23' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Order.] OFF
INSERT [dbo].[OrderDetail] ([productid], [orderid], [quantity]) VALUES (66, 29, 1)
INSERT [dbo].[OrderDetail] ([productid], [orderid], [quantity]) VALUES (47, 30, 1)
INSERT [dbo].[OrderDetail] ([productid], [orderid], [quantity]) VALUES (61, 30, 1)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (41, N'Nike Air Force 1                                                                                                                                      ', 44, 124, 1, N'nike6.jpg', 1, 120, N'[Giày Nam +Tặng Tất⚡ Giày thể thao nam 2021 - hàng mới về siêu ưu đãi.
SHOP ĐẢM BẢO và CAM KẾT CHO CÁC BẠN
🍓 Về sản phẩm: Shop cam kết cả về chất lượng và kiểu dáng. Tất cả ảnh đều không chỉnh sửa. 99% là sản phẩm đúng như ảnh 1% là do khách hàng quá đẹp trai, hihi.
🍓 Dịch vụ: Hỗ trợ đổi hàng nếu các bạn đi không vừa.
🍓 Thời gian chuẩn bị hàng: hàng luôn có sẵn nên cứ đặt là sẽ đóng gói gửi bạn ạ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (42, N'Nike AF1 Mid                                                                                                                                          ', 41, 350, 0, N'nike-white-air-force-1-mid-07-sneakers.jpg', 1, 78, N'🎁 CAM KẾT: 
✔️ Hoàn tiền 100% nếu nhận sản phẩm không giống hình. Tất cả các sản phẩm đăng bán đều được shop chụp hình và quay video bằng điện thoại để các bạn xem rõ chất liệu giày trước khi đặt mua (100% ảnh thật)
✔️ Đổi ngay hàng mới nếu nhận hàng bị lỗi, hỏng từ phía nhà sản xuất. Hỗ trợ đổi size nếu các bạn đi không vừa. 
✔️ FreeShip đổi trả toàn quốc.
Lưu ý: Liên lạc ngay với chúng tôi ngay sau khi nhận hàng. 
Giày air force 1, giày thể thao af1 trắng full box
🎁 [HÌNH ẢNH và MÔ TẢ]
✔️ 100% ảnh, video thật được chúng tôi quay và chụp bằng điện thoại cá nhân 
✔️ Kiểu dáng hot trend của năm nay và còn kéo dài trong những năm tiếp theo. Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí 
✔️ Giày đẹp, nhẹ, bền. Giá phải chăng phù hợp với các bạn học sinh, sinh viên. Có thể làm giày đôi, giày nhóm. Thích hợp đi chơi, du lịch, chạy bộ, gym, đi học, đi làm... 
✔️ Dễ phối đồ, có thể kết hợp với váy, jeans, sooc…. Phù hợp với mọi thời tiết từ đông sang hè.
Giày air force 1, giày thể thao af1 trắng full box')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (43, N'Nike Air Jordan 1                                                                                                                                     ', 40, 165, 0, N'554724-173_ta.jpg', 1, 89, N'💥 THÔNG TIN SẢN PHẨM GIÀY THỂ THAO NAM
✔️ Đến với Shop bạn hoàn toàn có thể yên tâm hàng đảm bảo chất lượng, tốt nhất trong tầm giá.( không có hàng lỗi, hàng thứ cấp )
✔️ Chất liệu: Da PU cao cấp mềm mại, kết hợp vải sợi thoáng khí bền đẹp theo thời gian
✔️ Đế giày được làm bằng chất liệu cao su đúc nguyên khối chắc chắn có khắc họa tiết để tăng độ ma sát, chống trơn trượt.
✔️ Màu sắc: Xám _ Xanh
✔️ Size: 39-43 
💥 ĐẶC ĐIỂM SẢN PHẨM GIÀY THỂ THAO NAM
✔️ Giày dễ phối đồ thích hợp cho các hoạt động đi lại hàng ngày, chạy bộ
✔️ Mũi Giày tròn, đế cao su tổng hợp, xẻ rãnh tạo cảm giác thoải mái khi đi
✔️ Thích hợp với các mùa trong năm: Xuân - Hè - Thu - Đông
💥 HƯỚNG DẪN BẢO QUẢN GIAY THỂ THAO NAM
✔️ Để giày ở nơi khô ráo thoáng mát để giữ giày được bền đẹp hơn
✔️ Vệ sinh giày, dùng khăn hay bàn trải lông mềm để chải sạch giày cùng với nước tẩy rửa giày chuyên dụng với da hay da Pu
✔️ Có thể giặt giày cùng với chất tẩy rửa nhẹ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (44, N'Nike Air Jordan 2                                                                                                                                     ', 39, 178, 0, N'nikejd2.jpg', 1, 12, N'❤️❤️❤️ MUA NGAY ❤️❤️❤️

🎁 LỜI MUỐN NÓI! Nhận giày xong mong các bạn sẽ có những phản hồi tích cực như Feedback hình ảnh hoặc đánh giá 5 sao nếu cảm thấy OK. Mọi vấn đề bạn chưa vừa lòng xin hãy inbox để được hỗ trợ trước khi đánh giá nhé. Cảm ơn bạn đã đặt giày. Đừng quên nhấn theo dõi nha! 
Shop luôn dẫn đầu trong việc đáp ứng nhanh chóng những trào lưu xu hướng thời trang mới nhất châu Á. mang đến làn gió mới với xu hướng thời trang năng động, hiện đại và cá tính. Chúng tôi liên tục đổi mới chính mình và cam kết luôn cập nhật những ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (45, N'Nike Air Max Excee                                                                                                                                    ', 39, 250, 0, N'nikeamax.jpg', 1, 41, N'Shop CAM KẾT 

✔️Về sản phẩm: Shop cam kết cả về chất liệu cũng như hình dáng ( đúng với những gì được nêu bật trong phần mô tả sản phẩm).

✔️Về giá cả: Shop nhập với số lượng nhiều và trực tiếp nên chi phí sẽ cực cạnh tranh nhé.

✔️Về dịch vụ: Khách hàng có thể hoàn toàn yên tâm về việc đổi size, màu nếu có nhu cầu. Shop sẽ hỗ trợ tận tình.

✔️Thời gian chuẩn bị hàng: Hàng có sẵn, thời gian chuẩn bị tối ưu nhất.

Giày Sneaker Nam TKTMS19 Giày Thể Thao Nam Tăng Chiều Cao Mẫu Hot Trend TKT STORE Size (39-43)
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (46, N'Nike Air Vapormax                                                                                                                                     ', 37, 200, 0, N'nikevapor.jpg', 1, 45, N'🎁 CAM KẾT: 
✔️ Hoàn tiền 100% nếu nhận sản phẩm không giống hình. Tất cả các sản phẩm đăng bán đều được shop chụp hình và quay video bằng điện thoại để các bạn xem rõ chất liệu giày trước khi đặt mua (100% ảnh thật)
✔️ Đổi ngay hàng mới nếu nhận hàng bị lỗi, hỏng từ phía nhà sản xuất. Hỗ trợ đổi size nếu các bạn đi không vừa. 
✔️ FreeShip đổi trả toàn quốc.
Lưu ý: Liên lạc ngay với chúng tôi ngay sau khi nhận hàng. 
Giày air force 1, giày thể thao af1 trắng full box
🎁 [HÌNH ẢNH và MÔ TẢ]
✔️ 100% ảnh, video thật được chúng tôi quay và chụp bằng điện thoại cá nhân 
✔️ Kiểu dáng hot trend của năm nay và còn kéo dài trong những năm tiếp theo. Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí 
✔️ Giày đẹp, nhẹ, bền. Giá phải chăng phù hợp với các bạn học sinh, sinh viên. Có thể làm giày đôi, giày nhóm. Thích hợp đi chơi, du lịch, chạy bộ, gym, đi học, đi làm... 
✔️ Dễ phối đồ, có thể kết hợp với váy, jeans, sooc…. Phù hợp với mọi thời tiết từ đông sang hè.
Giày air force 1, giày thể thao af1 trắng full box
🎁 LỜI MUỐN NÓI: 
Cảm ơn các bạn đã đến với chúng tôi. Sau khi nhận giày xong nếu có vấn đề nào bạn chưa vừa lòng làm ơn hãy liên hệ ngay với chúng tôi để được hỗ trợ và giải quyết .các bạn hãy vui lòng dành chút thời gian đánh giá sản phẩm để shop lấy động lực phục vụ các bạn tốt hơn nhé !!')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (47, N'Nike Air Zoom Pegasus                                                                                                                                 ', 42, 164, 0, N'nikepegasus.jpg', 1, 126, N'🎁 CAM KẾT: 
✔️ Hoàn tiền 100% nếu nhận sản phẩm không giống hình. Tất cả các sản phẩm đăng bán đều được shop chụp hình và quay video bằng điện thoại để các bạn xem rõ chất liệu giày trước khi đặt mua (100% ảnh thật)
✔️ Đổi ngay hàng mới nếu nhận hàng bị lỗi, hỏng từ phía nhà sản xuất. Hỗ trợ đổi size nếu các bạn đi không vừa. 
✔️ FreeShip đổi trả toàn quốc.
Lưu ý: Liên lạc ngay với chúng tôi ngay sau khi nhận hàng. 
Giày air force 1, giày thể thao af1 trắng full box
🎁 [HÌNH ẢNH và MÔ TẢ]
✔️ 100% ảnh, video thật được chúng tôi quay và chụp bằng điện thoại cá nhân 
✔️ Kiểu dáng hot trend của năm nay và còn kéo dài trong những năm tiếp theo. Đế giày được thiết kế chịu ma sát tốt, tăng chiều cao, nhẹ, êm, cân bằng và thoáng khí 
✔️ Giày đẹp, nhẹ, bền. Giá phải chăng phù hợp với các bạn học sinh, sinh viên. Có thể làm giày đôi, giày nhóm. Thích hợp đi chơi, du lịch, chạy bộ, gym, đi học, đi làm... 
✔️ Dễ phối đồ, có thể kết hợp với váy, jeans, sooc…. Phù hợp với mọi thời tiết từ đông sang hè.
Giày air force 1, giày thể thao af1 trắng full box
🎁 LỜI MUỐN NÓI: 
Cảm ơn các bạn đã đến với chúng tôi. Sau khi nhận giày xong nếu có vấn đề nào bạn chưa vừa lòng làm ơn hãy liên hệ ngay với chúng tôi để được hỗ trợ và giải quyết .các bạn hãy vui lòng dành chút thời gian đánh giá sản phẩm để shop lấy động lực phục vụ các bạn tốt hơn nhé !!')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (48, N'Adidas Superstar                                                                                                                                      ', 38, 101, 0, N'adidassp.jpg', 4, 312, N'Giày Adidas Stan Smith sneaker nam nữ trắng EE8483 - Hàng Chính Hãng - Bounty Sneakers:
- Cam kết chính hãng 100% nhập từ ADIDAS US, UK, JP - Fake đền x10.
- GIÁ RẺ hơn các shop khác 15-20% - full box, tem, tag, giấy gói chính hãng.
- Miễn phí đổi size, đổi mẫu trong vòng 3 ngày.
- NHIỀU MẪU: Hơn 300+ mẫu giày Adidas, Nike có tại shop từ STANSMITH, SUPERSTAR, ULTRABOOST, ZX 2k đến ADIDAS 4D ...

ĐẶC ĐIỂM NỔI BẬT:
- Mẫu giày này lấy cảm hứng từ các phong cách thể thao huyền thoại trong quá khứ và đưa đến tương lai. Giày mang phong cách hàng ngày với thân giày bằng da mượt mà. 
- Biểu tượng 3 Sọc đặc trưng chạy dọc hai bên. Lớp đệm đế giữa êm ái mang đến cảm giác thoải mái cho từng bước chân.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (49, N'Adidas Alphabounce                                                                                                                                    ', 43, 169, 0, N'giay-adidas-alphabounce-trang-replica.jpg', 4, 45, N'THÔNG SỐ SẢN PHẨM:
- Tên sản phẩm:Giày Adidas Stan Smith 
- Kiểu dáng: Ôm vừa, có dây buộc
- Chất liệu thân giày: Thân giày bằng da mềm mại
- Đế ngoài: Đế ngoài bằng cao su chống trơn trượt
- Lót giày: Lót giày công nghệ Cloudfoam Comfort
- Màu sản phẩm: Core Black / Cloud White
- Mã sản phẩm: EE8493
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (50, N'Adidas Ultraboost                                                                                                                                     ', 44, 166, 0, N'adidasultra.jpg', 4, 416, N'Giày Adidas Stan Smith sneaker nam nữ trắng EE8483 - Hàng Chính Hãng - Bounty Sneakers:
- Cam kết chính hãng 100% nhập từ ADIDAS US, UK, JP - Fake đền x10.
- GIÁ RẺ hơn các shop khác 15-20% - full box, tem, tag, giấy gói chính hãng.
- Miễn phí đổi size, đổi mẫu trong vòng 3 ngày.
- NHIỀU MẪU: Hơn 300+ mẫu giày Adidas, Nike có tại shop từ STANSMITH, SUPERSTAR, ULTRABOOST, ZX 2k đến ADIDAS 4D ...

ĐẶC ĐIỂM NỔI BẬT:
- Mẫu giày này lấy cảm hứng từ các phong cách thể thao huyền thoại trong quá khứ và đưa đến tương lai. Giày mang phong cách hàng ngày với thân giày bằng da mượt mà. 
- Biểu tượng 3 Sọc đặc trưng chạy dọc hai bên. Lớp đệm đế giữa êm ái mang đến cảm giác thoải mái cho từng bước chân.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (51, N'Adidas NMD R1                                                                                                                                         ', 41, 200, 1, N'adidasnmd.jpg', 4, 123, N'THÔNG SỐ SẢN PHẨM:
- Tên sản phẩm:Giày Adidas Stan Smith 
- Kiểu dáng: Ôm vừa, có dây buộc
- Chất liệu thân giày: Thân giày bằng da mềm mại
- Đế ngoài: Đế ngoài bằng cao su chống trơn trượt
- Lót giày: Lót giày công nghệ Cloudfoam Comfort
- Màu sản phẩm: Core Black / Cloud White
- Mã sản phẩm: EE8493
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (52, N'Adidas Grand                                                                                                                                          ', 39, 245, 0, N'adidas-grand-court.jpg', 4, 54, N'Giày Adidas Stan Smith sneaker nam nữ trắng EE8483 - Hàng Chính Hãng - Bounty Sneakers:
- Cam kết chính hãng 100% nhập từ ADIDAS US, UK, JP - Fake đền x10.
- GIÁ RẺ hơn các shop khác 15-20% - full box, tem, tag, giấy gói chính hãng.
- Miễn phí đổi size, đổi mẫu trong vòng 3 ngày.
- NHIỀU MẪU: Hơn 300+ mẫu giày Adidas, Nike có tại shop từ STANSMITH, SUPERSTAR, ULTRABOOST, ZX 2k đến ADIDAS 4D ...

ĐẶC ĐIỂM NỔI BẬT:
- Mẫu giày này lấy cảm hứng từ các phong cách thể thao huyền thoại trong quá khứ và đưa đến tương lai. Giày mang phong cách hàng ngày với thân giày bằng da mượt mà. 
- Biểu tượng 3 Sọc đặc trưng chạy dọc hai bên. Lớp đệm đế giữa êm ái mang đến cảm giác thoải mái cho từng bước chân.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (53, N'Adidas Advantage                                                                                                                                      ', 42, 62, 0, N'adidas-advantage-white-blue.jpg', 4, 99, N'THÔNG SỐ SẢN PHẨM:
- Tên sản phẩm:Giày Adidas Stan Smith 
- Kiểu dáng: Ôm vừa, có dây buộc
- Chất liệu thân giày: Thân giày bằng da mềm mại
- Đế ngoài: Đế ngoài bằng cao su chống trơn trượt
- Lót giày: Lót giày công nghệ Cloudfoam Comfort
- Màu sản phẩm: Core Black / Cloud White
- Mã sản phẩm: EE8493
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (54, N'Adidas Yeezy Boost 350                                                                                                                                ', 38, 100, 0, N'adidasyz.jpg', 4, 5, N'Giày Adidas Stan Smith sneaker nam nữ trắng EE8483 - Hàng Chính Hãng - Bounty Sneakers:
- Cam kết chính hãng 100% nhập từ ADIDAS US, UK, JP - Fake đền x10.
- GIÁ RẺ hơn các shop khác 15-20% - full box, tem, tag, giấy gói chính hãng.
- Miễn phí đổi size, đổi mẫu trong vòng 3 ngày.
- NHIỀU MẪU: Hơn 300+ mẫu giày Adidas, Nike có tại shop từ STANSMITH, SUPERSTAR, ULTRABOOST, ZX 2k đến ADIDAS 4D ...

ĐẶC ĐIỂM NỔI BẬT:
- Mẫu giày này lấy cảm hứng từ các phong cách thể thao huyền thoại trong quá khứ và đưa đến tương lai. Giày mang phong cách hàng ngày với thân giày bằng da mượt mà. 
- Biểu tượng 3 Sọc đặc trưng chạy dọc hai bên. Lớp đệm đế giữa êm ái mang đến cảm giác thoải mái cho từng bước chân.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (55, N'Adidas  Slip                                                                                                                                          ', 42, 167, 0, N'adidas-originals-white-court-rallye-slip-sneakers.jpg', 4, 89, N'THÔNG SỐ SẢN PHẨM:
- Tên sản phẩm:Giày Adidas Stan Smith 
- Kiểu dáng: Ôm vừa, có dây buộc
- Chất liệu thân giày: Thân giày bằng da mềm mại
- Đế ngoài: Đế ngoài bằng cao su chống trơn trượt
- Lót giày: Lót giày công nghệ Cloudfoam Comfort
- Màu sản phẩm: Core Black / Cloud White
- Mã sản phẩm: EE8493
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (56, N'Adidas STAN SMITH                                                                                                                                     ', 42, 264, 0, N'adidas-originals-stan-smith-w-ftwwht-green-cwhite-fx5653-sneaker-packshots-0.jpg', 4, 56, N'Giày Adidas Stan Smith sneaker nam nữ trắng EE8483 - Hàng Chính Hãng - Bounty Sneakers:
- Cam kết chính hãng 100% nhập từ ADIDAS US, UK, JP - Fake đền x10.
- GIÁ RẺ hơn các shop khác 15-20% - full box, tem, tag, giấy gói chính hãng.
- Miễn phí đổi size, đổi mẫu trong vòng 3 ngày.
- NHIỀU MẪU: Hơn 300+ mẫu giày Adidas, Nike có tại shop từ STANSMITH, SUPERSTAR, ULTRABOOST, ZX 2k đến ADIDAS 4D ...

ĐẶC ĐIỂM NỔI BẬT:
- Mẫu giày này lấy cảm hứng từ các phong cách thể thao huyền thoại trong quá khứ và đưa đến tương lai. Giày mang phong cách hàng ngày với thân giày bằng da mượt mà. 
- Biểu tượng 3 Sọc đặc trưng chạy dọc hai bên. Lớp đệm đế giữa êm ái mang đến cảm giác thoải mái cho từng bước chân.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (57, N'Puma Easy Ride                                                                                                                                        ', 40, 540, 1, N'puma-rider-stream-on-graygray-violet-puma-white-dark-denim-371530-02-sneaker-packshots-0.jpg', 2, 87, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (58, N'Puma Clyde Stitch                                                                                                                                     ', 39, 400, 0, N'375888-01a.jpg', 2, 5, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (59, N'Puma Bari Mule Men''s                                                                                                                                  ', 45, 351, 0, N'pumaMule.jpg', 2, 24, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (60, N'Puma Basket                                                                                                                                           ', 44, 165, 1, N'pumaBasket.jpg', 2, 65, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (61, N'Puma Caracal Suede                                                                                                                                    ', 40, 421, 0, N'370304-11a.jpg', 2, 415, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (62, N'Puma Speed Ignite                                                                                                                                     ', 39, 360, 0, N'pumaspeed.jpg', 2, 16, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (63, N' Puma Thunder                                                                                                                                         ', 39, 150, 0, N'pumathunder.jpg', 2, 65, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (64, N'Puma Roma 68                                                                                                                                          ', 39, 142, 0, N'16658197_32577261_1000.jpg', 2, 45, N'[ FREE SHIP ] giày thể thao
🎁 CAM KẾT:
✅ hoàn tiền 100% nếu như sản phẩm không giống hình 
✅ cái ảnh đều do shop tự chụp , đổi trả thoải mái lúc sản phẩm bị lỗi do nhà cung cấp và cửa hàng gửi nhầm size 
✅ chat mang shop để được tư vấn 
🎁 UY TÍN VÀ CHẤT LƯỢNG: 
Anh chị em đặt hàng vui lòng chat để cửa hàng check size trước , nhận được hàng rất trông chờ những feedback chấp thuận và Đánh giá 5 sao ủng hộ shop nha , mọi vấn đề chưa bằng lòng mn ibox cho shop trước khi Đánh giá nhé . ')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (65, N'Sneaker Kappa                                                                                                                                         ', 44, 153, 0, N'K09Y5CC65-001-1.jpg', 5, 94, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (66, N'Sneaker MLB Chunky                                                                                                                                    ', 42, 194, 0, N'07d9a4a153397ef078e371ab9f9ba96f.jpg', 5, 215, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (67, N'Sneaker MLB Yankess                                                                                                                                   ', 43, 289, 0, N'dscf9706.jpg', 5, 26, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (68, N'Sneaker MLB Dodgers                                                                                                                                   ', 42, 356, 1, N'giay-mlb-dodgers-800x601-1.jpg', 5, 23, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (69, N'Sneaker MLB New York                                                                                                                                  ', 40, 264, 0, N'Untitled-2-1.jpg', 5, 12, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (70, N'Sneaker M2K TEKNO                                                                                                                                     ', 39, 252, 0, N'14030436_18405229_1000.jpg', 5, 23, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (71, N'Sneaker Gucci Ace 50                                                                                                                                  ', 44, 500, 0, N'14618157_27825280_1000.jpg', 5, 89, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (72, N'Sneake Gucci Ace low-top                                                                                                                              ', 40, 240, 0, N'16100536_32781465_1000.jpg', 5, 45, N'BẠN NHỚ THAM KHẢO BẢNG SIZE ĐỂ CHỌN ĐƯỢC MỘT ĐÔI GIÀY VỪA VẶN NHÉ
mọi người nhớ tham khảo với bảng size nhé
GIÀY UNISEX JODAN CỔ THẤP MÀU XANH - XÁM HÀNG ĐẸP MẪU HOT  2021, FREESHIP ĐƠN HÀNG TOÀN QUỐC
📍 Ảnh thật và video shop tự chụp, khách gạt sang trái để xem chi tiết ạ
📍Trong quá trình vận chuyển hộp có thể bị méo móp mong khách thông cảm ạ (bạn nào cần hộp nguyên vẹn có thể báo shop shop hộp chưa gấp về tự gấp lên là ok ạ hihi)
📍 Hàng luôn sẵn full size, luôn cập nhập các mẫu mã hot trên thị trường 

🤝 Nếu bạn nhận được sản phẩm lỗi hoặc nhầm size vui lòng nhắn tin cho shop khắc phục trước khi đánh giá sp ạ
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (73, N'Vans Old Skool Skate                                                                                                                                  ', 42, 222, 0, N'vans-old-skool.jpg', 3, 21, N'🔶Free ship (từ 20k đến tối đa 30k) khi anh/chị dùng mã có sẵn (click vào chỗ MÃ GIẢM GIÁ, chọn mã vận chuyển có tên "TẤT CẢ CÁC HÌNH THỨC THANH TOÁN"
🔶Cam kết 100% sản phẩm Y HÌNH (hình và video do shop tự chụp). Tuy nhiên màu sắc có chênh lệch chút ít do ánh sáng. 
🔶Anh/chị chọn mẫu rồi trượt lêm là có chọn size, MUA 2 ĐÔI KHÁC SIZE thì vui lòng cho từng size THÊM VÀO GIỎ HÀNG rồi vào giỏ hàng chọn MUA NGAY')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (74, N'Vans Old Shool Mix                                                                                                                                    ', 43, 111, 0, N'vansmix.jpg', 3, 56, N'🏠 SALE Giày Vans Full Box (Kèm Hộp)
+ Với kiểu dáng không cầu kỳ mà rất thanh lịch, đơn giản và nhẹ nhàng, phù hợp với nhiều loại trang phục.
+ Thiết kế với phong cách thể thao, cá tính, mạnh mẽ.
+ Chất liệu vải cao cấp, màu sắc đa dạng, bền đẹp.
+ Phong phú về kiểu dáng, có kiểu giày cổ thấp và kiểu giày cổ cao.
+ Phù hợp cho các bạn trẻ đi học, vui chơi, thể thao, tha hồ dạo phố và du ngoạn, mang đến cảm giác thoải mái nhất cho người dùng.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (75, N'Vans Old Shool 36 DX                                                                                                                                  ', 39, 66, 0, N'14425939_21126838_1000.jpg', 3, 23, N'🔶Free ship (từ 20k đến tối đa 30k) khi anh/chị dùng mã có sẵn (click vào chỗ MÃ GIẢM GIÁ, chọn mã vận chuyển có tên "TẤT CẢ CÁC HÌNH THỨC THANH TOÁN"
🔶Cam kết 100% sản phẩm Y HÌNH (hình và video do shop tự chụp). Tuy nhiên màu sắc có chênh lệch chút ít do ánh sáng. 
🔶Anh/chị chọn mẫu rồi trượt lêm là có chọn size, MUA 2 ĐÔI KHÁC SIZE thì vui lòng cho từng size THÊM VÀO GIỎ HÀNG rồi vào giỏ hàng chọn MUA NGAY')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (76, N'Vans Era Flame                                                                                                                                        ', 39, 45, 0, N'vansfire.jpg', 3, 12, N'🏠 SALE Giày Vans Full Box (Kèm Hộp)
+ Với kiểu dáng không cầu kỳ mà rất thanh lịch, đơn giản và nhẹ nhàng, phù hợp với nhiều loại trang phục.
+ Thiết kế với phong cách thể thao, cá tính, mạnh mẽ.
+ Chất liệu vải cao cấp, màu sắc đa dạng, bền đẹp.
+ Phong phú về kiểu dáng, có kiểu giày cổ thấp và kiểu giày cổ cao.
+ Phù hợp cho các bạn trẻ đi học, vui chơi, thể thao, tha hồ dạo phố và du ngoạn, mang đến cảm giác thoải mái nhất cho người dùng.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (77, N'Vans Sk8-Hi DIY Tapered Black                                                                                                                         ', 38, 88, 0, N'vans-sk8-hi-black-true-vn0a38gfpxc1-sneaker-packshots-0.jpg', 3, 95, N'🏠 SALE Giày Vans Full Box (Kèm Hộp)
+ Với kiểu dáng không cầu kỳ mà rất thanh lịch, đơn giản và nhẹ nhàng, phù hợp với nhiều loại trang phục.
+ Thiết kế với phong cách thể thao, cá tính, mạnh mẽ.
+ Chất liệu vải cao cấp, màu sắc đa dạng, bền đẹp.
+ Phong phú về kiểu dáng, có kiểu giày cổ thấp và kiểu giày cổ cao.
+ Phù hợp cho các bạn trẻ đi học, vui chơi, thể thao, tha hồ dạo phố và du ngoạn, mang đến cảm giác thoải mái nhất cho người dùng.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (78, N' Vans Vault                                                                                                                                           ', 44, 88, 0, N'vans-black-vault-suede-og-epoch-lx-sneakers.jpg', 3, 15, N'🏠 SALE Giày Vans Full Box (Kèm Hộp)
+ Với kiểu dáng không cầu kỳ mà rất thanh lịch, đơn giản và nhẹ nhàng, phù hợp với nhiều loại trang phục.
+ Thiết kế với phong cách thể thao, cá tính, mạnh mẽ.
+ Chất liệu vải cao cấp, màu sắc đa dạng, bền đẹp.
+ Phong phú về kiểu dáng, có kiểu giày cổ thấp và kiểu giày cổ cao.
+ Phù hợp cho các bạn trẻ đi học, vui chơi, thể thao, tha hồ dạo phố và du ngoạn, mang đến cảm giác thoải mái nhất cho người dùng.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (79, N'Vans Marshmallow                                                                                                                                      ', 39, 101, 0, N'VN0A3DZ3OXSa.jpg', 3, 14, N'🏠 SALE Giày Vans Full Box (Kèm Hộp)
+ Với kiểu dáng không cầu kỳ mà rất thanh lịch, đơn giản và nhẹ nhàng, phù hợp với nhiều loại trang phục.
+ Thiết kế với phong cách thể thao, cá tính, mạnh mẽ.
+ Chất liệu vải cao cấp, màu sắc đa dạng, bền đẹp.
+ Phong phú về kiểu dáng, có kiểu giày cổ thấp và kiểu giày cổ cao.
+ Phù hợp cho các bạn trẻ đi học, vui chơi, thể thao, tha hồ dạo phố và du ngoạn, mang đến cảm giác thoải mái nhất cho người dùng.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (80, N'Vans Slip-On Flame                                                                                                                                    ', 42, 231, 0, N'amiri-white-and-red-flame-slip-on-sneakers.jpg', 3, 23, N'🏠 SALE Giày Vans Full Box (Kèm Hộp)
+ Với kiểu dáng không cầu kỳ mà rất thanh lịch, đơn giản và nhẹ nhàng, phù hợp với nhiều loại trang phục.
+ Thiết kế với phong cách thể thao, cá tính, mạnh mẽ.
+ Chất liệu vải cao cấp, màu sắc đa dạng, bền đẹp.
+ Phong phú về kiểu dáng, có kiểu giày cổ thấp và kiểu giày cổ cao.
+ Phù hợp cho các bạn trẻ đi học, vui chơi, thể thao, tha hồ dạo phố và du ngoạn, mang đến cảm giác thoải mái nhất cho người dùng.
')
INSERT [dbo].[Product] ([id], [name], [size], [price], [StatusSale], [image], [brandID], [quantity], [about]) VALUES (81, N' Vans Lowland CC Frame                                                                                                                                ', 40, 260, 0, N'Vans-Lowland-CC-Flame-Product.jpg', 3, 14, N'🏠 SALE Giày Vans Full Box (Kèm Hộp)
+ Với kiểu dáng không cầu kỳ mà rất thanh lịch, đơn giản và nhẹ nhàng, phù hợp với nhiều loại trang phục.
+ Thiết kế với phong cách thể thao, cá tính, mạnh mẽ.
+ Chất liệu vải cao cấp, màu sắc đa dạng, bền đẹp.
+ Phong phú về kiểu dáng, có kiểu giày cổ thấp và kiểu giày cổ cao.
+ Phù hợp cho các bạn trẻ đi học, vui chơi, thể thao, tha hồ dạo phố và du ngoạn, mang đến cảm giác thoải mái nhất cho người dùng.
')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[TableBrand] ON 

INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (1, N'Nike')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (2, N'Adidas')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (3, N'Puma')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (4, N'Sneaker')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (5, N'BAPE ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (6, N'VANS ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (7, N'ALEXANDER WANG')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (8, N'CONVERSE ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (9, N'GUCCI ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (10, N'OFF-WHITE')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (11, N'CHAMPION ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (12, N'FEAR OF GOD')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (13, N'ANTI SOCIAL SOCIAL CLUB')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (14, N'STUSSY ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (15, N'UNIQLO ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (16, N'DREW ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (17, N'SUPREME ')
INSERT [dbo].[TableBrand] ([brandID], [name]) VALUES (18, N'CHAMPION ')
SET IDENTITY_INSERT [dbo].[TableBrand] OFF
USE [master]
GO
ALTER DATABASE [Project_PRN292] SET  READ_WRITE 
GO
