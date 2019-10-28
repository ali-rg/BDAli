USE [Farmacia]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK__venta__id_sucurs__787EE5A0]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK__venta__id_produc__778AC167]
GO
ALTER TABLE [dbo].[usuarios] DROP CONSTRAINT [FK__usuarios__id_emp__76969D2E]
GO
ALTER TABLE [dbo].[sucursales] DROP CONSTRAINT [FK__sucursale__id_em__75A278F5]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [FK__productos__id_de__74AE54BC]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [FK__productos__id_cl__73BA3083]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_su__72C60C4A]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_pr__71D1E811]
GO
ALTER TABLE [dbo].[orden_compra] DROP CONSTRAINT [FK__orden_com__id_pr__70DDC3D8]
GO
ALTER TABLE [dbo].[inventario_productos] DROP CONSTRAINT [FK__inventari__id_pr__6FE99F9F]
GO
ALTER TABLE [dbo].[inventario_productos] DROP CONSTRAINT [FK__inventari__id_al__6EF57B66]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [FK__empleados__id_su__6E01572D]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_su__6D0D32F4]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_pr__6C190EBB]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_pr__6B24EA82]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_co__6A30C649]
GO
ALTER TABLE [dbo].[detalles_compra] DROP CONSTRAINT [FK__detalles___id_al__693CA210]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_ve__68487DD7]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_us__6754599E]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_su__66603565]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_pr__656C112C]
GO
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [FK__detalle_v__id_em__6477ECF3]
GO
ALTER TABLE [dbo].[almacen] DROP CONSTRAINT [FK__almacen__id_sucu__6383C8BA]
GO
/****** Object:  Index [UQ_emp]    Script Date: 27/10/2019 05:54:08 p. m. ******/
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [UQ_emp]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[sucursales]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[orden_compra]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[orden_compra]
GO
/****** Object:  Table [dbo].[inventario_productos]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[inventario_productos]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[empresa]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[departamento]
GO
/****** Object:  Table [dbo].[clasificacion]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[clasificacion]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[almacen]
GO
/****** Object:  View [dbo].[ReporteTotalSurtido]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP VIEW [dbo].[ReporteTotalSurtido]
GO
/****** Object:  Table [dbo].[detalles_compra]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[detalles_compra]
GO
/****** Object:  View [dbo].[ReporteProductosVendidos]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP VIEW [dbo].[ReporteProductosVendidos]
GO
/****** Object:  View [dbo].[ReporteEmpleadosCajeros]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP VIEW [dbo].[ReporteEmpleadosCajeros]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[usuarios]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  View [dbo].[ReporteNumVentasEmp]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP VIEW [dbo].[ReporteNumVentasEmp]
GO
/****** Object:  View [dbo].[ReporteVentasProductos]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP VIEW [dbo].[ReporteVentasProductos]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[productos]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP TABLE [dbo].[detalle_venta]
GO
USE [master]
GO
/****** Object:  Database [Farmacia]    Script Date: 27/10/2019 05:54:08 p. m. ******/
DROP DATABASE [Farmacia]
GO
/****** Object:  Database [Farmacia]    Script Date: 27/10/2019 05:54:08 p. m. ******/
CREATE DATABASE [Farmacia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Farmacia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Farmacia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Farmacia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Farmacia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [Farmacia] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Farmacia] SET QUERY_STORE = OFF
GO
USE [Farmacia]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 27/10/2019 05:54:08 p. m. ******/
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
/****** Object:  Table [dbo].[productos]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ReporteVentasProductos]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteVentasProductos]
as
select d.id_venta, d.id_producto, p. nombre_prod, p.precio_prod, d.cantidad_det_vta, (select p.precio_prod * d.cantidad_det_vta from detalle_venta d inner join productos p on d.id_producto=p.id_producto) as Total 
from detalle_venta d inner join productos p on d.id_producto=p.id_producto
GO
/****** Object:  View [dbo].[ReporteNumVentasEmp]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteNumVentasEmp]
as
select id_usuario, count(id_venta) as 'Numero de ventas'
from detalle_venta group by id_usuario
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[usuarios]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  View [dbo].[ReporteEmpleadosCajeros]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteEmpleadosCajeros]
as 
select e.id_empleado, u.id_usuario,(e.nombre_epdo + ' ' + e.ap_pat_epdo + ' '+ e.ap_mat_epdo) as 'Nombre Completo', e.correo_epdo as 'Correo'
from empleados e inner join usuarios u on e.id_empleado=u.id_empleado
GO
/****** Object:  View [dbo].[ReporteProductosVendidos]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteProductosVendidos]
as
select id_producto, count(id_producto) as 'Vendidos'
from detalle_venta group by id_producto
GO
/****** Object:  Table [dbo].[detalles_compra]    Script Date: 27/10/2019 05:54:09 p. m. ******/
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
/****** Object:  View [dbo].[ReporteTotalSurtido]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteTotalSurtido]
as
select id_compra, sum((precio_prod_prov*cantidad)) as Total
from detalles_compra group by id_compra
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[clasificacion]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[departamento]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[empresa]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[inventario_productos]    Script Date: 27/10/2019 05:54:09 p. m. ******/
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
/****** Object:  Table [dbo].[orden_compra]    Script Date: 27/10/2019 05:54:09 p. m. ******/
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
/****** Object:  Table [dbo].[proveedores]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[sucursales]    Script Date: 27/10/2019 05:54:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[venta]    Script Date: 27/10/2019 05:54:09 p. m. ******/
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
INSERT [dbo].[almacen] ([id_almacen], [id_sucursal], [descripcion_alm]) VALUES (1, 1, N'Primer almacen- Centro')
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
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (1, 1, N'Eduardo', N'Martinez', N'Jimenez', N'8112569481', N'eduardom@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (2, 1, N'Martin', N'Gomez', N'Diaz', N'8157896438', N'marting@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (3, 1, N'Juan', N'Lopez', N'Ruiz', N'8147569855', N'juanl@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (4, 1, N'Jimena', N'Rodriguez', N'Hernandez', N'8132566987', N'jimenar@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (5, 1, N'Maria', N'Olazaran', N'Alonso', N'8112578964', N'mariao@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (6, 1, N'Ana', N'Benavidez', N'Vazquez', N'8125498762', N'anab@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (7, 1, N'Jose', N'Gonzalez', N'Castro', N'8125469875', N'joseg@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (8, 1, N'Romeo', N'Juarez', N'Ortiz', N'8156987525', N'romeoj@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (9, 1, N'Sergio', N'Cruz', N'Torres', N'8113975684', N'sergioc@farmacity.com')
INSERT [dbo].[empleados] ([id_empleado], [id_sucursal], [nombre_epdo], [ap_pat_epdo], [ap_mat_epdo], [telefono_epdo], [correo_epdo]) VALUES (10, 1, N'Admin', N'Admin', N'Admin', N'8113256551', N'admin@farmacity.com')
INSERT [dbo].[empresa] ([id_empresa], [nombre_com_epsa], [tipo_sociedad_epsa], [correo_gral_epsa], [telefono_epsa]) VALUES (1, N'Farmacity', N'S.A.', N'farmacity.info@farmacity.com', N'018004412')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (1, 1, 1, N'Ketorolaco', 30, N'Mg.', N'Generico', 32.0000, N'Oral, Seis tabletas, sublingual')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (2, 1, 1, N'Paracetamol', 250, N'Mg.', N'Generico', 45.0000, N'Oral, tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (3, 2, 1, N'Voltaren Dolo Softgel', 25, N'Mg.', N'Voltaren', 81.0000, N'Oral, 10 capsulas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (4, 2, 1, N'Flanax Noctu Difenhidramina', 220, N'Mg.', N'Flanax', 140.0000, N'Oral, 10 tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (5, 3, 1, N'Acemetacina', 60, N'Mg.', N'Rantudil', 303.0000, N'Oral, 12 capsulas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (6, 3, 1, N'Ibuprofeno', 400, N'Mg', N'Generico', 24.0000, N'Oral, 10 tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (7, 4, 1, N'Macrogol', 17, N'g', N'Generico', 154.0000, N'Oral, sobres')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (8, 4, 1, N'Senodosis A-B', 187, N'Mg.', N'Generico', 40.0000, N'Oral, 20 tabletas')
INSERT [dbo].[productos] ([id_producto], [id_clasificacion], [id_departamento], [nombre_prod], [cantidad_prod], [unidad_prod], [marca_prod], [precio_prod], [descripcion]) VALUES (9, 5, 1, N'Clorfenamina', 500, N'Mg.', N'Tabcin', 29.0000, N'Oral, 12 tabletas efervescentes')
INSERT [dbo].[proveedores] ([id_proveedor], [nombre_prov], [telefono_prov], [correo_prov]) VALUES (1, N'Dsta Maria', N'4422421246', N'ventasweb@dstmaria.com')
INSERT [dbo].[sucursales] ([id_sucursal], [id_empresa], [nombre_suc]) VALUES (1, 1, N'Centro')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (1, 1, N'eduardom', N'm1m2m3m4m5')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (2, 2, N'marting', N'u672hh')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (3, 3, N'juanl', N'l29n3bb')
INSERT [dbo].[usuarios] ([id_usuario], [id_empleado], [usuario], [clave]) VALUES (4, 4, N'jimenar', N'abc1234')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_emp]    Script Date: 27/10/2019 05:54:09 p. m. ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [UQ_emp] UNIQUE NONCLUSTERED 
(
	[telefono_epdo] ASC,
	[correo_epdo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
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
