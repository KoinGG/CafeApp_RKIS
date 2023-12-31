USE [UP2]
GO
/****** Object:  Table [dbo].[Dish]    Script Date: 15.03.2022 19:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DishName] [nvarchar](max) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[CookTime] [int] NOT NULL,
 CONSTRAINT [PK_Dish] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 15.03.2022 19:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeOrder] [time](7) NOT NULL,
	[UserID] [int] NOT NULL,
	[PlaceID] [int] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 15.03.2022 19:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 15.03.2022 19:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlaceNumber] [int] NOT NULL,
 CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 15.03.2022 19:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserve]    Script Date: 15.03.2022 19:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DishCount] [int] NOT NULL,
	[DishID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_Reserve] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15.03.2022 19:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Contract] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[PostID] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dish] ON 

INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (1, N'опомо (opomo)', CAST(487.37 AS Decimal(18, 2)), 15)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (2, N'угюбо (ugyubo)', CAST(339.58 AS Decimal(18, 2)), 23)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (3, N'ямуде (yamude)', CAST(1575.34 AS Decimal(18, 2)), 47)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (4, N'гисек (gisek)', CAST(4096.03 AS Decimal(18, 2)), 12)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (5, N'эмоху (emohu)', CAST(354.88 AS Decimal(18, 2)), 52)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (6, N'матит (matit)', CAST(1228.15 AS Decimal(18, 2)), 34)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (7, N'эзего (ezego)', CAST(4014.90 AS Decimal(18, 2)), 52)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (8, N'абуно (abuno)', CAST(2117.14 AS Decimal(18, 2)), 15)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (9, N'югупа (yugupa)', CAST(531.66 AS Decimal(18, 2)), 53)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (10, N'амулу (amulu)', CAST(903.58 AS Decimal(18, 2)), 25)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (11, N'евако (evako)', CAST(3791.92 AS Decimal(18, 2)), 36)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (12, N'етомо (etomo)', CAST(2020.12 AS Decimal(18, 2)), 41)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (13, N'акоке (akoke)', CAST(4281.29 AS Decimal(18, 2)), 44)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (14, N'фанув (fanuv)', CAST(438.02 AS Decimal(18, 2)), 16)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (15, N'уселе (usele)', CAST(1695.43 AS Decimal(18, 2)), 52)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (16, N'етите (etite)', CAST(4136.45 AS Decimal(18, 2)), 41)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (17, N'исуду (isudu)', CAST(887.18 AS Decimal(18, 2)), 24)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (18, N'эриди (eridi)', CAST(277.19 AS Decimal(18, 2)), 29)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (19, N'анокэ (anoke)', CAST(2411.02 AS Decimal(18, 2)), 69)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (20, N'имала (imala)', CAST(1984.64 AS Decimal(18, 2)), 21)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (21, N'асуту (asutu)', CAST(1311.71 AS Decimal(18, 2)), 25)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (22, N'алище (alische)', CAST(2894.32 AS Decimal(18, 2)), 45)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (23, N'гелоп (gelop)', CAST(1351.61 AS Decimal(18, 2)), 20)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (24, N'упити (upiti)', CAST(488.64 AS Decimal(18, 2)), 48)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (25, N'ореси (oresi)', CAST(2199.24 AS Decimal(18, 2)), 20)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (26, N'югика (yugika)', CAST(470.99 AS Decimal(18, 2)), 14)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (27, N'ецюру (ecyuru)', CAST(3980.43 AS Decimal(18, 2)), 16)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (28, N'океба (okeba)', CAST(612.75 AS Decimal(18, 2)), 14)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (29, N'кюгэг (kyugeg)', CAST(1396.56 AS Decimal(18, 2)), 28)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (30, N'якиме (yakime)', CAST(4157.87 AS Decimal(18, 2)), 23)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (31, N'ухуди (uhudi)', CAST(3321.17 AS Decimal(18, 2)), 34)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (32, N'оруко (oruko)', CAST(3272.78 AS Decimal(18, 2)), 43)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (33, N'дагим (dagim)', CAST(3925.89 AS Decimal(18, 2)), 36)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (34, N'екуци (ekuci)', CAST(1081.71 AS Decimal(18, 2)), 39)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (35, N'енугу (enugu)', CAST(383.54 AS Decimal(18, 2)), 41)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (36, N'пирин (pirin)', CAST(837.48 AS Decimal(18, 2)), 21)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (37, N'омиби (omibi)', CAST(3579.18 AS Decimal(18, 2)), 12)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (38, N'адиве (adive)', CAST(1828.48 AS Decimal(18, 2)), 19)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (39, N'пюном (pyunom)', CAST(3405.80 AS Decimal(18, 2)), 62)
INSERT [dbo].[Dish] ([ID], [DishName], [Cost], [CookTime]) VALUES (40, N'улока (uloka)', CAST(3470.70 AS Decimal(18, 2)), 47)
SET IDENTITY_INSERT [dbo].[Dish] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([ID], [PostName]) VALUES (1, N'Повар')
INSERT [dbo].[Post] ([ID], [PostName]) VALUES (2, N'Официант')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (1, N'Гена', N'Булкин', N'Афанасьевич', N'1', N'1', N'1', N'1', N'1', 1)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (2, N'Александр', N'Гущин', N'Улебович', N'Elley', N'wzFd4v', N'1', N'1', N'1', 1)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (3, N'Гавриил', N'Казаков', N'Геннадьевич', N'Ollay', N'mEwRoQ', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (4, N'Юлий', N'Брагин', N'Фролович', N'Blakery', N'tUwVqf', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (5, N'Борис', N'Щукин', N'Геннадьевич', N'Edex', N'IZmpIZ', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (6, N'Ибрагил', N'Гурьев', N'Павлович', N'Tomseph', N'nHI8DE', N'1', N'1', N'1', 1)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (8, N'Рудольф', N'Панфилов', N'Лукьевич', N'Louiecha', N'tDx6ls', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (9, N'Ираклий', N'Сафонов', N'Павлович', N'Bobam', N'Yjqxd3', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (10, N'Семен', N'Зуев', N'Богданович', N'Ausni', N'wbicYa', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (11, N'Игнат', N'Ковалёв', N'Тарасович', N'Blakeot', N'POTncQ', N'1', N'1', N'1', 1)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (12, N'Мечеслав', N'Потапов', N'Васильевич', N'Oscas', N'zvvDV9', N'1', N'1', N'1', 1)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (13, N'Арсений', N'Маслов', N'Семёнович', N'Lukethan', N'WUbbSS', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (14, N'Анна', N'Павлова', N'Антониновна', N'Brooketha', N'YdL5dx', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (15, N'Джема', N'Ларионова', N'Богдановна', N'Avasica', N'mF5pSy', N'1', N'1', N'1', 1)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (16, N'Аэлита', N'Якушева', N'Макаровна', N'Mato', N'bS5D48', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (18, N'Веста', N'Меркушева', N'Валентиновна', N'Fretha', N'WyhoaP', N'1', N'1', N'1', 2)
INSERT [dbo].[Users] ([ID], [Name], [Surname], [Patronymic], [Login], [Password], [Status], [Contract], [Photo], [PostID]) VALUES (19, N'Галя', N'Шышлова', N'Шаболдовна', N'2', N'2', N'2', N'2', N'2', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus_OrderStatusID] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus_OrderStatusID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Place_PlaceID] FOREIGN KEY([PlaceID])
REFERENCES [dbo].[Place] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Place_PlaceID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users_UserID]
GO
ALTER TABLE [dbo].[Reserve]  WITH CHECK ADD  CONSTRAINT [FK_Reserve_Dish_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Dish] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reserve] CHECK CONSTRAINT [FK_Reserve_Dish_OrderID]
GO
ALTER TABLE [dbo].[Reserve]  WITH CHECK ADD  CONSTRAINT [FK_Reserve_Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reserve] CHECK CONSTRAINT [FK_Reserve_Order_OrderID]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Post_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Post_PostID]
GO
