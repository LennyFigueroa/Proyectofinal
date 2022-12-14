
/*Nombre: Lenny Matricula: 21-EIIT-1-003 Seccion 0541*/

/****** Object:  Database [AgileDrawing]    Script Date: 24/08/2022 21:06:39 ******/
CREATE DATABASE [AgileDrawing]
GO
USE [AgileDrawing]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 24/08/2022 21:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[ArticulosID] [int] NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Nombre] [varchar](100) NULL,
	[Imagen] [varchar](20) NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[ArticulosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 24/08/2022 21:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[CategoriaID] [int] NOT NULL,
	[ArticuloID] [int] NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingreso]    Script Date: 24/08/2022 21:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingreso](
	[IngresoID] [int] NOT NULL,
	[ArticuloID] [int] NULL,
	[UsuarioID] [int] NULL,
	[Fecha] [datetime] NULL,
	[Impuesto] [decimal](4, 0) NULL,
	[Total] [decimal](11, 2) NULL,
 CONSTRAINT [PK_Ingreso] PRIMARY KEY CLUSTERED 
(
	[IngresoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 24/08/2022 21:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Correo] [varchar](70) NULL,
	[Contraseña] [varchar](50) NULL,
	[Registro] [int] NULL,
	[CategoriaID] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 24/08/2022 21:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[VentaID] [int] NOT NULL,
	[UsuarioID] [int] NULL,
	[IngresoID] [int] NULL,
	[Precio venta] [decimal](11, 2) NULL,
	[Descuento] [decimal](4, 0) NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (1, N'0111', N'Diagrama SDL', N'1')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (2, N'0112', N'Comparacion', N'2')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (3, N'0113', N'Mapa mental del proyecto', N'3')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (4, N'0114', N'Diagrama de red', N'4')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (5, N'0115', N'Organigrama', N'5')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (6, N'0116', N'Diagrama de flujo de datos', N'6')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (7, N'0117', N'Diagrama del flujo de proceso', N'7')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (8, N'0118', N'Arbol de decisión', N'8')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (9, N'0119', N'Plantilla arquitectonica', N'9')
INSERT [dbo].[Articulos] ([ArticulosID], [Codigo], [Nombre], [Imagen]) VALUES (10, N'0110', N'Grafico de area', N'10')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (1, 1, N'Diagrama de flujo')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (2, 2, N'Infografia')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (3, 3, N'Mapa mental')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (4, 4, N'Diseño de red')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (5, 5, N'Organigrama')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (6, 6, N'Diseño de software')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (7, 7, N'Ingenieria')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (8, 8, N'Arbol de decisión')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (9, 9, N'Paneles Arquitectonicos')
INSERT [dbo].[Categoria] ([CategoriaID], [ArticuloID], [Nombre]) VALUES (10, 10, N'Graficos y medidores')
GO
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (1, 1, 1, CAST(N'2022-10-01T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (2, 2, 2, CAST(N'2022-10-02T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (3, 3, 3, CAST(N'2022-10-03T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (4, 4, 4, CAST(N'2022-10-04T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (5, 5, 5, CAST(N'2022-10-05T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (6, 6, 6, CAST(N'2022-10-06T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (7, 7, 7, CAST(N'2022-10-07T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (8, 8, 8, CAST(N'2022-10-08T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (9, 9, 9, CAST(N'2022-10-09T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), CAST(97.00 AS Decimal(11, 2)))
INSERT [dbo].[Ingreso] ([IngresoID], [ArticuloID], [UsuarioID], [Fecha], [Impuesto], [Total]) VALUES (10, 10, 10, CAST(N'2022-10-10T00:00:00.000' AS DateTime), CAST(3 AS Decimal(4, 0)), NULL)
GO
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (1, N'Ana', N'analuisa01@gmail.com', N'123456789', 1, 1)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (2, N'Mariel', N'hichezmariel@gmail.com', N'123456789', 2, 2)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (3, N'Carolina', N'carolinamendez@gmail.com', N'123456789', 3, 3)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (4, N'Vanesa', N'vanesaramirez@gmail.com', N'123456789', 4, 4)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (5, N'Jairo', N'sanchezjairo@gmail.com', N'123456789', 5, 5)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (6, N'Benjamin', N'Benjaminperez01@gmail.com', N'123456789', 6, 6)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (7, N'Ambar', N'Ambarcarolina@gmail.com', N'123456789', 7, 7)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (8, N'Wilker', N'ramirezwilker@gmail.com', N'123456789', 8, 8)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (9, N'Melissa', N'delacruzfrias@gmail.com', N'123456789', 9, 9)
INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Correo], [Contraseña], [Registro], [CategoriaID]) VALUES (10, N'Rosalia', N'rosaliadelacruz@gmail.com', N'123456789', 10, 10)
GO
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (1, 1, 1, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (2, 2, 2, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (3, 3, 3, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (4, 4, 4, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (5, 5, 5, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (6, 6, 6, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (7, 7, 7, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (8, 8, 8, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (9, 9, 9, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
INSERT [dbo].[Venta] ([VentaID], [UsuarioID], [IngresoID], [Precio venta], [Descuento]) VALUES (10, 10, 10, CAST(99.99 AS Decimal(11, 2)), CAST(3 AS Decimal(4, 0)))
GO
ALTER TABLE [dbo].[Ingreso]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_Articulos] FOREIGN KEY([ArticuloID])
REFERENCES [dbo].[Articulos] ([ArticulosID])
GO
ALTER TABLE [dbo].[Ingreso] CHECK CONSTRAINT [FK_Ingreso_Articulos]
GO
ALTER TABLE [dbo].[Ingreso]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_Articulos1] FOREIGN KEY([ArticuloID])
REFERENCES [dbo].[Articulos] ([ArticulosID])
GO
ALTER TABLE [dbo].[Ingreso] CHECK CONSTRAINT [FK_Ingreso_Articulos1]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Categoria] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categoria] ([CategoriaID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Categoria]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Ingreso] FOREIGN KEY([IngresoID])
REFERENCES [dbo].[Ingreso] ([IngresoID])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Ingreso]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Usuario]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Usuario1] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Usuario1]
GO
USE [master]
GO
ALTER DATABASE [AgileDrawing] SET  READ_WRITE 
GO
