USE [Bingo]
GO
/****** Object:  Table [dbo].[Ingreso]    Script Date: 04/10/2020 19:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingreso](
	[usuario] [varchar](35) NOT NULL,
	[contrasena] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 04/10/2020 19:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[cedula] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellidoM] [varchar](20) NOT NULL,
	[apellidoP] [varchar](20) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[usuario] [varchar](35) NOT NULL,
	[contrasena] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ingreso]  WITH CHECK ADD FOREIGN KEY([usuario])
REFERENCES [dbo].[Usuario] ([usuario])
GO
