USE [Ukraine]
GO
/****** Object:  Table [dbo].[AdvertType]    Script Date: 09.03.2022 14:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertType](
	[a_ID] [int] IDENTITY(1,1) NOT NULL,
	[a_type] [nvarchar](50) NOT NULL,
	[a_costPerSecond] [int] NOT NULL,
 CONSTRAINT [PK__AdvertTy__5667CEB26ABBA951] PRIMARY KEY CLUSTERED 
(
	[a_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 09.03.2022 14:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[c_ID] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [nvarchar](50) NOT NULL,
	[c_phone] [nvarchar](50) NOT NULL,
	[c_email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 09.03.2022 14:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[o_ID] [int] IDENTITY(1,1) NOT NULL,
	[o_clientID] [int] NOT NULL,
	[o_adType] [int] NOT NULL,
	[o_managerID] [int] NOT NULL,
	[o_durationInSecond] [int] NOT NULL,
	[o_cost] [decimal](18, 2) NOT NULL,
	[o_date] [date] NOT NULL,
 CONSTRAINT [PK__Order__904CFE464969D421] PRIMARY KEY CLUSTERED 
(
	[o_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09.03.2022 14:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[u_ID] [int] IDENTITY(1,1) NOT NULL,
	[u_login] [nvarchar](50) NOT NULL,
	[u_password] [nvarchar](50) NOT NULL,
	[u_role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[u_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdvertType] ON 

INSERT [dbo].[AdvertType] ([a_ID], [a_type], [a_costPerSecond]) VALUES (1, N'GIF', 5)
INSERT [dbo].[AdvertType] ([a_ID], [a_type], [a_costPerSecond]) VALUES (2, N'Picture', 10)
INSERT [dbo].[AdvertType] ([a_ID], [a_type], [a_costPerSecond]) VALUES (3, N'Movie', 15)
SET IDENTITY_INSERT [dbo].[AdvertType] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (1, N'Зайцев Александр Сергеевич', N'89960160772', N'sasha-z@mail.ru')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (2, N'Малахов Максим Сергеевич', N'89991321323', N'malah-m@mail.ru')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (3, N'Серов Данила Сергеевич', N'89134621352', N'donila-s@gmail.com')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (4, N'Теодор Дарья Алексеевна', N'89374612375', N'teadoor-d@mail.com')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (5, N'Горбачев Артем Юрьевич', N'89471739623', N'temik-g@mail.com')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (6, N'Ульянин Роман Евгеньевич', N'89375911233', N'romario-u@pochta.ru')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (7, N'Киселева Анна Дмитриевна', N'89462741654', N'aaanya-k@mail.ru')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (8, N'Бывшев Николай Андреевич', N'89462846561', N'kokole-b@gmail.com')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (9, N'Яшин Илья Владимирович', N'89281637882', N'iluha-y@yandex.ru')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (10, N'Зеленский Владимир Александрович', N'89101234546', N'zelen@yandex.ru')
INSERT [dbo].[Client] ([c_ID], [c_name], [c_phone], [c_email]) VALUES (11, N'Путин Владимир Владимирович', N'894018437124', N'dajgsfdg@yandex.ru')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (1, 2, 3, 2, 10, CAST(150.00 AS Decimal(18, 2)), CAST(N'2022-02-01' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (2, 5, 2, 2, 10, CAST(100.00 AS Decimal(18, 2)), CAST(N'2022-02-02' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (3, 3, 2, 2, 15, CAST(225.00 AS Decimal(18, 2)), CAST(N'2022-03-11' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (4, 8, 1, 4, 10, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-02-23' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (5, 4, 2, 4, 15, CAST(150.00 AS Decimal(18, 2)), CAST(N'2022-02-05' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (6, 3, 1, 4, 10, CAST(100.00 AS Decimal(18, 2)), CAST(N'2022-02-06' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (7, 9, 2, 2, 30, CAST(300.00 AS Decimal(18, 2)), CAST(N'2022-02-07' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (8, 1, 2, 2, 30, CAST(300.00 AS Decimal(18, 2)), CAST(N'2022-02-08' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (9, 6, 1, 4, 30, CAST(150.00 AS Decimal(18, 2)), CAST(N'2022-02-09' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (10, 9, 3, 2, 15, CAST(225.00 AS Decimal(18, 2)), CAST(N'2022-02-10' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (14, 11, 2, 2, 15, CAST(15.00 AS Decimal(18, 2)), CAST(N'2020-09-13' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (15, 1, 3, 2, 16, CAST(133.00 AS Decimal(18, 2)), CAST(N'2022-12-12' AS Date))
INSERT [dbo].[Order] ([o_ID], [o_clientID], [o_adType], [o_managerID], [o_durationInSecond], [o_cost], [o_date]) VALUES (18, 10, 2, 4, 13, CAST(13.00 AS Decimal(18, 2)), CAST(N'2000-05-13' AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([u_ID], [u_login], [u_password], [u_role]) VALUES (1, N'root', N'123', 1)
INSERT [dbo].[User] ([u_ID], [u_login], [u_password], [u_role]) VALUES (2, N'user', N'123', 0)
INSERT [dbo].[User] ([u_ID], [u_login], [u_password], [u_role]) VALUES (3, N'123', N'123', 1)
INSERT [dbo].[User] ([u_ID], [u_login], [u_password], [u_role]) VALUES (4, N'321', N'123', 0)
INSERT [dbo].[User] ([u_ID], [u_login], [u_password], [u_role]) VALUES (5, N'1', N'1', 0)
INSERT [dbo].[User] ([u_ID], [u_login], [u_password], [u_role]) VALUES (6, N'12345', N'12345', 0)
INSERT [dbo].[User] ([u_ID], [u_login], [u_password], [u_role]) VALUES (7, N'123456', N'123456', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__o_adType__173876EA] FOREIGN KEY([o_adType])
REFERENCES [dbo].[AdvertType] ([a_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__o_adType__173876EA]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__o_clientI__164452B1] FOREIGN KEY([o_clientID])
REFERENCES [dbo].[Client] ([c_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__o_clientI__164452B1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__o_manager__182C9B23] FOREIGN KEY([o_managerID])
REFERENCES [dbo].[User] ([u_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__o_manager__182C9B23]
GO
