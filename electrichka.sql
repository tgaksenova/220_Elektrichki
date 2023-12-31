USE [Electrichka]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25.11.2023 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[tariffPerZone] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directions]    Script Date: 25.11.2023 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 25.11.2023 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 25.11.2023 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stations]    Script Date: 25.11.2023 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[regionId] [int] NOT NULL,
	[directionId] [int] NOT NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [PK_Stations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 25.11.2023 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[time] [time](7) NOT NULL,
	[categoryId] [int] NOT NULL,
	[directionId] [int] NOT NULL,
	[stationFromId] [int] NOT NULL,
	[stationToId] [int] NOT NULL,
	[cost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25.11.2023 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](100) NOT NULL,
	[roleId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (1, N'Стандарт', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (2, N'Скоростной', CAST(12.50 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (3, N'Сверх-скоростной', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (4, N'Комфорт+', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (5, N'Комфорт -', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (6, N'Ретро', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (7, N'Вип', CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (8, N'Экспресс', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (11, N'Стандарт +', CAST(12.50 AS Decimal(10, 2)))
INSERT [dbo].[Categories] ([id], [name], [tariffPerZone]) VALUES (12, N'Платинум', CAST(100.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Directions] ON 

INSERT [dbo].[Directions] ([id], [name]) VALUES (1, N'D1')
INSERT [dbo].[Directions] ([id], [name]) VALUES (2, N'D2')
INSERT [dbo].[Directions] ([id], [name]) VALUES (3, N'D3')
INSERT [dbo].[Directions] ([id], [name]) VALUES (4, N'D4')
INSERT [dbo].[Directions] ([id], [name]) VALUES (5, N'D5')
INSERT [dbo].[Directions] ([id], [name]) VALUES (6, N'D6')
INSERT [dbo].[Directions] ([id], [name]) VALUES (7, N'D7')
INSERT [dbo].[Directions] ([id], [name]) VALUES (8, N'D8')
INSERT [dbo].[Directions] ([id], [name]) VALUES (9, N'D9')
INSERT [dbo].[Directions] ([id], [name]) VALUES (10, N'D10')
SET IDENTITY_INSERT [dbo].[Directions] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([id], [name]) VALUES (1, N'Москва')
INSERT [dbo].[Regions] ([id], [name]) VALUES (2, N'Балашиха')
INSERT [dbo].[Regions] ([id], [name]) VALUES (3, N'Воскресенск')
INSERT [dbo].[Regions] ([id], [name]) VALUES (4, N'Видное')
INSERT [dbo].[Regions] ([id], [name]) VALUES (5, N'Волоколамск')
INSERT [dbo].[Regions] ([id], [name]) VALUES (6, N'Воскресенск')
INSERT [dbo].[Regions] ([id], [name]) VALUES (7, N'Клин')
INSERT [dbo].[Regions] ([id], [name]) VALUES (8, N'Голицыно')
INSERT [dbo].[Regions] ([id], [name]) VALUES (9, N'Истра')
INSERT [dbo].[Regions] ([id], [name]) VALUES (10, N'Дедовск')
INSERT [dbo].[Regions] ([id], [name]) VALUES (11, N'Красногорск')
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [name]) VALUES (1, N'Кассир')
INSERT [dbo].[Roles] ([id], [name]) VALUES (2, N'Пассажир')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Stations] ON 

INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (1, N'Истра', 9, 2, 1)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (2, N'Троицкая', 9, 2, 2)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (3, N'Манихино', 9, 2, 3)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (4, N'50 км', 9, 2, 4)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (5, N'Снегири', 9, 2, 5)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (6, N'Миитовская', 10, 2, 6)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (7, N'Малиновка', 10, 2, 8)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (8, N'Нахабино', 11, 2, 9)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (9, N'Аникеевка', 11, 2, 10)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (10, N'Опалиха', 11, 2, 11)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (11, N'Красногорская', 11, 2, 12)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (12, N'Павшино', 11, 2, 13)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (13, N'Пенягино', 11, 2, 14)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (14, N'Волоколамская', 1, 2, 15)
INSERT [dbo].[Stations] ([id], [name], [regionId], [directionId], [number]) VALUES (15, N'Дедовск', 10, 2, 7)
SET IDENTITY_INSERT [dbo].[Stations] OFF
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (1, CAST(N'2023-10-10' AS Date), CAST(N'06:00:00' AS Time), 3, 2, 2, 4, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (2, CAST(N'2023-10-10' AS Date), CAST(N'06:00:00' AS Time), 3, 2, 1, 10, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (4, CAST(N'2023-10-10' AS Date), CAST(N'06:30:00' AS Time), 1, 2, 3, 7, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (5, CAST(N'2023-10-10' AS Date), CAST(N'09:20:00' AS Time), 7, 2, 13, 4, CAST(450.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (6, CAST(N'2023-10-11' AS Date), CAST(N'06:10:00' AS Time), 2, 2, 3, 7, CAST(62.50 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (7, CAST(N'2023-10-11' AS Date), CAST(N'07:00:00' AS Time), 4, 2, 4, 13, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (8, CAST(N'2023-10-11' AS Date), CAST(N'16:00:00' AS Time), 3, 2, 4, 2, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (9, CAST(N'2023-10-12' AS Date), CAST(N'08:00:00' AS Time), 5, 2, 1, 14, CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (10, CAST(N'2023-10-12' AS Date), CAST(N'17:00:00' AS Time), 6, 2, 1, 3, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (11, CAST(N'2023-10-12' AS Date), CAST(N'17:30:00' AS Time), 8, 2, 11, 6, CAST(90.00 AS Decimal(10, 2)))
INSERT [dbo].[Tickets] ([id], [date], [time], [categoryId], [directionId], [stationFromId], [stationToId], [cost]) VALUES (12, CAST(N'2023-10-28' AS Date), CAST(N'23:34:29.9904388' AS Time), 12, 2, 1, 15, CAST(600.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (1, N'Леонов Александр Павлович', 1)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (2, N'Жуков Борис Артёмович', 1)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (3, N'Скворцов Василий Романович', 1)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (4, N'Иванова Дарья Викторовна', 1)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (5, N'Лукьянова Евгения Алексеевна', 1)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (6, N'Смирнова Екатерина Ивановна', 2)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (7, N'Давыдова Арина Тимофеевна', 2)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (8, N'Павлова Алина Артёмовна', 2)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (9, N'Андреев Ярослав Павлович', 2)
INSERT [dbo].[Users] ([id], [fullName], [roleId]) VALUES (10, N'Нечаев Денис Сергеевич', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Stations]  WITH CHECK ADD  CONSTRAINT [FK_Stations_Directions] FOREIGN KEY([directionId])
REFERENCES [dbo].[Directions] ([id])
GO
ALTER TABLE [dbo].[Stations] CHECK CONSTRAINT [FK_Stations_Directions]
GO
ALTER TABLE [dbo].[Stations]  WITH CHECK ADD  CONSTRAINT [FK_Stations_Regions] FOREIGN KEY([regionId])
REFERENCES [dbo].[Regions] ([id])
GO
ALTER TABLE [dbo].[Stations] CHECK CONSTRAINT [FK_Stations_Regions]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Categories] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Categories]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Directions] FOREIGN KEY([directionId])
REFERENCES [dbo].[Directions] ([id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Directions]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Stations] FOREIGN KEY([stationToId])
REFERENCES [dbo].[Stations] ([id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Stations]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Stations1] FOREIGN KEY([stationFromId])
REFERENCES [dbo].[Stations] ([id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Stations1]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
