USE [master]
GO
/****** Nombre; Steven Ramirez Id; 20-EIIN-1-166 ******/
/****** Nombre; Wilfredo Vasquez Id; 19-SIIT-1-079 ******/
/****** Nombre; Wilkin Rivas Id; 19-MIIN-1-023 ******/

CREATE DATABASE [School_Technology]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School_Technology', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\School_Technology.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'School_Technology_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\School_Technology_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [School_Technology] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School_Technology].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School_Technology] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School_Technology] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School_Technology] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School_Technology] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School_Technology] SET ARITHABORT OFF 
GO
ALTER DATABASE [School_Technology] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [School_Technology] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School_Technology] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School_Technology] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School_Technology] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School_Technology] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School_Technology] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School_Technology] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School_Technology] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School_Technology] SET  ENABLE_BROKER 
GO
ALTER DATABASE [School_Technology] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School_Technology] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School_Technology] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School_Technology] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School_Technology] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School_Technology] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School_Technology] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School_Technology] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [School_Technology] SET  MULTI_USER 
GO
ALTER DATABASE [School_Technology] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School_Technology] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School_Technology] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School_Technology] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [School_Technology] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [School_Technology] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [School_Technology] SET QUERY_STORE = OFF
GO
USE [School_Technology]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 07/05/2021 2:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_cliente] [char](50) NOT NULL,
	[Apellido_cliente] [char](100) NULL,
	[Edad] [char](50) NULL,
	[Direccion] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/05/2021 2:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Nombre_empleado] [char](100) NOT NULL,
	[Apellido_empleado] [char](100) NOT NULL,
	[Edad] [int] NULL,
	[Posicion] [char](100) NULL,
	[Activo] [bit] NULL,
	[Sueldo] [money] NULL,
	[Id_empleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 07/05/2021 2:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_producto] [char](50) NULL,
	[Precio] [money] NULL,
	[Descripcion_producto] [char](50) NULL,
	[Disponibilidad] [bit] NULL,
	[Id_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto_rentado]    Script Date: 07/05/2021 2:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_rentado](
	[Id_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_producto] [char](100) NULL,
	[Fecha_contrato] [date] NULL,
	[Activo] [bit] NULL,
	[Id_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Software]    Script Date: 07/05/2021 2:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Software](
	[Id_Software] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Software] [char](100) NULL,
	[Precio] [money] NULL,
	[Disponibilidad] [bit] NULL,
	[Descripcion_software] [char](100) NULL,
	[Id_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Software] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (1, N'Rafael                                            ', N'Peña                                                                                                ', N'25                                                ', N'C/5 #38, libertador de Herrera                    ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (2, N'Josefina                                          ', N'Acosta                                                                                              ', N'36                                                ', N'Manzana 15 Las caobas                             ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (3, N'Antonio                                           ', N'Ramirez                                                                                             ', N'45                                                ', N'Naco edificio roman c/6                           ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (4, N'Raul                                              ', N'Torres                                                                                              ', N'57                                                ', NULL)
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (5, N'Roberto                                           ', N'Lara                                                                                                ', N'47                                                ', N'C/7 Piantini Santo Domingo                        ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (1002, N'Ramon                                             ', N'Jimenez                                                                                             ', N'42                                                ', N'C/12 Alameda                                      ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (1003, N'Fernando                                          ', N'Rodriguez                                                                                           ', N'34                                                ', N'C/4 Arroyo hondo                                  ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (1004, N'Felix                                             ', N'Nuñez                                                                                               ', N'27                                                ', N'Av. George Washington no.24                       ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (1005, N'Antonio                                           ', N'Ferreras                                                                                            ', N'54                                                ', N'C/6 los Frailes                                   ')
INSERT [dbo].[Clientes] ([ID_Cliente], [Nombre_cliente], [Apellido_cliente], [Edad], [Direccion]) VALUES (1006, N'Nery                                              ', N'Jimenez                                                                                             ', N'29                                                ', N'El naco tower dymond                              ')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Wilfredo                                                                                            ', N'Vasquez                                                                                             ', 27, N'Gerente general                                                                                     ', 1, 110000.0000, 123)
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Wilkin                                                                                              ', N'Rivas                                                                                               ', 29, N'Sub-Gerente                                                                                         ', 1, 97000.0000, 124)
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Steven                                                                                              ', N'Ramirez                                                                                             ', 28, N'Gerente de calidad                                                                                  ', 1, 180000.0000, 125)
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Mariely                                                                                             ', N'Jimenez                                                                                             ', 25, N'Ing. Sistema                                                                                        ', 1, 60000.0000, 126)
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Jennifer                                                                                            ', N'Ramirez                                                                                             ', 26, N'Gerente de RRUU                                                                                     ', 1, 60000.0000, 127)
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Andrea                                                                                              ', N'Rocha                                                                                               ', 34, N'Supervisora de Almacen                                                                              ', 1, 85000.0000, 128)
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Amado                                                                                               ', N'Torres                                                                                              ', 27, N'Gerente de ventas                                                                                   ', 1, 94000.0000, 129)
INSERT [dbo].[Empleado] ([Nombre_empleado], [Apellido_empleado], [Edad], [Posicion], [Activo], [Sueldo], [Id_empleado]) VALUES (N'Rossy                                                                                               ', N'Fortuna                                                                                             ', 34, N'Analista de datos                                                                                   ', 1, 74000.0000, 130)
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (1, N'Dell 755                                          ', 6000.0000, N'Computadora                                       ', 1, 1)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (2, N'Lenovo A520                                       ', 6000.0000, N'Computadora                                       ', 1, 3)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (3, N'Dell 620                                          ', 6000.0000, N'Computadora                                       ', 1, 1002)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (4, N'Ethernet Cat 5                                    ', 250.0000, N'Cable de red                                      ', 1, 1003)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (5, N'Ethernet Cat 6                                    ', 600.0000, N'Cable de red                                      ', 1, 1003)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (6, N'Dell 456                                          ', 6000.0000, N'Computadora                                       ', 1, 5)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (7, N'Ethernet cat 745                                  ', 280.0000, N'Cable de red                                      ', 1, NULL)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (9, N'Dell 450                                          ', 6000.0000, N'Computadora                                       ', 1, 1006)
INSERT [dbo].[Producto] ([Id_producto], [Nombre_producto], [Precio], [Descripcion_producto], [Disponibilidad], [Id_cliente]) VALUES (10, N'Lenovo                                            ', 6000.0000, N'Computadora                                       ', 1, NULL)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto_rentado] ON 

INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (1, N'Dell 755                                                                                            ', CAST(N'2020-04-25' AS Date), 1, 2)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (2, N'Dell 620                                                                                            ', CAST(N'2018-06-15' AS Date), 1, 4)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (3, N'Lenovo A520                                                                                         ', CAST(N'2012-01-27' AS Date), 1, 5)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (4, N'Dell 755                                                                                            ', CAST(N'2014-03-05' AS Date), 1, 1002)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (5, N'Lenovo A520                                                                                         ', CAST(N'2012-03-04' AS Date), 1, 1003)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (6, N'Dell 755                                                                                            ', CAST(N'2012-05-07' AS Date), 1, 1006)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (7, N'Lenovo A400                                                                                         ', CAST(N'2017-06-24' AS Date), 1, 1006)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (8, N'Dell 755                                                                                            ', CAST(N'2014-03-05' AS Date), 1, 1002)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (9, N'Dell 620                                                                                            ', CAST(N'2015-05-07' AS Date), 1, 5)
INSERT [dbo].[Producto_rentado] ([Id_Producto], [Nombre_producto], [Fecha_contrato], [Activo], [Id_cliente]) VALUES (10, N'Lenovo A520                                                                                         ', CAST(N'2017-06-24' AS Date), 1, 1006)
SET IDENTITY_INSERT [dbo].[Producto_rentado] OFF
GO
SET IDENTITY_INSERT [dbo].[Software] ON 

INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (1, N'School_Visual                                                                                       ', 50000.0000, 1, N'Supervision a los profesores                                                                        ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (2, N'School_accounting                                                                                   ', 50000.0000, 1, N'Contabilidad                                                                                        ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (3, N'Learn_platform                                                                                      ', 50000.0000, 1, N'Plataforma de estudiante                                                                            ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (4, N'Fast_learn                                                                                          ', 50000.0000, 1, N'Software para aprender                                                                              ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (5, N'Try_Speak                                                                                           ', 50000.0000, 1, N'Videocoferencia                                                                                     ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (6, N'School_learn                                                                                        ', 50000.0000, 0, N'Plataforma de enseñar                                                                               ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (7, N'Real_class                                                                                          ', 50000.0000, 1, N'Plataforma                                                                                          ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (8, N'School_money                                                                                        ', 50000.0000, 0, N'Contabilidad                                                                                        ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (9, N'School_procces                                                                                      ', 50000.0000, 1, N'Intranet                                                                                            ', NULL)
INSERT [dbo].[Software] ([Id_Software], [Nombre_Software], [Precio], [Disponibilidad], [Descripcion_software], [Id_cliente]) VALUES (10, N'Spy-Director                                                                                        ', 50000.0000, 0, N'Supervision                                                                                         ', NULL)
SET IDENTITY_INSERT [dbo].[Software] OFF
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Clientes] ([ID_Cliente])
GO
ALTER TABLE [dbo].[Producto_rentado]  WITH CHECK ADD FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Clientes] ([ID_Cliente])
GO
ALTER TABLE [dbo].[Software]  WITH CHECK ADD FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Clientes] ([ID_Cliente])
GO
USE [master]
GO
ALTER DATABASE [School_Technology] SET  READ_WRITE 
GO
