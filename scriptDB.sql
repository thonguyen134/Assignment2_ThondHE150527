USE [Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[displayname] [varchar](200) NOT NULL,
	[e_id] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[phone] [char](15) NOT NULL,
	[address] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[e_id] [int] IDENTITY(1,1) NOT NULL,
	[e_first_name] [varchar](100) NOT NULL,
	[e_last_name] [varchar](100) NOT NULL,
	[e_gender] [bit] NOT NULL,
	[e_date_of_birth] [date] NOT NULL,
	[e_hire_date] [date] NOT NULL,
	[e_salary] [int] NOT NULL,
	[e_address] [varchar](500) NOT NULL,
	[e_phone] [varchar](15) NOT NULL,
	[e_mail] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[f_id] [int] NOT NULL,
	[f_name] [varchar](150) NOT NULL,
	[url] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Freture] PRIMARY KEY CLUSTERED 
(
	[f_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[g_id] [int] NOT NULL,
	[g_name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[g_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Account]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Account](
	[username] [varchar](50) NOT NULL,
	[g_id] [int] NOT NULL,
 CONSTRAINT [PK_Group_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[g_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Feature]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Feature](
	[g_id] [int] NOT NULL,
	[f_id] [int] NOT NULL,
 CONSTRAINT [PK_Group_Freture] PRIMARY KEY CLUSTERED 
(
	[g_id] ASC,
	[f_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[c_id] [int] NOT NULL,
	[DateOrdered] [date] NOT NULL,
	[username] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[o_id] [int] NOT NULL,
	[p_id] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[o_id] ASC,
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[p_id] [int] IDENTITY(1,1) NOT NULL,
	[phase_motor] [int] NOT NULL,
	[kw_motor] [float] NOT NULL,
	[speed_minutes] [int] NOT NULL,
	[country] [varchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timekeeping_Employees]    Script Date: 3/20/2022 4:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timekeeping_Employees](
	[t_day] [date] NOT NULL,
	[e_id] [int] NOT NULL,
 CONSTRAINT [PK_Timekeeping_Employees_1] PRIMARY KEY CLUSTERED 
(
	[t_day] ASC,
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'admin1', N'123456', N'Mr.Que', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'admin2', N'123456', N'Mrs.Them', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'binh123', N'123', N'binh', 28)
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'dung123', N'123', N'dungduy', 23)
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'nambeo1', N'1238', N'nampham8', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'nambeo123', N'123', N'nambeo', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'phungdong', N'1233', N'dong', 27)
INSERT [dbo].[Account] ([username], [password], [displayname], [e_id]) VALUES (N'tho123', N'123', N'ThoNguyen', 22)
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (3, N'Binh', N'0349019123     ', N'Xuan Mai')
INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (5, N'Hoa', N'0977132230     ', N'My luong')
INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (6, N'Nguyen Thi Lan', N'0987353123     ', N'Van My')
INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (7, N'Huyen', N'012323241      ', N'nui sao')
INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (8, N'Linnh', N'0977716330     ', N'Phu Tho')
INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (9, N'Phuc', N'0978062834     ', N'Van my')
INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (10, N'Bitchi', N'0123922222     ', N'Nghe An')
INSERT [dbo].[Customers] ([c_id], [name], [phone], [address]) VALUES (11, N'Phuong Anh', N' 0989312342    ', N'Nui sao')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([e_id], [e_first_name], [e_last_name], [e_gender], [e_date_of_birth], [e_hire_date], [e_salary], [e_address], [e_phone], [e_mail]) VALUES (22, N'Nguyen Dinh ', N'Tho', 1, CAST(N'2001-12-17' AS Date), CAST(N'2021-12-12' AS Date), 8000000, N'My luong', N'0349019012', N'thondhe150527@fpt.edu.vn')
INSERT [dbo].[Employees] ([e_id], [e_first_name], [e_last_name], [e_gender], [e_date_of_birth], [e_hire_date], [e_salary], [e_address], [e_phone], [e_mail]) VALUES (23, N'Phung Duy ', N'Dung', 1, CAST(N'1996-02-02' AS Date), CAST(N'2022-02-17' AS Date), 9000000, N'Phu Tho', N'0939019012', N'dung@gmail.com')
INSERT [dbo].[Employees] ([e_id], [e_first_name], [e_last_name], [e_gender], [e_date_of_birth], [e_hire_date], [e_salary], [e_address], [e_phone], [e_mail]) VALUES (27, N'Phung Van ', N'Dong', 1, CAST(N'1991-03-01' AS Date), CAST(N'2021-06-01' AS Date), 22000000, N'My luong', N'0349019023', N'dong@gmail.com')
INSERT [dbo].[Employees] ([e_id], [e_first_name], [e_last_name], [e_gender], [e_date_of_birth], [e_hire_date], [e_salary], [e_address], [e_phone], [e_mail]) VALUES (28, N'Nguyen Huu ', N'Binh', 1, CAST(N'2022-03-02' AS Date), CAST(N'2022-03-10' AS Date), 7000000, N'My luong', N'0934974281', N'binh@gmaill.com')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (1, N'list employee', N'/employee/list')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (2, N'insert employee', N'/employee/insert')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (3, N'delete employee', N'/employee/delete')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (4, N'update employee', N'/employee/update')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (5, N'timekeeping employee', N'/employee/timekeeping')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (6, N'insert products', N'/product/insert')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (7, N'update product', N'/product/update')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (8, N'delete product', N'/product/delete')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (9, N'search product', N'/product/search')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (10, N'add order', N'/order/add')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (11, N'list order', N'/order/list')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (12, N'order detail', N'/order/detail')
INSERT [dbo].[Feature] ([f_id], [f_name], [url]) VALUES (13, N'shopping order', N'/order/shopping')
GO
INSERT [dbo].[Group] ([g_id], [g_name]) VALUES (1, N'Moderator')
INSERT [dbo].[Group] ([g_id], [g_name]) VALUES (2, N'Employee')
GO
INSERT [dbo].[Group_Account] ([username], [g_id]) VALUES (N'admin1', 1)
INSERT [dbo].[Group_Account] ([username], [g_id]) VALUES (N'admin2', 1)
INSERT [dbo].[Group_Account] ([username], [g_id]) VALUES (N'binh123', 2)
INSERT [dbo].[Group_Account] ([username], [g_id]) VALUES (N'dung123', 2)
INSERT [dbo].[Group_Account] ([username], [g_id]) VALUES (N'nambeo123', 2)
INSERT [dbo].[Group_Account] ([username], [g_id]) VALUES (N'phungdong', 2)
INSERT [dbo].[Group_Account] ([username], [g_id]) VALUES (N'tho123', 2)
GO
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 1)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 2)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 3)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 4)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 5)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 6)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 7)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 8)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 9)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 10)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 11)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 12)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (1, 13)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (2, 5)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (2, 9)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (2, 10)
INSERT [dbo].[Group_Feature] ([g_id], [f_id]) VALUES (2, 13)
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (1, 3, CAST(N'2022-03-16' AS Date), N'admin1')
INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (2, 5, CAST(N'2022-03-16' AS Date), N'admin1')
INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (3, 6, CAST(N'2022-03-16' AS Date), N'admin1')
INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (4, 7, CAST(N'2022-03-16' AS Date), N'admin1')
INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (5, 8, CAST(N'2022-03-16' AS Date), N'admin1')
INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (6, 9, CAST(N'2022-03-17' AS Date), N'nambeo123')
INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (7, 10, CAST(N'2022-03-17' AS Date), N'admin1')
INSERT [dbo].[Order] ([o_id], [c_id], [DateOrdered], [username]) VALUES (8, 11, CAST(N'2022-03-20' AS Date), N'tho123')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (1, 5, 3)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (1, 6, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (1, 7, 1)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (1, 9, 3)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (2, 5, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (2, 6, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (3, 6, 1)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (3, 7, 1)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (3, 9, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (4, 5, 3)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (4, 6, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (4, 7, 1)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (5, 6, 1)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (5, 7, 1)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (5, 9, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (6, 5, 4)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (6, 6, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (6, 11, 3)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (7, 5, 3)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (7, 12, 2)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (7, 14, 1)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (8, 5, 3)
INSERT [dbo].[Order_Detail] ([o_id], [p_id], [Quantity]) VALUES (8, 14, 2)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (5, 3, 0.5, 450, N'Duc', 950000, 2)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (6, 1, 4, 2800, N'Trung', 2000000, 1)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (7, 3, 1.1, 900, N'Duc', 750000, 0)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (9, 3, 2.2, 700, N'VietNam', 2000000, 1)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (10, 3, 2.8, 1400, N'Duc', 1650000, 4)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (11, 3, 3, 900, N'VietNam', 750000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (12, 3, 3.7, 900, N'Duc', 800000, 2)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (13, 3, 4, 1400, N'Nhat', 1250000, 2)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (14, 3, 4.5, 700, N'Nhat', 880000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (15, 3, 5.5, 1400, N'Trung', 1450000, 8)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (16, 3, 7.5, 2800, N'Duc', 2150000, 6)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (17, 3, 11, 1400, N'Trung', 1350000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (18, 3, 15, 1400, N'VietNam', 3000000, 4)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (19, 3, 17, 450, N'Trung', 1400000, 5)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (20, 3, 18.5, 1400, N'Trung', 3450000, 4)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (21, 1, 2.8, 1400, N'Nhat', 500000, 12)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (22, 1, 0.15, 1400, N'Trung', 560000, 5)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (23, 1, 0.5, 450, N'Trung', 400000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (24, 1, 0.55, 700, N'Trung', 700000, 5)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (25, 1, 0.75, 1400, N'Nhat', 750000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (26, 1, 1.1, 450, N'Nhat', 800000, 4)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (27, 1, 2.5, 1400, N'Duc', 950000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (28, 1, 3, 2800, N'Nhat', 2000000, 4)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (30, 1, 4, 2800, N'Nhat', 2500000, 2)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (31, 3, 0.37, 450, N'Nhat', 700000, 7)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (32, 3, 0.37, 1400, N'Nhat', 850000, 4)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (33, 3, 0.5, 900, N'Trung', 650000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (34, 3, 0.5, 900, N'My', 1000000, 4)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (35, 3, 0.5, 1400, N'Duc', 1300000, 5)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (36, 3, 3, 450, N'Trung', 100000, 2)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (37, 3, 2.8, 900, N'Duc', 1000000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (38, 3, 4.5, 900, N'Duc', 1500000, 3)
INSERT [dbo].[Products] ([p_id], [phase_motor], [kw_motor], [speed_minutes], [country], [price], [quantity]) VALUES (39, 1, 0.125, 900, N'Duc', 1000000, 6)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-02-01' AS Date), 22)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-01' AS Date), 22)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-01' AS Date), 23)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-02' AS Date), 22)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-02' AS Date), 23)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-03' AS Date), 22)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-04' AS Date), 22)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-05' AS Date), 22)
INSERT [dbo].[Timekeeping_Employees] ([t_day], [e_id]) VALUES (CAST(N'2022-03-06' AS Date), 22)
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Employees1] FOREIGN KEY([e_id])
REFERENCES [dbo].[Employees] ([e_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Employees1]
GO
ALTER TABLE [dbo].[Group_Account]  WITH CHECK ADD  CONSTRAINT [FK_Group_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Group_Account] CHECK CONSTRAINT [FK_Group_Account_Account]
GO
ALTER TABLE [dbo].[Group_Account]  WITH CHECK ADD  CONSTRAINT [FK_Group_Account_Group] FOREIGN KEY([g_id])
REFERENCES [dbo].[Group] ([g_id])
GO
ALTER TABLE [dbo].[Group_Account] CHECK CONSTRAINT [FK_Group_Account_Group]
GO
ALTER TABLE [dbo].[Group_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Group_Freture_Freture] FOREIGN KEY([f_id])
REFERENCES [dbo].[Feature] ([f_id])
GO
ALTER TABLE [dbo].[Group_Feature] CHECK CONSTRAINT [FK_Group_Freture_Freture]
GO
ALTER TABLE [dbo].[Group_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Group_Freture_Group] FOREIGN KEY([g_id])
REFERENCES [dbo].[Group] ([g_id])
GO
ALTER TABLE [dbo].[Group_Feature] CHECK CONSTRAINT [FK_Group_Freture_Group]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customers] FOREIGN KEY([c_id])
REFERENCES [dbo].[Customers] ([c_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([o_id])
REFERENCES [dbo].[Order] ([o_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Products] FOREIGN KEY([p_id])
REFERENCES [dbo].[Products] ([p_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Products]
GO
ALTER TABLE [dbo].[Timekeeping_Employees]  WITH CHECK ADD  CONSTRAINT [FK_Timekeeping_Employees_Employees] FOREIGN KEY([e_id])
REFERENCES [dbo].[Employees] ([e_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Timekeeping_Employees] CHECK CONSTRAINT [FK_Timekeeping_Employees_Employees]
GO
