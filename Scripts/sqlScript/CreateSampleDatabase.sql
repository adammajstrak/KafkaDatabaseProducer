USE [master]
GO

CREATE DATABASE [Kafka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kafka', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Kafka.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kafka_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Kafka_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Kafka] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kafka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kafka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kafka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kafka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kafka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kafka] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kafka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kafka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kafka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kafka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kafka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kafka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kafka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kafka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kafka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kafka] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kafka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kafka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kafka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kafka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kafka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kafka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kafka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kafka] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Kafka] SET  MULTI_USER 
GO
ALTER DATABASE [Kafka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kafka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kafka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kafka] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kafka] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kafka] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Kafka] SET QUERY_STORE = OFF
GO
USE [Kafka]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KafkaMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_KafkaMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KafkaMessages] ON 
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (1, N'1')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (2, N'2')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (3, N'3')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (4, N'4')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (5, N'5')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (6, N'6')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (7, N'7')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (8, N'8')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (9, N'9')
GO
INSERT [dbo].[KafkaMessages] ([Id], [Message]) VALUES (10, N'10')
GO
SET IDENTITY_INSERT [dbo].[KafkaMessages] OFF
GO
USE [master]
GO
ALTER DATABASE [Kafka] SET  READ_WRITE 
GO