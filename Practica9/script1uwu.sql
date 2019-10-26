USE [Farmacia]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK__venta__id_sucurs__36B12243]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK__venta__id_produc__37A5467C]
GO
ALTER TABLE [dbo].[usuarios] DROP CONSTRAINT [FK__usuarios__id_emp__182C9B23]
GO
ALTER TABLE [dbo].[sucursales] DROP CONSTRAINT [FK__sucursale__id_em__1273C1CD]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [FK__productos__id_de__22AA2996]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [FK__productos__id_cl__21B6055D]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_su__2C3393D0]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_pr__2D27B809]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_pr__2B3F6F97]
GO
ALTER TABLE [dbo].[inventario_productos] DROP CONSTRAINT [FK__inventari__id_pr__267ABA7A]
GO
ALTER TABLE [dbo].[inventario_productos] DROP CONSTRAINT [FK__inventari__id_al__25869641]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [FK__empleados__id_su__15502E78]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_su__31EC6D26]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_pr__33D4B598]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_pr__30F848ED]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_co__300424B4]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_al__32E0915F]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_ve__3C69FB99]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_us__3E52440B]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_su__3B75D760]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_pr__3D5E1FD2]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_em__3A81B327]
GO
ALTER TABLE [dbo].[almacen] DROP CONSTRAINT [FK__almacen__id_sucu__1B0907CE]
GO
/****** Object:  View [dbo].[Ventas_precios]    Script Date: 25/10/2019 23:39:24 ******/
DROP VIEW [dbo].[Ventas_precios]
GO
/****** Object:  View [dbo].[ProductosCuidadoPersonal]    Script Date: 25/10/2019 23:39:24 ******/
DROP VIEW [dbo].[ProductosCuidadoPersonal]
GO
/****** Object:  View [dbo].[Medicamentos]    Script Date: 25/10/2019 23:39:24 ******/
DROP VIEW [dbo].[Medicamentos]
GO
/****** Object:  View [dbo].[EmpleadosNoCajeros]    Script Date: 25/10/2019 23:39:24 ******/
DROP VIEW [dbo].[EmpleadosNoCajeros]
GO
/****** Object:  View [dbo].[Cajeros]    Script Date: 25/10/2019 23:39:24 ******/
DROP VIEW [dbo].[Cajeros]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[usuarios]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[sucursales]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[productos]
GO
/****** Object:  Table [dbo].[orden_compra]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[orden_compra]
GO
/****** Object:  Table [dbo].[inventario_productos]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[inventario_productos]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[empresa]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[detalles_compra]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[detalles_compra]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[detalle_venta]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[departamento]
GO
/****** Object:  Table [dbo].[clasificacion]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[clasificacion]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 25/10/2019 23:39:24 ******/
DROP TABLE [dbo].[almacen]
GO
USE [master]
GO
/****** Object:  Database [Farmacia]    Script Date: 25/10/2019 23:39:24 ******/
DROP DATABASE [Farmacia]
GO
/****** Object:  Database [Farmacia]    Script Date: 25/10/2019 23:39:24 ******/
CREATE DATABASE [Farmacia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Farmacia', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Farmacia.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Farmacia_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Farmacia_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Farmacia] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Farmacia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Farmacia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Farmacia] SET ARITHABORT OFF 
GO
ALTER DATABASE [Farmacia] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Farmacia] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Farmacia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Farmacia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Farmacia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Farmacia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Farmacia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Farmacia] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Farmacia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Farmacia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Farmacia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Farmacia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Farmacia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Farmacia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Farmacia] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Farmacia] SET  MULTI_USER 
GO
ALTER DATABASE [Farmacia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Farmacia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Farmacia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Farmacia] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Farmacia]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[almacen](
	[id_almacen] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[descripcion_alm] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clasificacion]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clasificacion](
	[id_clasificacion] [int] NOT NULL,
	[nombre_clas] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[id_departamento] [int] NOT NULL,
	[nombre_dep] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[id_detalle] [int] NOT NULL,
	[id_empresa] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_venta] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[fecha_venta] [datetime] NOT NULL,
	[cantidad_det_vta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalles_compra]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_compra](
	[id_compra] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_almacen] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[fecha_compra] [datetime] NOT NULL,
	[precio_prod_prov] [money] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[empleados]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empleados](
	[id_empleado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[nombre_epdo] [varchar](50) NOT NULL,
	[ap_pat_epdo] [varchar](50) NOT NULL,
	[ap_mat_epdo] [varchar](50) NOT NULL,
	[telefono_epdo] [varchar](10) NOT NULL,
	[correo_epdo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empresa](
	[id_empresa] [int] NOT NULL,
	[nombre_com_epsa] [varchar](50) NOT NULL,
	[tipo_sociedad_epsa] [varchar](50) NOT NULL,
	[correo_gral_epsa] [varchar](30) NOT NULL,
	[telefono_epsa] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inventario_productos]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario_productos](
	[id_inventario] [int] NOT NULL,
	[id_almacen] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orden_compra]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orden_compra](
	[id_compra] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NULL,
	[fecha_compra] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productos]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [int] NOT NULL,
	[id_clasificacion] [int] NOT NULL,
	[id_departamento] [int] NOT NULL,
	[nombre_prod] [varchar](50) NOT NULL,
	[cantidad_prod] [int] NULL,
	[unidad_prod] [varchar](50) NOT NULL,
	[marca_prod] [varchar](50) NOT NULL,
	[precio_prod] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[proveedores](
	[id_proveedor] [int] NOT NULL,
	[nombre_prov] [varchar](50) NOT NULL,
	[telefono_prov] [varchar](10) NOT NULL,
	[correo_prov] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sucursales](
	[id_sucursal] [int] NOT NULL,
	[id_empresa] [int] NOT NULL,
	[nombre_suc] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[clave] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venta]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id_venta] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[fecha_venta] [datetime] NOT NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Cajeros]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Cajeros]
	as
	select nombre_epdo, ap_pat_epdo
	from empleados
	where id_empleado in
		( select id_empleado from usuarios)

GO
/****** Object:  View [dbo].[EmpleadosNoCajeros]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EmpleadosNoCajeros]
	as
	select nombre_epdo, ap_pat_epdo
	from empleados
	where id_empleado not in
		( select id_empleado from usuarios)
GO
/****** Object:  View [dbo].[Medicamentos]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Medicamentos]
	as
	select id_producto, nombre_prod, unidad_prod
	from productos
	where id_departamento in (select id_departamento from departamento where nombre_dep='Farmacia')

GO
/****** Object:  View [dbo].[ProductosCuidadoPersonal]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ProductosCuidadoPersonal]
	as
	select nombre_prod, id_clasificacion
	from productos
	where id_clasificacion in
		(select id_clasificacion from clasificacion where nombre_clas like 'CP')
GO
/****** Object:  View [dbo].[Ventas_precios]    Script Date: 25/10/2019 23:39:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Ventas_precios]
	as
	select p.id_producto, p.precio_prod
	from productos p
	inner join detalle_venta v on v.id_producto =p.id_producto 
GO
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (1, N'Analgesicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (2, N'Musculares')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (3, N'Antiflamatorios')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (4, N'Estomacales')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (5, N'Antigripales')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (6, N'Tos e infecciones respiratorias')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (7, N'Descongestionantes')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (8, N'Oftalmicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (9, N'Dermatologicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (10, N'Especialidades medicas')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (11, N'Naturistas y herbolarios')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (12, N'Diabetes')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (13, N'Multivitaminicos')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (14, N'Suplementos alimenticios')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (15, N'Materiales de curacion y botiquin')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (16, N'Formulas y leches de crecimiento')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (17, N'Alimento para bebe')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (18, N'Pañales')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (19, N'Cuidado del bebe')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (20, N'Accesorios de bebe')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (21, N'CP: Bucal')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (22, N'CP:Bloqueadores')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (23, N'CP:Incontinencia')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (24, N'CP:Higiene y cuidado femenino')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (25, N'CP:Repelentes')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (26, N'CP:Cara y cuerpo')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (27, N'CP:Pies')
INSERT [dbo].[clasificacion] ([id_clasificacion], [nombre_clas]) VALUES (28, N'CP:Cuidado del cabello')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (1, N'Medicamentos')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (2, N'Cuidado de la salud')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (3, N'Bebes')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (4, N'Cuidado personal')
INSERT [dbo].[departamento] ([id_departamento], [nombre_dep]) VALUES (5, N'Salud sexual')
ALTER TABLE [dbo].[almacen]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta] ([id_venta])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_almacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_compra])
REFERENCES [dbo].[orden_compra] ([id_compra])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalles_compra]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[inventario_productos]  WITH CHECK ADD FOREIGN KEY([id_almacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[inventario_productos]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[orden_compra]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[orden_compra]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[orden_compra]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD FOREIGN KEY([id_clasificacion])
REFERENCES [dbo].[clasificacion] ([id_clasificacion])
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[sucursales]  WITH CHECK ADD FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
USE [master]
GO
ALTER DATABASE [Farmacia] SET  READ_WRITE 
GO
