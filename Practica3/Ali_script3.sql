USE [FarmaciaLBD]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [MayorDeDieciocho]
GO
ALTER TABLE [dbo].[medicinas] DROP CONSTRAINT [FK__medicinas__prove__4F7CD00D]
GO
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [FK__inventari__sucur__571DF1D5]
GO
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [FK__inventari__prove__5812160E]
GO
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [FK__inventari__medic__5629CD9C]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [FK__empleados__sucur__534D60F1]
GO
ALTER TABLE [dbo].[medicinas] DROP CONSTRAINT [cant_inv]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [num_tel]
GO
/****** Object:  Index [indx_sucursales_nombre]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_sucursales_nombre] ON [dbo].[sucursales]
GO
/****** Object:  Index [indx_sucursales_estado]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_sucursales_estado] ON [dbo].[sucursales]
GO
/****** Object:  Index [indx_proveedores_nombreproveedor]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_proveedores_nombreproveedor] ON [dbo].[proveedores]
GO
/****** Object:  Index [indx_proveedores_empresa]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_proveedores_empresa] ON [dbo].[proveedores]
GO
/****** Object:  Index [indx_medicinas_tipo]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_medicinas_tipo] ON [dbo].[medicinas]
GO
/****** Object:  Index [indx_medicinas_nombre]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_medicinas_nombre] ON [dbo].[medicinas]
GO
/****** Object:  Index [indx_empleados_nombrecompleto]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_empleados_nombrecompleto] ON [dbo].[empleados]
GO
/****** Object:  Index [indx_empleados_nombre]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_empleados_nombre] ON [dbo].[empleados]
GO
/****** Object:  Index [U_id]    Script Date: 20/09/2019 23:31:28 ******/
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [U_id]
GO
/****** Object:  Index [indx_clientes_nombre]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_clientes_nombre] ON [dbo].[cliente]
GO
/****** Object:  Index [indx_clientes_correo]    Script Date: 20/09/2019 23:31:28 ******/
DROP INDEX [indx_clientes_correo] ON [dbo].[cliente]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 20/09/2019 23:31:28 ******/
DROP TABLE [dbo].[sucursales]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 20/09/2019 23:31:28 ******/
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[medicinas]    Script Date: 20/09/2019 23:31:28 ******/
DROP TABLE [dbo].[medicinas]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 20/09/2019 23:31:28 ******/
DROP TABLE [dbo].[inventario]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 20/09/2019 23:31:28 ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 20/09/2019 23:31:28 ******/
DROP TABLE [dbo].[cliente]
GO
USE [master]
GO
/****** Object:  Database [FarmaciaLBD]    Script Date: 20/09/2019 23:31:28 ******/
DROP DATABASE [FarmaciaLBD]
GO
/****** Object:  Database [FarmaciaLBD]    Script Date: 20/09/2019 23:31:28 ******/
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
/****** Object:  Table [dbo].[cliente]    Script Date: 20/09/2019 23:31:28 ******/
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
/****** Object:  Table [dbo].[empleados]    Script Date: 20/09/2019 23:31:28 ******/
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
/****** Object:  Table [dbo].[inventario]    Script Date: 20/09/2019 23:31:28 ******/
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
/****** Object:  Table [dbo].[medicinas]    Script Date: 20/09/2019 23:31:28 ******/
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
/****** Object:  Table [dbo].[proveedores]    Script Date: 20/09/2019 23:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[id_proveedor] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ap_paterno] [varchar](50) NOT NULL,
	[ap_materno] [varchar](50) NOT NULL,
	[nombre_empresa] [varchar](50) NOT NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[ap_paterno])+' ')+[ap_materno]),
	[empresa_proveedor]  AS (([nombre_empresa]+' ')+[id_proveedor]),
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 20/09/2019 23:31:28 ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_clientes_correo]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_clientes_correo] ON [dbo].[cliente]
(
	[correo_elec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_clientes_nombre]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_clientes_nombre] ON [dbo].[cliente]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [U_id]    Script Date: 20/09/2019 23:31:29 ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [U_id] UNIQUE NONCLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_empleados_nombre]    Script Date: 20/09/2019 23:31:29 ******/
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
/****** Object:  Index [indx_empleados_nombrecompleto]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_empleados_nombrecompleto] ON [dbo].[empleados]
(
	[nombre_completo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_medicinas_nombre]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_medicinas_nombre] ON [dbo].[medicinas]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_medicinas_tipo]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_medicinas_tipo] ON [dbo].[medicinas]
(
	[tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_proveedores_empresa]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_proveedores_empresa] ON [dbo].[proveedores]
(
	[nombre_empresa] ASC
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
/****** Object:  Index [indx_proveedores_nombreproveedor]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_proveedores_nombreproveedor] ON [dbo].[proveedores]
(
	[nombre_completo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_sucursales_estado]    Script Date: 20/09/2019 23:31:29 ******/
CREATE NONCLUSTERED INDEX [indx_sucursales_estado] ON [dbo].[sucursales]
(
	[estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_sucursales_nombre]    Script Date: 20/09/2019 23:31:29 ******/
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
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [MayorDeDieciocho] CHECK  ((datediff(year,[fecha_nac],getdate())>(18)))
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [MayorDeDieciocho]
GO
USE [master]
GO
ALTER DATABASE [FarmaciaLBD] SET  READ_WRITE 
GO
