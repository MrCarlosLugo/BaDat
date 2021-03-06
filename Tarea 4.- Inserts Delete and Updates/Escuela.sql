USE [Escuela]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Municipio]') AND type in (N'U'))
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT IF EXISTS [FK_Municipio_Estado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MateriaCarrera]') AND type in (N'U'))
ALTER TABLE [dbo].[MateriaCarrera] DROP CONSTRAINT IF EXISTS [FK_MateriaCarrera_Materia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MateriaCarrera]') AND type in (N'U'))
ALTER TABLE [dbo].[MateriaCarrera] DROP CONSTRAINT IF EXISTS [FK_MateriaCarrera_Carrera]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maestro]') AND type in (N'U'))
ALTER TABLE [dbo].[Maestro] DROP CONSTRAINT IF EXISTS [FK_Maestro_Direccion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Listado]') AND type in (N'U'))
ALTER TABLE [dbo].[Listado] DROP CONSTRAINT IF EXISTS [FK_Listado_Alumno]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorarioDeClase]') AND type in (N'U'))
ALTER TABLE [dbo].[HorarioDeClase] DROP CONSTRAINT IF EXISTS [FK_HorarioDeClase_Horario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Direccion]') AND type in (N'U'))
ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT IF EXISTS [FK_Direccion_Colonia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colonia]') AND type in (N'U'))
ALTER TABLE [dbo].[Colonia] DROP CONSTRAINT IF EXISTS [FK_Colonia_Municipio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clase]') AND type in (N'U'))
ALTER TABLE [dbo].[Clase] DROP CONSTRAINT IF EXISTS [FK_Clase_Salon]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clase]') AND type in (N'U'))
ALTER TABLE [dbo].[Clase] DROP CONSTRAINT IF EXISTS [FK_Clase_Periodos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clase]') AND type in (N'U'))
ALTER TABLE [dbo].[Clase] DROP CONSTRAINT IF EXISTS [FK_Clase_MateriaCarrera]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clase]') AND type in (N'U'))
ALTER TABLE [dbo].[Clase] DROP CONSTRAINT IF EXISTS [FK_Clase_Maestro]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clase]') AND type in (N'U'))
ALTER TABLE [dbo].[Clase] DROP CONSTRAINT IF EXISTS [FK_Clase_Listado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alumno]') AND type in (N'U'))
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT IF EXISTS [FK_Alumno_Direccion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alumno]') AND type in (N'U'))
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT IF EXISTS [FK_Alumno_Carrera]
GO
/****** Object:  Table [dbo].[Salon]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Salon]
GO
/****** Object:  Table [dbo].[Periodos]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Periodos]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[MateriaCarrera]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[MateriaCarrera]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Listado]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Listado]
GO
/****** Object:  Table [dbo].[HorarioDeClase]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[HorarioDeClase]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Horario]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Colonia]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Colonia]
GO
/****** Object:  Table [dbo].[Clase]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Clase]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 12/10/2018 23:11:50 ******/
DROP TABLE IF EXISTS [dbo].[Alumno]
GO
USE [master]
GO
/****** Object:  Database [Escuela]    Script Date: 12/10/2018 23:11:50 ******/
DROP DATABASE IF EXISTS [Escuela]
GO
/****** Object:  Database [Escuela]    Script Date: 12/10/2018 23:11:51 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Escuela')
BEGIN
CREATE DATABASE [Escuela]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Escuela', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Escuela.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Escuela_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Escuela_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [Escuela] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escuela].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Escuela] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Escuela] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Escuela] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Escuela] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Escuela] SET ARITHABORT OFF 
GO
ALTER DATABASE [Escuela] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Escuela] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Escuela] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Escuela] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Escuela] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Escuela] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Escuela] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Escuela] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Escuela] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Escuela] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Escuela] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Escuela] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Escuela] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Escuela] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Escuela] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Escuela] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Escuela] SET RECOVERY FULL 
GO
ALTER DATABASE [Escuela] SET  MULTI_USER 
GO
ALTER DATABASE [Escuela] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Escuela] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Escuela] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Escuela] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Escuela] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Escuela', N'ON'
GO
ALTER DATABASE [Escuela] SET QUERY_STORE = OFF
GO
USE [Escuela]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Escuela]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 12/10/2018 23:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alumno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Alumno](
	[Matricula] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoP] [varchar](50) NULL,
	[ApellidoM] [varchar](50) NULL,
	[FechaDeIngreso] [date] NULL,
	[IdDireccion] [int] NULL,
	[IdCarrera] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 12/10/2018 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carrera]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Carrera](
	[IdCarrera] [int] NOT NULL,
	[NoPlan] [varchar](50) NULL,
	[Duracion] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Clase]    Script Date: 12/10/2018 23:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clase](
	[IdClase] [int] NOT NULL,
	[IdPeriodo] [int] NULL,
	[NoEmpleado] [int] NULL,
	[IdMateriaCarrera] [int] NULL,
	[IdSalon] [int] NULL,
	[IdListado] [int] NULL,
 CONSTRAINT [PK_Clase] PRIMARY KEY CLUSTERED 
(
	[IdClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Colonia]    Script Date: 12/10/2018 23:12:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colonia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Colonia](
	[IdColonia] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdMunicipio] [int] NULL,
 CONSTRAINT [PK_Colonia] PRIMARY KEY CLUSTERED 
(
	[IdColonia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 12/10/2018 23:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Direccion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Direccion](
	[IdDireccion] [int] NOT NULL,
	[Calle] [varchar](50) NULL,
	[Numero] [int] NULL,
	[IdColonia] [int] NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[IdDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 12/10/2018 23:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estado](
	[IdEstado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 12/10/2018 23:12:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Horario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Horario](
	[IdHorario] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[HoraInicio] [char](10) NULL,
	[HoraFinal] [char](10) NULL,
	[Turno] [char](10) NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HorarioDeClase]    Script Date: 12/10/2018 23:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorarioDeClase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HorarioDeClase](
	[IdHorarioDeClase] [int] NOT NULL,
	[IdHorario] [int] NULL,
 CONSTRAINT [PK_HorarioDeClase] PRIMARY KEY CLUSTERED 
(
	[IdHorarioDeClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Listado]    Script Date: 12/10/2018 23:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Listado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Listado](
	[IdListado] [int] NOT NULL,
	[Matricula] [int] NULL,
 CONSTRAINT [PK_Listado] PRIMARY KEY CLUSTERED 
(
	[IdListado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 12/10/2018 23:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maestro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Maestro](
	[NoEmpleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoP] [varchar](50) NULL,
	[ApellidoM] [varchar](50) NULL,
	[IdDireccion] [int] NULL,
 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 
(
	[NoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 12/10/2018 23:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Materia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Materia](
	[IdMateria] [int] NOT NULL,
	[Clave] [int] NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[IdMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MateriaCarrera]    Script Date: 12/10/2018 23:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MateriaCarrera]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MateriaCarrera](
	[IdMateriaCarrera] [int] NOT NULL,
	[IdCarrera] [int] NULL,
	[IdMateria] [int] NULL,
	[Semestre] [int] NULL,
 CONSTRAINT [PK_MateriaCarrera] PRIMARY KEY CLUSTERED 
(
	[IdMateriaCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 12/10/2018 23:13:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Municipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Municipio](
	[IdMunicipio] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[IdMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Periodos]    Script Date: 12/10/2018 23:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Periodos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Periodos](
	[IdPeriodo] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Inicio] [varchar](50) NULL,
	[Final] [varchar](50) NULL,
 CONSTRAINT [PK_Periodos] PRIMARY KEY CLUSTERED 
(
	[IdPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Salon]    Script Date: 12/10/2018 23:13:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Salon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Salon](
	[IdSalon] [int] NOT NULL,
 CONSTRAINT [PK_Salon] PRIMARY KEY CLUSTERED 
(
	[IdSalon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (1111121, N'ALICIA', N'Quebas', N'Gardea', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (1122112, N'MARÍA FERNANDA', N'Quenca', N'Garduno', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (1189999, N'GERARDO', N'ViLLARREAL', N'Gillen', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (1233212, N'SERGIO', N'Queved', N'Garfias', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (1234532, N'JUAN ', N'Perea', N'Perea', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (1235777, N'ALBERTO', N'Quezada', N'Garia', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (1443254, N'TERESA', N'Quebara', N'Garcia', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (2222222, N'Rosa', N'Revilla', N'Garibay', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (2245555, N'ARMANDO', N'Reveles', N'Garibaldo', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (2345632, N'GUADALUPE ', N'Marin', N'Ghsayu', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3222211, N'DAVID ', N'Saavedra', N'Mejia', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3222245, N'MARGARITA ', N'Ruis', N'Marin', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3333333, N'PATRICIA', N'Reyna', N'Garivay', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3344444, N'MANUEL', N'Reynaga', N'Garnica', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3356777, N'MIGUEL ÁNGEL', N'Monte', N'Mereles', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3433333, N'MARGARITA ', N'Marin', N'Mesquite', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3436777, N'ALEJANDRO', N'Pesina', N'Marin', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3534677, N'FRANCISCO', N'Resendes', N'Rutia', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (3545678, N'JOSÉ ', N'Puga', N'Pesina', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (4344444, N'PEDRO', N'Monte', N'Mesquite', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (4444445, N'ELIZABETH', N'Romero', N'Garsa', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (4654747, N'MARÍA ', N'Mejia', N'Morones', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (5477777, N'PEDRO', N'Requenes', N'Milan', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (5556666, N'GLORIA', N'Rondan', N'Garsia', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (5645654, N'MARÍA', N'Milan', N'Mexia', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (5676578, N'FRANCISCO ', N'Ghsayu', N'Ghsayu', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (6565444, N'LUIS', N'Quijano', N'Garibai', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (6644333, N'ÁNGEL', N'Rondero', N'Garzia', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (6665557, N'GABRIELA', N'Villalovos', N'Gasca', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (6666789, N'SILVIA', N'Villanueba', N'Gatica', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (7475477, N'GUADALUPE ', N'Ghsayu', N'Morones', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (7765443, N'DAVID ', N'Rutia', N'Requenes', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (7777764, N'MANUEL', N'Mexia', N'Ruiz', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (7777777, N'Antonio', N'Lucio', N'Acosta', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (7888888, N'SALVADOR', N'Villalpando', N'Gascon', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (8722912, N'GABRIEL', N'Villa', N'Garza', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (8789912, N'GABRIELA', N'Villas', N'Garza', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (8789999, N'GABRIEL', N'Villasana', N'Gausin', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (8888878, N'VÍCTOR', N'Villami', N'Gaspar', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Alumno] ([Matricula], [Nombre], [ApellidoP], [ApellidoM], [FechaDeIngreso], [IdDireccion], [IdCarrera]) VALUES (8999779, N'MANUEL', N'Ruelas', N'Puga', CAST(N'2017-08-06' AS Date), NULL, NULL)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (1, N'Noria norte', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (2, N'Noria sur', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (3, N'Alamos del parque', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (4, N'Alamos', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (5, N'Valles de Huinala', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (6, N'Huinala', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (7, N'Deportivo Huinala', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (8, N'Balcones de Huinala', 1)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (9, N'Zozaya', 4)
INSERT [dbo].[Colonia] ([IdColonia], [Nombre], [IdMunicipio]) VALUES (10, N'Balcones de san Miguel', 4)
INSERT [dbo].[Estado] ([IdEstado], [Nombre]) VALUES (1, N'Nuevo Leon')
INSERT [dbo].[Maestro] ([NoEmpleado], [Nombre], [ApellidoP], [ApellidoM], [IdDireccion]) VALUES (11111, N'Armando', N'Lucio', N'Paz', NULL)
INSERT [dbo].[Maestro] ([NoEmpleado], [Nombre], [ApellidoP], [ApellidoM], [IdDireccion]) VALUES (33333, N'Ariel', N'Galvan', N'Cruz', NULL)
INSERT [dbo].[Maestro] ([NoEmpleado], [Nombre], [ApellidoP], [ApellidoM], [IdDireccion]) VALUES (44444, N'Ana', N'Garcia', N'Guerrero', NULL)
INSERT [dbo].[Maestro] ([NoEmpleado], [Nombre], [ApellidoP], [ApellidoM], [IdDireccion]) VALUES (55555, N'Luis', N'Jimenez', N'Perez', NULL)
INSERT [dbo].[Municipio] ([IdMunicipio], [Nombre], [IdEstado]) VALUES (1, N'Apodaca', 1)
INSERT [dbo].[Municipio] ([IdMunicipio], [Nombre], [IdEstado]) VALUES (2, N'Escobedo', 1)
INSERT [dbo].[Municipio] ([IdMunicipio], [Nombre], [IdEstado]) VALUES (3, N'Monterrey', 1)
INSERT [dbo].[Municipio] ([IdMunicipio], [Nombre], [IdEstado]) VALUES (4, N'Guadalupe', 1)
INSERT [dbo].[Municipio] ([IdMunicipio], [Nombre], [IdEstado]) VALUES (5, N'Juarez', 1)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alumno_Carrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alumno]'))
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Carrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alumno_Carrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alumno]'))
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Carrera]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alumno_Direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alumno]'))
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Direccion] FOREIGN KEY([IdDireccion])
REFERENCES [dbo].[Direccion] ([IdDireccion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alumno_Direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alumno]'))
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Direccion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Listado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase]  WITH CHECK ADD  CONSTRAINT [FK_Clase_Listado] FOREIGN KEY([IdListado])
REFERENCES [dbo].[Listado] ([IdListado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Listado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase] CHECK CONSTRAINT [FK_Clase_Listado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Maestro]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase]  WITH CHECK ADD  CONSTRAINT [FK_Clase_Maestro] FOREIGN KEY([NoEmpleado])
REFERENCES [dbo].[Maestro] ([NoEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Maestro]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase] CHECK CONSTRAINT [FK_Clase_Maestro]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_MateriaCarrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase]  WITH CHECK ADD  CONSTRAINT [FK_Clase_MateriaCarrera] FOREIGN KEY([IdMateriaCarrera])
REFERENCES [dbo].[MateriaCarrera] ([IdMateriaCarrera])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_MateriaCarrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase] CHECK CONSTRAINT [FK_Clase_MateriaCarrera]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Periodos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase]  WITH CHECK ADD  CONSTRAINT [FK_Clase_Periodos] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Periodos] ([IdPeriodo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Periodos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase] CHECK CONSTRAINT [FK_Clase_Periodos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Salon]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase]  WITH CHECK ADD  CONSTRAINT [FK_Clase_Salon] FOREIGN KEY([IdSalon])
REFERENCES [dbo].[Salon] ([IdSalon])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clase_Salon]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clase]'))
ALTER TABLE [dbo].[Clase] CHECK CONSTRAINT [FK_Clase_Salon]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Colonia_Municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[Colonia]'))
ALTER TABLE [dbo].[Colonia]  WITH CHECK ADD  CONSTRAINT [FK_Colonia_Municipio] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[Municipio] ([IdMunicipio])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Colonia_Municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[Colonia]'))
ALTER TABLE [dbo].[Colonia] CHECK CONSTRAINT [FK_Colonia_Municipio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_Colonia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Colonia] FOREIGN KEY([IdColonia])
REFERENCES [dbo].[Colonia] ([IdColonia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Direccion_Colonia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Direccion]'))
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Colonia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HorarioDeClase_Horario]') AND parent_object_id = OBJECT_ID(N'[dbo].[HorarioDeClase]'))
ALTER TABLE [dbo].[HorarioDeClase]  WITH CHECK ADD  CONSTRAINT [FK_HorarioDeClase_Horario] FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HorarioDeClase_Horario]') AND parent_object_id = OBJECT_ID(N'[dbo].[HorarioDeClase]'))
ALTER TABLE [dbo].[HorarioDeClase] CHECK CONSTRAINT [FK_HorarioDeClase_Horario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Listado_Alumno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Listado]'))
ALTER TABLE [dbo].[Listado]  WITH CHECK ADD  CONSTRAINT [FK_Listado_Alumno] FOREIGN KEY([Matricula])
REFERENCES [dbo].[Alumno] ([Matricula])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Listado_Alumno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Listado]'))
ALTER TABLE [dbo].[Listado] CHECK CONSTRAINT [FK_Listado_Alumno]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maestro_Direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maestro]'))
ALTER TABLE [dbo].[Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Maestro_Direccion] FOREIGN KEY([IdDireccion])
REFERENCES [dbo].[Direccion] ([IdDireccion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maestro_Direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maestro]'))
ALTER TABLE [dbo].[Maestro] CHECK CONSTRAINT [FK_Maestro_Direccion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MateriaCarrera_Carrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[MateriaCarrera]'))
ALTER TABLE [dbo].[MateriaCarrera]  WITH CHECK ADD  CONSTRAINT [FK_MateriaCarrera_Carrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MateriaCarrera_Carrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[MateriaCarrera]'))
ALTER TABLE [dbo].[MateriaCarrera] CHECK CONSTRAINT [FK_MateriaCarrera_Carrera]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MateriaCarrera_Materia]') AND parent_object_id = OBJECT_ID(N'[dbo].[MateriaCarrera]'))
ALTER TABLE [dbo].[MateriaCarrera]  WITH CHECK ADD  CONSTRAINT [FK_MateriaCarrera_Materia] FOREIGN KEY([IdMateria])
REFERENCES [dbo].[Materia] ([IdMateria])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MateriaCarrera_Materia]') AND parent_object_id = OBJECT_ID(N'[dbo].[MateriaCarrera]'))
ALTER TABLE [dbo].[MateriaCarrera] CHECK CONSTRAINT [FK_MateriaCarrera_Materia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Municipio_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Municipio]'))
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Municipio_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Municipio]'))
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Estado]
GO
USE [master]
GO
ALTER DATABASE [Escuela] SET  READ_WRITE 
GO
