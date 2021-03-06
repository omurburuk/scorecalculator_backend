USE [MyScoreCalculator]
GO
/****** Object:  Table [dbo].[City]    Script Date: 21.03.2021 23:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [char](2) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomeRange]    Script Date: 21.03.2021 23:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomeRange](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncomeRange] [varchar](30) NULL,
	[Factor] [int] NULL,
 CONSTRAINT [PK_IncomeRange] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 21.03.2021 23:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21.03.2021 23:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityNu] [varchar](11) NOT NULL,
	[NameSurname] [varchar](70) NOT NULL,
	[IncomeRangeId] [int] NULL,
	[Phone] [varchar](13) NULL,
	[CityId] [int] NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (1, N'01', N'Adana', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (2, N'02', N'Adıyaman', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (3, N'03', N'Afyon', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (4, N'04', N'Ağrı', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (5, N'05', N'Amasya', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (6, N'06', N'Ankara', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (7, N'07', N'Antalya', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (8, N'08', N'Artvin', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (9, N'09', N'Aydın', 2000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (10, N'10', N'Balıkesir', 3000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (11, N'11', N'Bilecik', 3000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (12, N'12', N'Bingöl', 3000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (13, N'13', N'Bitlis', 3000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (14, N'14', N'Bolu', 3000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (15, N'15', N'Burdur', 3000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (16, N'16', N'Bursa', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (17, N'17', N'Çanakkale', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (18, N'18', N'Çankırı', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (19, N'19', N'Çorum', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (20, N'20', N'Denizli', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (21, N'21', N'Diyarbakır', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (22, N'22', N'Edirne', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (23, N'23', N'Elazığ', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (24, N'24', N'Erzincan', 4000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (25, N'25', N'Erzurum', 5000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (26, N'26', N'Eskişehir', 5000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (27, N'27', N'Gaziantep', 5000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (28, N'28', N'Giresun', 5000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (29, N'29', N'Gümüşhane', 5000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (30, N'30', N'Hakkari', 5000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (31, N'31', N'Hatay', 5000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (32, N'32', N'Isparta', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (33, N'33', N'Mersin', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (34, N'34', N'İstanbul', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (35, N'35', N'İzmir', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (36, N'36', N'Kars', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (37, N'37', N'Kastamonu', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (38, N'38', N'Kayseri', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (39, N'39', N'Kırklareli', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (40, N'40', N'Kırşehir', 6000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (41, N'41', N'Kocaeli', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (42, N'42', N'Konya', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (43, N'43', N'Kütahya', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (44, N'44', N'Malatya', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (45, N'45', N'Manisa', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (46, N'46', N'K.Maraş', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (47, N'47', N'Mardin', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (48, N'48', N'Muğla', 7000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (49, N'49', N'Muş', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (50, N'50', N'Nevşehir', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (51, N'51', N'Niğde', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (52, N'52', N'Ordu', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (53, N'53', N'Rize', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (54, N'54', N'Sakarya', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (55, N'55', N'Samsun', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (56, N'56', N'Siirt', 8000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (57, N'57', N'Sinop', 10000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (58, N'58', N'Sivas', 10000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (59, N'59', N'Tekirdağ', 10000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (60, N'60', N'Tokat', 10000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (61, N'61', N'Trabzon', 18000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (62, N'62', N'Tunceli', 10000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (63, N'63', N'Şanlıurfa', 19000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (64, N'64', N'Uşak', 20000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (65, N'65', N'Van', 20000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (66, N'66', N'Yozgat', 20000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (67, N'67', N'Zonguldak', 20000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (68, N'68', N'Aksaray', 20000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (69, N'69', N'Bayburt', 20000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (70, N'70', N'Karaman', 20000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (71, N'71', N'Kırıkkale', 15000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (72, N'72', N'Batman', 15000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (73, N'73', N'Şırnak', 15000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (74, N'74', N'Bartın', 15000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (75, N'75', N'Ardahan', 15000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (76, N'76', N'Iğdır', 15000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (77, N'77', N'Yalova', 15000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (78, N'78', N'Karabük', 1000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (79, N'79', N'Kilis', 1000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (80, N'80', N'Osmaniye', 9000)
INSERT [dbo].[City] ([Id], [Code], [Name], [Score]) VALUES (81, N'81', N'Düzce', 9000)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[IncomeRange] ON 

INSERT [dbo].[IncomeRange] ([Id], [IncomeRange], [Factor]) VALUES (1, N'0-2999TL', 800)
INSERT [dbo].[IncomeRange] ([Id], [IncomeRange], [Factor]) VALUES (2, N'3000TL-4999TL', 1000)
INSERT [dbo].[IncomeRange] ([Id], [IncomeRange], [Factor]) VALUES (3, N'5000TL-7999TL', 1200)
INSERT [dbo].[IncomeRange] ([Id], [IncomeRange], [Factor]) VALUES (4, N'8000TL-11999TL', 1500)
INSERT [dbo].[IncomeRange] ([Id], [IncomeRange], [Factor]) VALUES (5, N'12000TL ve üzeri', 2000)
SET IDENTITY_INSERT [dbo].[IncomeRange] OFF
GO
SET IDENTITY_INSERT [dbo].[Score] ON 

INSERT [dbo].[Score] ([Id], [UserId], [Total]) VALUES (1, 1, 32000)
SET IDENTITY_INSERT [dbo].[Score] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [IdentityNu], [NameSurname], [IncomeRangeId], [Phone], [CityId], [Score]) VALUES (1, N'12345678901', N'Ömür Buruk', 5, N'1234567890', 61, 8)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
