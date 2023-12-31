USE [master]
GO
/****** Object:  Database [user21]    Script Date: 10.09.2023 23:22:11 ******/
CREATE DATABASE [user21]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'user21', FILENAME = N'C:\Users\ADMIN\user21.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'user21_log', FILENAME = N'C:\Users\ADMIN\user21_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [user21] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [user21].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [user21] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [user21] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [user21] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [user21] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [user21] SET ARITHABORT OFF 
GO
ALTER DATABASE [user21] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [user21] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [user21] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [user21] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [user21] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [user21] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [user21] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [user21] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [user21] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [user21] SET  ENABLE_BROKER 
GO
ALTER DATABASE [user21] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [user21] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [user21] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [user21] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [user21] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [user21] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [user21] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [user21] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [user21] SET  MULTI_USER 
GO
ALTER DATABASE [user21] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [user21] SET DB_CHAINING OFF 
GO
ALTER DATABASE [user21] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [user21] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [user21] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [user21] SET QUERY_STORE = OFF
GO
USE [user21]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [user21]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 10.09.2023 23:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Clients_ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](100) NULL,
	[Lastname] [nvarchar](100) NULL,
	[Patronymic] [nvarchar](100) NULL,
	[Gender] [nvarchar](15) NULL,
	[Phone] [nvarchar](255) NULL,
	[Birthdate] [date] NULL,
	[Email] [nvarchar](155) NULL,
	[Register_Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Clients_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 10.09.2023 23:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Service_ID] [int] IDENTITY(1,1) NOT NULL,
	[Service] [nvarchar](255) NULL,
	[Main_Image] [nvarchar](100) NULL,
	[Time] [nvarchar](55) NULL,
	[Price] [money] NULL,
	[Discount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Service_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Clients]    Script Date: 10.09.2023 23:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Clients](
	[Service_Client_ID] [int] IDENTITY(1,1) NOT NULL,
	[Service_Name] [nvarchar](255) NULL,
	[Service_ID] [int] NULL,
	[Date_Service] [datetime] NULL,
	[Client] [nvarchar](100) NULL,
	[Client_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Service_Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (1, N'Васильев', N'Оскар', N'Богданович', N'м', N'7(585)801-94-29 ', CAST(N'1971-01-30' AS Date), N'miturria@verizon.net', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (2, N'Лазарев', N'Алексей', N'Богданович', N'м', N'7(0055)737-37-48 ', CAST(N'1977-03-10' AS Date), N'claesjac@me.com', CAST(N'2017-01-02' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (3, N'Казаков', N'Дмитрий', N'Русланович', N'м', N'7(51)682-19-40 ', CAST(N'1978-12-15' AS Date), N'ozawa@verizon.net', CAST(N'2016-05-21' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (4, N'Попова', N'Харита', N'Якуновна', N'ж', N'7(335)386-81-06 ', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', CAST(N'2016-07-05' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (5, N'Турова', N'Георгина', N'Семёновна', N'ж', N'7(555)321-42-99 ', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', CAST(N'2018-02-22' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (6, N'Андреев', N'Станислав', N'Максович', N'м', N'7(02)993-91-28 ', CAST(N'1975-10-10' AS Date), N'budinger@mac.com', CAST(N'2017-12-26' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (7, N'Орлова', N'Влада', N'Мартыновна', N'ж', N'7(2506)433-38-35 ', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (8, N'Костина', N'Любава', N'Авксентьевна', N'ж', N'7(6419)959-21-87 ', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', CAST(N'2016-02-26' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (9, N'Александров', N'Станислав', N'Эдуардович', N'м', N'7(18)164-05-12 ', CAST(N'1981-07-04' AS Date), N'bigmauler@aol.com', CAST(N'2018-11-08' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (10, N'Корнилова', N'Анэля', N'Михайловна', N'ж', N'7(20)980-01-60 ', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', CAST(N'2016-05-22' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (11, N'Морозов', N'Наум', N'Валерьянович', N'м', N'7(636)050-96-13 ', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (12, N'Баранова', N'Эльмира', N'Дмитриевна', N'ж', N'7(9240)643-15-50 ', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', CAST(N'2016-07-08' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (13, N'Степанова', N'Амелия', N'Робертовна', N'ж', N'7(1217)441-28-42 ', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', CAST(N'2017-09-27' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (14, N'Горбачёв', N'Давид', N'Тимурович', N'м', N'7(53)602-85-41 ', CAST(N'1983-05-22' AS Date), N'hedwig@att.net', CAST(N'2018-12-17' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (15, N'Волков', N'Людвиг', N'Витальевич', N'м', N'7(8459)592-05-58 ', CAST(N'1977-12-27' AS Date), N'jrkorson@msn.com', CAST(N'2016-04-27' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (16, N'Комиссарова', N'Амалия', N'Робертовна', N'ж', N'7(22)647-46-32 ', CAST(N'1971-08-18' AS Date), N'jorgb@msn.com', CAST(N'2017-08-04' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (17, N'Большаков', N'Вадим', N'Данилович', N'м', N'7(386)641-13-37 ', CAST(N'1970-05-15' AS Date), N'uncle@gmail.com', CAST(N'2018-08-04' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (18, N'Абрамов', N'Станислав', N'Филатович', N'м', N'7(6545)478-87-79 ', CAST(N'1989-05-18' AS Date), N'solomon@att.net', CAST(N'2016-12-08' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (19, N'Журавлёв', N'Леонтий', N'Яковлевич', N'м', N'7(4403)308-56-96 ', CAST(N'2000-03-02' AS Date), N'cmdrgravy@me.com', CAST(N'2018-01-15' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (20, N'Селиверстов', N'Глеб', N'Максимович', N'м', N'7(20)554-28-68 ', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (21, N'Киселёв', N'Устин', N'Яковлевич', N'м', N'7(83)334-52-76 ', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (22, N'Зуев', N'Матвей', N'Иванович', N'м', N'7(5383)893-04-66 ', CAST(N'1981-03-28' AS Date), N'brickbat@verizon.net', CAST(N'2018-12-18' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (23, N'Ершов', N'Глеб', N'Федорович', N'м', N'7(2608)298-40-82 ', CAST(N'1970-06-14' AS Date), N'sjava@aol.com', CAST(N'2016-09-14' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (24, N'Бобылёв', N'Георгий', N'Витальевич', N'м', N'7(88)685-13-51 ', CAST(N'1983-12-19' AS Date), N'csilvers@mac.com', CAST(N'2018-04-06' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (25, N'Ефремов', N'Витольд', N'Авксентьевич', N'м', N'7(93)922-14-03 ', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (26, N'Андреева', N'Патрисия', N'Валерьевна', N'ж', N'7(9648)953-81-26 ', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', CAST(N'2016-07-17' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (27, N'Ефимова', N'Магда', N'Платоновна', N'ж', N'7(9261)386-15-92 ', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', CAST(N'2017-08-01' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (28, N'Голубев', N'Иосиф', N'Тимофеевич', N'м', N'7(78)972-73-11 ', CAST(N'1982-05-06' AS Date), N'smcnabb@att.net', CAST(N'2018-08-18' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (29, N'Евсеев', N'Макар', N'Васильевич', N'м', N'7(2141)077-85-70 ', CAST(N'1977-09-13' AS Date), N'parsimony@sbcglobal.net', CAST(N'2018-12-05' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (30, N'Бобров', N'Агафон', N'Лаврентьевич', N'м', N'7(2159)507-39-57 ', CAST(N'1995-07-29' AS Date), N'petersen@comcast.net', CAST(N'2017-05-09' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (31, N'Игнатов', N'Захар', N'Павлович', N'м', N'7(578)574-73-36 ', CAST(N'1998-10-07' AS Date), N'dieman@icloud.com', CAST(N'2017-11-10' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (32, N'Гущина', N'Янита', N'Федоровна', N'ж', N'7(4544)716-68-96 ', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (33, N'Калашников', N'Артур', N'Юрьевич', N'м', N'7(147)947-47-21 ', CAST(N'1972-12-13' AS Date), N'oevans@aol.com', CAST(N'2017-08-20' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (34, N'Дмитриева', N'Элина', N'Даниловна', N'ж', N'7(787)140-48-84 ', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', CAST(N'2017-02-11' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (35, N'Федотова', N'Сандра', N'Владленовна', N'ж', N'7(126)195-25-86 ', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', CAST(N'2016-11-08' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (36, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N'7(9940)977-45-73 ', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (37, N'Колобова', N'Злата', N'Романовна', N'ж', N'7(50)884-07-35 ', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', CAST(N'2016-12-03' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (38, N'Некрасов', N'Варлам', N'Михайлович', N'м', N'7(019)258-06-35 ', CAST(N'2000-11-12' AS Date), N'dogdude@verizon.net', CAST(N'2017-12-03' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (39, N'Колобов', N'Орест', N'Юлианович', N'м', N'7(1680)508-58-26 ', CAST(N'2001-07-14' AS Date), N'parkes@verizon.net', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (40, N'Блохин', N'Пантелеймон', N'Феликсович', N'м', N'7(9524)556-48-98 ', CAST(N'1978-03-06' AS Date), N'balchen@comcast.net', CAST(N'2018-02-14' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (41, N'Калинин', N'Петр', N'Иванович', N'м', N'7(90)316-07-17 ', CAST(N'1993-09-08' AS Date), N'aschmitz@hotmail.com', CAST(N'2016-05-26' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (42, N'Беляева', N'Сабрина', N'Федосеевна', N'ж', N'7(6580)534-32-58 ', CAST(N'1972-07-26' AS Date), N'agapow@gmail.com', CAST(N'2017-06-14' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (43, N'Агафонов', N'Юстиниан', N'Олегович', N'м', N'7(303)810-28-78 ', CAST(N'1997-02-02' AS Date), N'staffelb@sbcglobal.net', CAST(N'2016-06-08' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (44, N'Мамонтова', N'Марфа', N'Мироновна', N'ж', N'7(38)095-64-18 ', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', CAST(N'2018-02-27' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (45, N'Блинов', N'Евгений', N'Мэлсович', N'м', N'7(0852)321-82-64 ', CAST(N'1994-01-05' AS Date), N'moxfulder@outlook.com', CAST(N'2017-05-07' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (46, N'Воронова', N'Изабелла', N'Вячеславовна', N'ж', N'7(17)433-44-98 ', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (47, N'Медведев', N'Святослав', N'Юлианович', N'м', N'7(3520)435-21-20 ', CAST(N'1972-10-04' AS Date), N'hllam@comcast.net', CAST(N'2018-10-13' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (48, N'Куликова', N'Эвелина', N'Вячеславовна', N'ж', N'7(0236)682-42-78 ', CAST(N'1997-11-14' AS Date), N'ilikered@hotmail.com', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (49, N'Суворова', N'Божена', N'Анатольевна', N'ж', N'7(347)895-86-57 ', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', CAST(N'2016-01-28' AS Date))
INSERT [dbo].[Clients] ([Clients_ID], [Surname], [Lastname], [Patronymic], [Gender], [Phone], [Birthdate], [Email], [Register_Date]) VALUES (50, N'Егорова', N'Амалия', N'Дамировна', N'ж', N'7(7486)408-12-26 ', CAST(N'1999-09-28' AS Date), N'drezet@yahoo.com', CAST(N'2016-06-30' AS Date))
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (1, N'Занятие с репетитором-носителем китайского языка', N' Китайский язык.jpg', N' 120 мин.', 1950.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (2, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N' Немецкий язык.png', N' 110 мин.', 1340.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (3, N'Киноклуб китайского языка для студентов', N' киноклуб.jpg', N' 100 мин.', 1990.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (4, N'Индивидуальный онлайн-урок японского языка по Skype', N' online lessons.jpg', N' 4800 сек.', 1000.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (5, N'Киноклуб испанского языка для студентов', N' киноклуб.jpg', N' 40 мин.', 1050.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (6, N'Занятие с русскоязычным репетитором испанского языка', N' Испанский язык.jpg', N' 50 мин.', 1450.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (7, N'Урок в группе итальянского языка для взрослых', N' Итальянский язык.jpg', N' 40 мин.', 1290.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (8, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N' online lessons.jpg', N' 2400 сек.', 1180.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (9, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N' Французский язык.jpg', N' 2400 сек.', 1410.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (10, N'Урок в группе французского языка для школьников', N' Французский язык.jpg', N' 6000 сек.', 1970.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (11, N'Занятие с репетитором-носителем английского языка', N' Английский язык.jpg', N' 6600 сек.', 910.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (12, N'Киноклуб французского языка для взрослых', N' киноклуб.jpg', N' 5400 сек.', 1770.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (13, N'Киноклуб немецкого языка для взрослых', N' киноклуб.jpg', N' 100 мин.', 1560.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (14, N'Урок в группе японского языка для школьников', N' Японский язык.jpg', N' 80 мин.', 1300.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (15, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N' Испанский язык.jpg', N' 60 мин.', 1790.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (16, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N' online lessons.jpg', N' 4200 сек.', 1230.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (17, N'Урок в группе японского языка для студентов', N' Японский язык.jpg', N' 3000 сек.', 1860.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (18, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N' for company.jpg', N' 110 мин.', 1670.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (19, N'Киноклуб итальянского языка для студентов', N' киноклуб.jpg', N' 30 мин.', 1760.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (20, N'Урок в группе испанского языка для взрослых', N' Испанский язык.jpg', N' 1800 сек.', 1730.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (21, N'Урок в группе испанского языка для студентов', N' Испанский язык.jpg', N' 100 мин.', 1310.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (22, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N' online lessons.jpg', N' 120 мин.', 1510.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (23, N'Урок в группе английского языка для школьников', N' Английский язык.jpg', N' 6600 сек.', 900.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (24, N'Занятие с репетитором-носителем испанского языка', N' Испанский язык.jpg', N' 3000 сек.', 1090.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (25, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N' for company.jpg', N' 2400 сек.', 1190.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (26, N'Урок в группе китайского языка для студентов', N' Китайский язык.jpg', N' 2400 сек.', 2000.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N' Испанский язык.jpg', N' 90 мин.', 1200.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (28, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N' online lessons.jpg', N' 70 мин.', 1610.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (29, N'Подготовка к экзамену ACT', N' Подготовка к экзамену ACT.png', N' 50 мин.', 1440.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (30, N'Урок в группе китайского языка для взрослых', N' Китайский язык.jpg', N' 4200 сек.', 1730.0000, 0.25)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (31, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N' online lessons.jpg', N' 3000 сек.', 1160.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (32, N'Подготовка к экзамену TOEFL', N' Подготовка к экзамену TOEFL.jpg', N' 6000 сек.', 1070.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (33, N'Занятие с репетитором-носителем итальянского языка', N' Итальянский язык.jpg', N' 7200 сек.', 1370.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (34, N'Урок в группе английского языка для взрослых', N' Английский язык.jpg', N' 3000 сек.', 1010.0000, 0.25)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (35, N'Киноклуб английского языка для взрослых', N' киноклуб.jpg', N' 70 мин.', 1250.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (36, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N' for company.jpg', N' 70 мин.', 1630.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (37, N'Урок в группе испанского языка для школьников', N' Испанский язык.jpg', N' 7200 сек.', 1910.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (38, N'Подготовка к экзамену GRE', N' Подготовка к экзамену GRE.jpeg', N' 80 мин.', 1300.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (39, N'Урок в группе английского языка для студентов', N' Английский язык.jpg', N' 4800 сек.', 960.0000, 0.25)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (40, N'Занятие с русскоязычным репетитором японского языка', N' Японский язык.jpg', N' 2400 сек.', 1260.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (41, N'Индивидуальный онлайн-урок немецкого языка по Skype', N' online lessons.jpg', N' 90 мин.', 970.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (42, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N' for company.jpg', N' 80 мин.', 1500.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (43, N'Киноклуб китайского языка для взрослых', N' киноклуб.jpg', N' 70 мин.', 1800.0000, 0.25)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (44, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N' Китайский язык.jpg', N' 120 мин.', 1860.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (45, N'Подготовка к экзамену GMAT', N' Подготовка к экзамену GMAT.png', N' 70 мин.', 1150.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (46, N'Подготовка к экзамену IELTS', N' Подготовка к экзамену IELTS.jpg', N' 7200 сек.', 1730.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (47, N'Подготовка к экзамену SAT', N' Подготовка к экзамену SAT.png', N' 40 мин.', 1560.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (48, N'Урок в группе китайского языка для школьников', N' Китайский язык.jpg', N' 3000 сек.', 1180.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (49, N'Киноклуб английского языка для студентов', N' киноклуб.jpg', N' 4800 сек.', 980.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (50, N'Киноклуб португальского языка для студентов', N' киноклуб.jpg', N' 1800 сек.', 1170.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (51, N'Киноклуб китайского языка для детей', N' киноклуб.jpg', N' 100 мин.', 1120.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (52, N'Урок в группе немецкого языка для школьников', N' Немецкий язык.png', N' 1800 сек.', 1570.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (53, N'Индивидуальный онлайн-урок испанского языка по Skype', N' online lessons.jpg', N' 4200 сек.', 1780.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (54, N'Урок в группе немецкого языка для взрослых', N' Немецкий язык.png', N' 60 мин.', 930.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (55, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N' Китайский язык.jpg', N' 90 мин.', 1480.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (56, N'Занятие с русскоязычным репетитором португальского языка', N' Португальский язык.jpg', N' 3000 сек.', 1970.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (57, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N' for company.jpg', N' 6600 сек.', 1470.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (58, N'Занятие с русскоязычным репетитором немецкого языка', N' Немецкий язык.png', N' 1800 сек.', 1420.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (59, N'Киноклуб английского языка для детей', N' киноклуб.jpg', N' 2400 сек.', 1280.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (60, N'Занятие с репетитором-носителем немецкого языка', N' Немецкий язык.png', N' 7200 сек.', 1120.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (61, N'Индивидуальный онлайн-урок китайского языка по Skype', N' online lessons.jpg', N' 4200 сек.', 1410.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (62, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N' Английский язык.jpg', N' 7200 сек.', 1300.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (63, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N' for company.jpg', N' 120 мин.', 1180.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (64, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N' online lessons.jpg', N' 4200 сек.', 1840.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (65, N'Урок в группе итальянского языка для школьников', N' Итальянский язык.jpg', N' 6000 сек.', 1410.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (66, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N' Итальянский язык.jpg', N' 30 мин.', 1330.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (67, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N' online lessons.jpg', N' 120 мин.', 1760.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (68, N'Занятие с русскоязычным репетитором французского языка', N' Французский язык.jpg', N' 6000 сек.', 1870.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (69, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N' Немецкий язык.png', N' 1800 сек.', 990.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (70, N'Индивидуальный онлайн-урок английского языка по Skype', N' online lessons.jpg', N' 6000 сек.', 1880.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (71, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N' Французский язык.jpg', N' 4200 сек.', 1390.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (72, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N' for company.jpg', N' 60 мин.', 2010.0000, 0.25)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (73, N'Индивидуальный онлайн-урок французского языка по Skype', N' online lessons.jpg', N' 7200 сек.', 2010.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (74, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N' for company.jpg', N' 4800 сек.', 1210.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (75, N'Урок в группе французского языка для взрослых', N' Французский язык.jpg', N' 120 мин.', 960.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (76, N'Подготовка к экзамену IELTS Speaking Club', N' Подготовка к экзамену IELTS.jpg', N' 90 мин.', 1430.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (77, N'Киноклуб итальянского языка для детей', N' киноклуб.jpg', N' 70 мин.', 1480.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (78, N'Урок в группе итальянского языка для студентов', N' Итальянский язык.jpg', N' 110 мин.', 1020.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (79, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N' Итальянский язык.jpg', N' 80 мин.', 1690.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (80, N'Киноклуб немецкого языка для детей', N' киноклуб.jpg', N' 120 мин.', 1670.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (81, N'Киноклуб итальянского языка для взрослых', N' киноклуб.jpg', N' 110 мин.', 1760.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (82, N'Киноклуб португальского языка для взрослых', N' киноклуб.jpg', N' 1800 сек.', 950.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (83, N'Киноклуб португальского языка для детей', N' киноклуб.jpg', N' 90 мин.', 1710.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (84, N'Киноклуб французского языка для детей', N' киноклуб.jpg', N' 90 мин.', 1600.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (85, N'Урок в группе японского языка для взрослых', N' Японский язык.jpg', N' 80 мин.', 1420.0000, 0.05)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (86, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N' for company.jpg', N' 40 мин.', 1940.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (87, N'Занятие с русскоязычным репетитором итальянского языка', N' Итальянский язык.jpg', N' 4200 сек.', 1620.0000, 0.2)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (88, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N' Английский язык.jpg', N' 30 мин.', 1910.0000, 0.1)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (89, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N' for company.jpg', N' 30 мин.', 1580.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (90, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N' for company.jpg', N' 5400 сек.', 1000.0000, 0.25)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (91, N'Киноклуб немецкого языка для студентов', N' киноклуб.jpg', N' 50 мин.', 1140.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (92, N'Занятие с репетитором-носителем французского языка', N' Французский язык.jpg', N' 50 мин.', 2040.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (93, N'Урок в группе немецкого языка для студентов', N' Немецкий язык.png', N' 4200 сек.', 1240.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', N' Китайский язык.jpg', N' 6600 сек.', 940.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (95, N'Занятие с репетитором-носителем японского языка', N' Японский язык.jpg', N' 3000 сек.', 1100.0000, 0.25)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (96, N'Урок в группе французского языка для студентов', N' Французский язык.jpg', N' 1800 сек.', 1910.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (97, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N' for company.jpg', N' 110 мин.', 900.0000, 0)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (98, N'Занятие с русскоязычным репетитором английского языка', N' Английский язык.jpg', N' 90 мин.', 1950.0000, 0.15)
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (99, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N' for company.jpg', N' 90 мин.', 1660.0000, 0)
GO
INSERT [dbo].[Service] ([Service_ID], [Service], [Main_Image], [Time], [Price], [Discount]) VALUES (100, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N' for company.jpg', N' 4200 сек.', 1380.0000, 0.2)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Service_Clients] ON 

INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (1, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-11-16T11:20:00.000' AS DateTime), N'Суворова', 49)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (2, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-01-11T18:10:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (3, N'Киноклуб итальянского языка для студентов', 19, CAST(N'2019-12-01T14:40:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (4, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', 28, CAST(N'2019-02-11T13:30:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (5, N'Урок в группе китайского языка для взрослых', 30, CAST(N'2019-09-10T18:20:00.000' AS DateTime), N'Селиверстов', 20)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (6, N'Урок в группе китайского языка для студентов', 26, CAST(N'2019-02-12T19:40:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (7, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-04-04T09:10:00.000' AS DateTime), N'Бобылёв', 24)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (8, N'Урок в группе испанского языка для взрослых', 20, CAST(N'2019-05-15T09:20:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (9, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-01-16T14:20:00.000' AS DateTime), N'Комиссарова', 16)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (10, N'Урок в группе английского языка для взрослых', 34, CAST(N'2019-01-16T09:00:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (11, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-03-15T10:50:00.000' AS DateTime), N'Казаков', 3)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (12, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-01-31T12:00:00.000' AS DateTime), N'Андреева', 26)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (13, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-11-19T15:50:00.000' AS DateTime), N'Андреев', 6)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (14, N'Подготовка к экзамену TOEFL', 32, CAST(N'2019-01-10T08:30:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (15, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-04-29T15:00:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (16, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-10-12T08:50:00.000' AS DateTime), N'Агафонов', 43)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (17, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-02-13T18:00:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (18, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-02-01T18:00:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (19, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', 63, CAST(N'2019-11-12T18:50:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (20, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-01-11T12:50:00.000' AS DateTime), N'Большаков', 17)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (21, N'Киноклуб португальского языка для студентов', 50, CAST(N'2019-03-23T19:50:00.000' AS DateTime), N'Александров', 9)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (22, N'Киноклуб французского языка для взрослых', 12, CAST(N'2019-06-23T08:00:00.000' AS DateTime), N'Агафонов', 43)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (23, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 18, CAST(N'2019-05-25T17:10:00.000' AS DateTime), N'Некрасов', 38)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (24, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', 67, CAST(N'2019-02-18T18:20:00.000' AS DateTime), N'Большаков', 17)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (25, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-07-17T08:20:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (26, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-08-06T16:50:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (27, N'Киноклуб итальянского языка для детей', 77, CAST(N'2019-12-14T08:40:00.000' AS DateTime), N'Васильев', 1)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (28, N'Подготовка к экзамену IELTS Speaking Club', 76, CAST(N'2019-06-28T14:20:00.000' AS DateTime), N'Зуев', 22)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (29, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', 97, CAST(N'2019-06-06T19:20:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (30, N'Киноклуб португальского языка для студентов', 50, CAST(N'2019-06-07T17:20:00.000' AS DateTime), N'Бобылёв', 24)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (31, N'Урок в группе английского языка для школьников', 23, CAST(N'2019-04-30T18:10:00.000' AS DateTime), N'Воронова', 46)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (32, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-08-30T11:40:00.000' AS DateTime), N'Андреев', 6)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (33, N'Урок в группе испанского языка для взрослых', 20, CAST(N'2019-05-08T14:10:00.000' AS DateTime), N'Ефремов', 25)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (34, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', 66, CAST(N'2019-10-27T16:20:00.000' AS DateTime), N'Беляева', 42)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (35, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-01-05T08:40:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (36, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 27, CAST(N'2019-03-04T17:20:00.000' AS DateTime), N'Зуев', 22)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (37, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-09-29T13:40:00.000' AS DateTime), N'Егорова', 50)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (38, N'Киноклуб китайского языка для студентов', 3, CAST(N'2019-01-22T10:50:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (39, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-12-19T19:30:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (40, N'Подготовка к экзамену ACT', 29, CAST(N'2019-11-15T17:50:00.000' AS DateTime), N'Гущина', 32)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (41, N'Индивидуальный урок французского языка с преподавателем-носителем языка', 9, CAST(N'2019-07-04T17:10:00.000' AS DateTime), N'Баранова', 12)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (42, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-08-06T11:50:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (43, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-11-09T13:00:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (44, N'Индивидуальный урок английского языка с преподавателем-носителем языка', 62, CAST(N'2019-02-16T18:50:00.000' AS DateTime), N'Бобылёв', 24)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (45, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-03-03T17:20:00.000' AS DateTime), N'Ершов', 23)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (46, N'Урок в группе английского языка для школьников', 23, CAST(N'2019-05-22T16:10:00.000' AS DateTime), N'Степанова', 13)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (47, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-07-31T18:10:00.000' AS DateTime), N'Кузьмина', 36)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (48, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 27, CAST(N'2019-08-29T19:00:00.000' AS DateTime), N'Комиссарова', 16)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (49, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-10-02T10:10:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (50, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-03-16T11:30:00.000' AS DateTime), N'Костина', 8)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (51, N'Подготовка к экзамену ACT', 29, CAST(N'2019-08-27T11:40:00.000' AS DateTime), N'Агафонов', 43)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (52, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', 66, CAST(N'2019-06-13T11:30:00.000' AS DateTime), N'Абрамов', 18)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (53, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-08-18T16:00:00.000' AS DateTime), N'Попова', 4)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (54, N'Урок в группе английского языка для взрослых', 34, CAST(N'2019-12-26T16:30:00.000' AS DateTime), N'Горбачёв', 14)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (55, N'Урок в группе итальянского языка для взрослых', 7, CAST(N'2019-11-27T18:50:00.000' AS DateTime), N'Морозов', 11)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (56, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-09-06T19:20:00.000' AS DateTime), N'Медведев', 47)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (57, N'Занятие с русскоязычным репетитором английского языка', 98, CAST(N'2019-09-24T13:40:00.000' AS DateTime), N'Воронова', 46)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (58, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', 89, CAST(N'2019-03-01T11:50:00.000' AS DateTime), N'Гущина', 32)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (59, N'Урок в группе итальянского языка для взрослых', 7, CAST(N'2019-09-28T10:00:00.000' AS DateTime), N'Турова', 5)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (60, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-03-20T10:40:00.000' AS DateTime), N'Волков', 15)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (61, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-11-27T11:30:00.000' AS DateTime), N'Корнилова', 10)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (62, N'Занятие с репетитором-носителем немецкого языка', 60, CAST(N'2019-01-23T18:30:00.000' AS DateTime), N'Казаков', 3)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (63, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 27, CAST(N'2019-10-21T10:20:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (64, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-08-11T12:50:00.000' AS DateTime), N'Голубев', 28)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (65, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-01-03T14:40:00.000' AS DateTime), N'Орлова', 7)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (66, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-12-31T08:30:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (67, N'Урок в группе испанского языка для взрослых', 20, CAST(N'2019-08-29T10:10:00.000' AS DateTime), N'Калинин', 41)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (68, N'Киноклуб итальянского языка для студентов', 19, CAST(N'2019-01-03T18:50:00.000' AS DateTime), N'Степанова', 13)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (69, N'Урок в группе китайского языка для взрослых', 30, CAST(N'2019-04-09T11:10:00.000' AS DateTime), N'Горбачёв', 14)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (70, N'Киноклуб французского языка для взрослых', 12, CAST(N'2019-12-31T19:10:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (71, N'Киноклуб итальянского языка для студентов', 19, CAST(N'2019-10-17T13:30:00.000' AS DateTime), N'Лазарев', 2)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (72, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-05-17T13:30:00.000' AS DateTime), N'Воронова', 46)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (73, N'Урок в группе японского языка для школьников', 14, CAST(N'2019-11-23T18:40:00.000' AS DateTime), N'Морозов', 11)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (74, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-07-10T15:30:00.000' AS DateTime), N'Корнилова', 10)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (75, N'Занятие с русскоязычным репетитором японского языка', 40, CAST(N'2019-06-09T13:40:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (76, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-01-09T10:20:00.000' AS DateTime), N'Ершов', 23)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (77, N'Занятие с репетитором-носителем немецкого языка', 60, CAST(N'2019-08-15T18:30:00.000' AS DateTime), N'Лазарев', 2)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (78, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-07-15T14:10:00.000' AS DateTime), N'Евсеев', 29)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (79, N'Урок в группе японского языка для школьников', 14, CAST(N'2019-12-31T18:00:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (80, N'Урок в группе итальянского языка для взрослых', 7, CAST(N'2019-12-22T09:20:00.000' AS DateTime), N'Гущина', 32)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (81, N'Киноклуб китайского языка для детей', 51, CAST(N'2019-12-28T16:00:00.000' AS DateTime), N'Горбачёв', 14)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (82, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-06-26T10:10:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (83, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-04-29T12:40:00.000' AS DateTime), N'Корнилова', 10)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (84, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-04-13T09:00:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (85, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-01-05T16:00:00.000' AS DateTime), N'Ершов', 23)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (86, N'Занятие с русскоязычным репетитором японского языка', 40, CAST(N'2019-03-25T18:20:00.000' AS DateTime), N'Турова', 5)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (87, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 18, CAST(N'2019-11-09T18:50:00.000' AS DateTime), N'Евсеев', 29)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (88, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-04-07T10:40:00.000' AS DateTime), N'Игнатов', 31)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (89, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', 67, CAST(N'2019-11-11T18:50:00.000' AS DateTime), N'Суворова', 49)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (90, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-01-06T15:00:00.000' AS DateTime), N'Дмитриева', 34)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (91, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-08-20T19:10:00.000' AS DateTime), N'Попова', 4)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (92, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-04-16T13:20:00.000' AS DateTime), N'Блинов', 45)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (93, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-12-22T15:10:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (94, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-01-22T16:50:00.000' AS DateTime), N'Блохин', 40)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (95, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 18, CAST(N'2019-09-04T08:10:00.000' AS DateTime), N'Костина', 8)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (96, N'Киноклуб итальянского языка для детей', 77, CAST(N'2019-01-01T14:50:00.000' AS DateTime), N'Калинин', 41)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (97, N'Урок в группе японского языка для школьников', 14, CAST(N'2019-01-29T16:30:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (98, N'Киноклуб английского языка для студентов', 49, CAST(N'2019-07-06T11:30:00.000' AS DateTime), N'Блохин', 40)
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (99, N'Занятие с русскоязычным репетитором английского языка', 98, CAST(N'2019-12-05T10:20:00.000' AS DateTime), N'Голубев', 28)
GO
INSERT [dbo].[Service_Clients] ([Service_Client_ID], [Service_Name], [Service_ID], [Date_Service], [Client], [Client_ID]) VALUES (100, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-04-05T13:20:00.000' AS DateTime), N'Селиверстов', 20)
SET IDENTITY_INSERT [dbo].[Service_Clients] OFF
GO
ALTER TABLE [dbo].[Service_Clients]  WITH CHECK ADD FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Clients] ([Clients_ID])
GO
ALTER TABLE [dbo].[Service_Clients]  WITH CHECK ADD FOREIGN KEY([Service_ID])
REFERENCES [dbo].[Service] ([Service_ID])
GO
USE [master]
GO
ALTER DATABASE [user21] SET  READ_WRITE 
GO
