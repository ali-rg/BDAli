USE [FarmaciaLBD]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [MayorDeDieciocho]
GO
ALTER TABLE [dbo].[producto] DROP CONSTRAINT [FK__producto__tipo__7B5B524B]
GO
ALTER TABLE [dbo].[medicinas] DROP CONSTRAINT [FK__medicinas__prove__5812160E]
GO
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [FK__inventari__sucur__5FB337D6]
GO
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [FK__inventari__prove__60A75C0F]
GO
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [FK__inventari__medic__5EBF139D]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [FK__empleados__sucur__5BE2A6F2]
GO
ALTER TABLE [dbo].[medicinas] DROP CONSTRAINT [cant_inv]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [num_tel]
GO
/****** Object:  Index [indx_sucursales_nombre]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_sucursales_nombre] ON [dbo].[sucursales]
GO
/****** Object:  Index [indx_sucursales_estado]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_sucursales_estado] ON [dbo].[sucursales]
GO
/****** Object:  Index [indx_proveedores_nombreproveedor]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_proveedores_nombreproveedor] ON [dbo].[proveedores]
GO
/****** Object:  Index [indx_proveedores_empresa]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_proveedores_empresa] ON [dbo].[proveedores]
GO
/****** Object:  Index [indx_medicinas_tipo]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_medicinas_tipo] ON [dbo].[medicinas]
GO
/****** Object:  Index [indx_medicinas_nombre]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_medicinas_nombre] ON [dbo].[medicinas]
GO
/****** Object:  Index [indx_empleados_nombrecompleto]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_empleados_nombrecompleto] ON [dbo].[empleados]
GO
/****** Object:  Index [indx_empleados_nombre]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_empleados_nombre] ON [dbo].[empleados]
GO
/****** Object:  Index [U_id]    Script Date: 19/10/2019 20:43:53 ******/
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [U_id]
GO
/****** Object:  Index [indx_clientes_nombre]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_clientes_nombre] ON [dbo].[cliente]
GO
/****** Object:  Index [indx_clientes_correo]    Script Date: 19/10/2019 20:43:53 ******/
DROP INDEX [indx_clientes_correo] ON [dbo].[cliente]
GO
/****** Object:  Table [dbo].[tipo]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[tipo]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[sucursales]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[producto]
GO
/****** Object:  Table [dbo].[medicinas]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[medicinas]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[inventario]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 19/10/2019 20:43:53 ******/
DROP TABLE [dbo].[cliente]
GO
USE [master]
GO
/****** Object:  Database [FarmaciaLBD]    Script Date: 19/10/2019 20:43:53 ******/
DROP DATABASE [FarmaciaLBD]
GO
/****** Object:  Database [FarmaciaLBD]    Script Date: 19/10/2019 20:43:53 ******/
CREATE DATABASE [FarmaciaLBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FarmaciaLBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FarmaciaLBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FarmaciaLBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FarmaciaLBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FarmaciaLBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FarmaciaLBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FarmaciaLBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FarmaciaLBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FarmaciaLBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FarmaciaLBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FarmaciaLBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FarmaciaLBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FarmaciaLBD] SET  MULTI_USER 
GO
ALTER DATABASE [FarmaciaLBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FarmaciaLBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FarmaciaLBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FarmaciaLBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FarmaciaLBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FarmaciaLBD] SET QUERY_STORE = OFF
GO
USE [FarmaciaLBD]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre_usuario] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ap_paterno] [varchar](50) NOT NULL,
	[ap_materno] [varchar](50) NOT NULL,
	[correo_elec] [varchar](50) NOT NULL,
	[telefono] [varchar](10) NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[ap_paterno])+' ')+[ap_materno]),
	[nombre_correo]  AS (([nombre_usuario]+' ')+[correo_elec]),
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[id_empleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ap_paterno] [varchar](50) NOT NULL,
	[ap_materno] [varchar](50) NOT NULL,
	[fecha_nac] [date] NOT NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[ap_paterno])+' ')+[ap_materno]),
	[nombre_breve]  AS (([nombre]+' ')+[ap_paterno]),
	[sucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario](
	[inventario_id] [int] NOT NULL,
	[fecha_inv] [date] NOT NULL,
	[medicina] [int] NULL,
	[sucursal] [int] NULL,
	[proveedor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[inventario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicinas]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicinas](
	[id_medicina] [int] NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[cantidad_producto] [decimal](18, 0) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[cantidad_inventario] [int] NULL,
	[nombre_cantidad]  AS (([nombre]+' ')+[cantidad_producto]),
	[nombre_tipo]  AS (([nombre]+' ')+[tipo]),
	[proveedor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[cantidad] [varchar](200) NOT NULL,
	[precio] [int] NOT NULL,
	[tipo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[id_proveedor] [int] NOT NULL,
	[nombre] [varchar](255) NULL,
	[ap_paterno] [varchar](255) NULL,
	[ap_materno] [varchar](255) NULL,
	[nombre_empresa] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursales](
	[id_sucursal] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[municipio] [varchar](50) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[nombre_municipio]  AS (([nombre]+' ')+[municipio]),
	[nombre_telefono]  AS (([nombre]+' ')+[telefono]),
PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo]    Script Date: 19/10/2019 20:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo](
	[id_tipo] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[producto] ([id_producto], [nombre], [cantidad], [precio], [tipo]) VALUES (1, N'Electrolitos', N'5', 10, 1)
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (1, N'Abdul', N'Cannon', N'Mccullough', N'Egestas Hendrerit Neque Industries')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (2, N'Dacey', N'Jimenez', N'Whitaker', N'Malesuada Augue Institute')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (4, N'Holly', N'Cohen', N'Kaufman', N'Etiam Imperdiet Dictum Corporation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (5, N'Germaine', N'Kline', N'Chaney', N'At Auctor Limited')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (6, N'Christine', N'Crosby', N'Freeman', N'Tellus Justo Sit Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (7, N'Martin', N'Blevins', N'Byrd', N'Enim Condimentum LLC')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (8, N'Sloane', N'Douglas', N'Barnes', N'Purus Associates')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (9, N'Xyla', N'Howard', N'Meyers', N'Mauris Consulting')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (11, N'Hermione', N'Mcleod', N'Garrison', N'Integer Vitae Associates')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (12, N'Chava', N'Fletcher', N'Vinson', N'Odio A Purus Consulting')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (13, N'Kirby', N'Landry', N'Watkins', N'Eget Mollis LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (14, N'Dawn', N'Phelps', N'Baird', N'Mattis LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (16, N'Gay', N'Cote', N'Chambers', N'Class Aptent LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (17, N'Marah', N'Adams', N'Alvarado', N'Tincidunt Institute')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (18, N'Barrett', N'Lopez', N'Rodriguez', N'At Egestas A Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (19, N'Pandora', N'Phelps', N'Bradley', N'Nec Metus LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (20, N'Eric', N'Fulton', N'Wade', N'Duis At Institute')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (21, N'Briar', N'Burgess', N'Cleveland', N'Congue In Company')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (23, N'Willow', N'Barton', N'Gonzales', N'Vestibulum Company')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (24, N'Rhiannon', N'Patton', N'Hicks', N'Et Malesuada Fames Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (25, N'Briar', N'Freeman', N'Lyons', N'Tellus Industries')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (26, N'Fleur', N'Pacheco', N'Frederick', N'Dictum Eu Placerat Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (27, N'Demetrius', N'Leon', N'Jenkins', N'Sociis Natoque Corporation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (28, N'Hamilton', N'Bryan', N'Riddle', N'Aliquam Foundation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (29, N'Teegan', N'Ewing', N'Sanders', N'Ornare In Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (30, N'Jaden', N'Chandler', N'Lawrence', N'Vulputate Consulting')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (31, N'George', N'Vargas', N'Serrano', N'Semper Egestas LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (32, N'Melanie', N'Pennington', N'Hudson', N'Sem Nulla Interdum Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (33, N'Basia', N'Clark', N'Cooke', N'Ipsum Primis Associates')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (34, N'Vielka', N'Hall', N'Spencer', N'Morbi Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (35, N'Whitney', N'Whitehead', N'Houston', N'Vitae Orci Phasellus Institute')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (36, N'Shay', N'Butler', N'Mcclain', N'Adipiscing Elit LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (37, N'Ramona', N'Burgess', N'Phillips', N'Nonummy Ipsum Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (38, N'Cade', N'Stanley', N'Nolan', N'Mauris Vestibulum Corporation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (39, N'Noble', N'Cannon', N'Stone', N'In Tincidunt Foundation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (40, N'Oleg', N'Lester', N'Cotton', N'Proin Corporation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (41, N'Patricia', N'Ball', N'Ayala', N'Nisi Dictum Augue Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (42, N'Marvin', N'Cobb', N'Lowe', N'Egestas Aliquam Fringilla Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (43, N'Ivy', N'Newton', N'Bartlett', N'Donec Feugiat Metus LLC')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (44, N'Nola', N'Perez', N'Lambert', N'Nulla PC')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (45, N'Kennedy', N'Mccarthy', N'Sullivan', N'Hendrerit A Arcu Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (46, N'Liberty', N'Duncan', N'Mcclain', N'Auctor Velit Aliquam Consulting')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (47, N'Eric', N'Baxter', N'Hogan', N'Non Incorporated')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (48, N'Joy', N'Hall', N'Pacheco', N'Vulputate Nisi Sem Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (49, N'Hope', N'Sellers', N'Mcdaniel', N'Mauris Rhoncus Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (50, N'Talon', N'Moreno', N'Pace', N'Magna Nec Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (51, N'Nina', N'Ayala', N'Ortiz', N'Et Eros LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (52, N'Marsden', N'Mcmillan', N'May', N'Aliquam Nec Company')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (53, N'Ethan', N'Daugherty', N'House', N'Dictum Phasellus PC')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (54, N'Oprah', N'Wilcox', N'Herring', N'Ridiculus Company')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (55, N'Michael', N'Rose', N'Hansen', N'Mollis Dui LLC')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (56, N'Tatum', N'Daugherty', N'Tillman', N'Molestie Tortor Nibh Foundation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (57, N'Andrew', N'Townsend', N'Rodgers', N'Blandit Mattis Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (58, N'Price', N'Castillo', N'Burris', N'Dui Quis Consulting')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (59, N'Patricia', N'Blair', N'Craig', N'Et Euismod Et Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (60, N'Ryan', N'Hughes', N'Meadows', N'In Incorporated')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (61, N'Tobias', N'Winters', N'Mack', N'Eget Metus Eu Associates')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (62, N'Eric', N'Paul', N'Medina', N'Ac Feugiat Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (63, N'Kareem', N'Patrick', N'Maldonado', N'Semper Tellus Incorporated')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (64, N'Rowan', N'Orr', N'Miranda', N'Ante Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (65, N'Elliott', N'Coleman', N'Becker', N'Nunc Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (66, N'Allegra', N'Taylor', N'Stephenson', N'Semper Tellus Corporation')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (67, N'Hunter', N'Bender', N'Cannon', N'Magna Industries')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (68, N'Chloe', N'Jenkins', N'Daugherty', N'Eget Industries')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (69, N'Xander', N'Barker', N'Aguilar', N'Nec Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (70, N'Ori', N'Hancock', N'England', N'Eget Venenatis A Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (71, N'Chantale', N'Reese', N'Harrington', N'Tortor PC')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (72, N'Garth', N'Mcintosh', N'Ashley', N'Arcu Vivamus Sit Institute')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (73, N'Michael', N'Goodman', N'Baldwin', N'Nulla Interdum Curabitur Industries')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (74, N'Cameron', N'Chang', N'Haney', N'Consectetuer Cursus Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (75, N'Urielle', N'Gonzales', N'Ellison', N'Etiam Laoreet Limited')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (76, N'Germaine', N'Hurley', N'Gilliam', N'Et Pede Nunc Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (77, N'Logan', N'Wynn', N'Hahn', N'Convallis Dolor Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (78, N'Russell', N'Knox', N'Garrett', N'Tellus Suspendisse Sed Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (79, N'Hammett', N'Young', N'Edwards', N'Penatibus Et Magnis Industries')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (80, N'Orlando', N'Lowe', N'Thompson', N'Eget Inc.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (81, N'Lana', N'Savage', N'Andrews', N'Sodales Company')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (83, N'Nash', N'Rhodes', N'Dudley', N'A Auctor Non Company')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (84, N'Warren', N'Caldwell', N'Gay', N'Vehicula Consulting')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (85, N'Myles', N'Joyner', N'Madden', N'Nibh Donec Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (86, N'Dante', N'Sosa', N'Gutierrez', N'Non Hendrerit Id Institute')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (87, N'Armand', N'Walker', N'Perry', N'Ut Sagittis Lobortis Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (88, N'Tad', N'Wells', N'Wooten', N'Auctor Quis Tristique Corp.')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (89, N'Chelsea', N'Garrett', N'Marks', N'Faucibus Morbi Vehicula Incorporated')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (90, N'Abel', N'Fitzgerald', N'Patton', N'Ipsum Porta LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (91, N'Cherokee', N'Hickman', N'Lynch', N'Nibh Sit Amet Associates')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (92, N'Jared', N'Ewing', N'Wright', N'Amet Dapibus Associates')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (93, N'Denton', N'Noel', N'Petty', N'Magna Company')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (94, N'Maris', N'Melendez', N'Swanson', N'Volutpat Nulla Dignissim Incorporated')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (95, N'Alvin', N'Leblanc', N'Workman', N'Vitae Aliquam Eros Consulting')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (96, N'Garth', N'Mclean', N'Castro', N'Rhoncus Proin Incorporated')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (97, N'Suki', N'Sanders', N'Ayers', N'Et Eros Proin Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (98, N'Ezekiel', N'Griffith', N'Boyle', N'Sed Nulla Ante LLP')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (99, N'Craig', N'Walls', N'Holcomb', N'Phasellus Elit Pede Ltd')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [ap_paterno], [ap_materno], [nombre_empresa]) VALUES (100, N'Charlotte', N'Moore', N'Jordan', N'Fusce Corporation')
INSERT [dbo].[tipo] ([id_tipo], [tipo]) VALUES (1, N'Bebidas')
INSERT [dbo].[tipo] ([id_tipo], [tipo]) VALUES (2, N'Consumibles')
INSERT [dbo].[tipo] ([id_tipo], [tipo]) VALUES (3, N'Medicamentos')
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_clientes_correo]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_clientes_correo] ON [dbo].[cliente]
(
	[correo_elec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_clientes_nombre]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_clientes_nombre] ON [dbo].[cliente]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [U_id]    Script Date: 19/10/2019 20:43:53 ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [U_id] UNIQUE NONCLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_empleados_nombre]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_empleados_nombre] ON [dbo].[empleados]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [indx_empleados_nombrecompleto]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_empleados_nombrecompleto] ON [dbo].[empleados]
(
	[nombre_completo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_medicinas_nombre]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_medicinas_nombre] ON [dbo].[medicinas]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_medicinas_tipo]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_medicinas_tipo] ON [dbo].[medicinas]
(
	[tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_proveedores_empresa]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_proveedores_empresa] ON [dbo].[proveedores]
(
	[nombre_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_proveedores_nombreproveedor]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_proveedores_nombreproveedor] ON [dbo].[proveedores]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_sucursales_estado]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_sucursales_estado] ON [dbo].[sucursales]
(
	[estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_sucursales_nombre]    Script Date: 19/10/2019 20:43:53 ******/
CREATE NONCLUSTERED INDEX [indx_sucursales_nombre] ON [dbo].[sucursales]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [num_tel]  DEFAULT ('0000000000') FOR [telefono]
GO
ALTER TABLE [dbo].[medicinas] ADD  CONSTRAINT [cant_inv]  DEFAULT ((0)) FOR [cantidad_inventario]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD FOREIGN KEY([sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([medicina])
REFERENCES [dbo].[medicinas] ([id_medicina])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([proveedor])
REFERENCES [dbo].[proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[medicinas]  WITH CHECK ADD FOREIGN KEY([proveedor])
REFERENCES [dbo].[proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([tipo])
REFERENCES [dbo].[tipo] ([id_tipo])
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [MayorDeDieciocho] CHECK  ((datediff(year,[fecha_nac],getdate())>(18)))
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [MayorDeDieciocho]
GO
USE [master]
GO
ALTER DATABASE [FarmaciaLBD] SET  READ_WRITE 
GO
