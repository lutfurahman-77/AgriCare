USE [master]
GO
/****** Object:  Database [AgriCareDB]    Script Date: 9/11/2026 6:50:16 AM ******/
CREATE DATABASE [AgriCareDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgriCareDB', FILENAME = N'D:\Downloads Software\MSSQL16.SQLEXPRESS\MSSQL\DATA\AgriCareDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgriCareDB_log', FILENAME = N'D:\Downloads Software\MSSQL16.SQLEXPRESS\MSSQL\DATA\AgriCareDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AgriCareDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgriCareDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgriCareDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgriCareDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgriCareDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgriCareDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgriCareDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgriCareDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AgriCareDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgriCareDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgriCareDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgriCareDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgriCareDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgriCareDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgriCareDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgriCareDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgriCareDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AgriCareDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgriCareDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgriCareDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgriCareDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgriCareDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgriCareDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AgriCareDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgriCareDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgriCareDB] SET  MULTI_USER 
GO
ALTER DATABASE [AgriCareDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgriCareDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgriCareDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgriCareDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgriCareDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgriCareDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AgriCareDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [AgriCareDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AgriCareDB]
GO
/****** Object:  Table [dbo].[AnimalProblems]    Script Date: 9/11/2026 6:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalProblems](
	[ProblemId] [int] IDENTITY(1,1) NOT NULL,
	[FarmerId] [varchar](50) NOT NULL,
	[AnimalName] [nvarchar](100) NOT NULL,
	[AnimalType] [nvarchar](50) NOT NULL,
	[ProblemDescription] [nvarchar](500) NOT NULL,
	[PaymentAmount] [decimal](10, 2) NOT NULL,
	[PaymentStatus] [nvarchar](20) NOT NULL,
	[ProblemStatus] [nvarchar](30) NOT NULL,
	[DoctorId] [varchar](50) NULL,
	[ReportDate] [datetime2](7) NOT NULL,
	[ServiceType] [varchar](30) NOT NULL,
	[FarmAddress] [varchar](300) NULL,
	[RequestID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProblemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorPayments]    Script Date: 9/11/2026 6:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorPayments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[DoctorID] [nvarchar](50) NOT NULL,
	[TotalAnimals] [int] NOT NULL,
	[TotalAmount] [decimal](10, 2) NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorProfile]    Script Date: 9/11/2026 6:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorProfile](
	[DoctorID] [varchar](50) NOT NULL,
	[Specialization] [varchar](100) NOT NULL,
	[Experience] [int] NOT NULL,
	[OnlineAdviceFee] [decimal](10, 2) NOT NULL,
	[FarmVisitFee] [decimal](10, 2) NOT NULL,
	[Rating] [decimal](3, 2) NOT NULL,
	[TotalReviews] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorReviews]    Script Date: 9/11/2026 6:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorReviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[RequestID] [int] NOT NULL,
	[FarmerID] [varchar](50) NOT NULL,
	[DoctorID] [varchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
	[ReviewDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceRequests]    Script Date: 9/11/2026 6:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceRequests](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[FarmerID] [nvarchar](50) NULL,
	[DoctorID] [nvarchar](50) NULL,
	[AnimalName] [nvarchar](100) NULL,
	[AnimalType] [nvarchar](50) NULL,
	[ProblemDescription] [nvarchar](max) NULL,
	[ServiceType] [nvarchar](50) NULL,
	[FarmAddress] [nvarchar](300) NULL,
	[Amount] [decimal](10, 2) NULL,
	[PaymentStatus] [nvarchar](30) NULL,
	[RequestStatus] [nvarchar](30) NULL,
	[RequestDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/11/2026 6:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [varchar](50) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Gmail] [varchar](150) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Role] [varchar](20) NOT NULL,
	[Status] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AnimalProblems] ADD  DEFAULT (sysdatetime()) FOR [ReportDate]
GO
ALTER TABLE [dbo].[AnimalProblems] ADD  CONSTRAINT [DF_AnimalProblems_ServiceType]  DEFAULT ('Online Advice') FOR [ServiceType]
GO
ALTER TABLE [dbo].[DoctorPayments] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[DoctorProfile] ADD  DEFAULT ((0)) FOR [Rating]
GO
ALTER TABLE [dbo].[DoctorProfile] ADD  DEFAULT ((0)) FOR [TotalReviews]
GO
ALTER TABLE [dbo].[DoctorReviews] ADD  DEFAULT (getdate()) FOR [ReviewDate]
GO
ALTER TABLE [dbo].[ServiceRequests] ADD  DEFAULT (getdate()) FOR [RequestDate]
GO
ALTER TABLE [dbo].[DoctorProfile]  WITH CHECK ADD  CONSTRAINT [FK_DoctorProfile_Users] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[DoctorProfile] CHECK CONSTRAINT [FK_DoctorProfile_Users]
GO
ALTER TABLE [dbo].[DoctorReviews]  WITH CHECK ADD  CONSTRAINT [CK_DoctorReviews_Rating] CHECK  (([Rating]>=(1) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[DoctorReviews] CHECK CONSTRAINT [CK_DoctorReviews_Rating]
GO
	 -- Doctor Service Summary: JOIN + GROUP BY + HAVING + COUNT
SELECT
    U.UserID AS DoctorID,
    U.Name AS DoctorName,
    COUNT(SR.RequestID) AS CompletedServices
FROM dbo.Users U
INNER JOIN dbo.ServiceRequests SR
    ON U.UserID = SR.DoctorID
WHERE U.Role = 'Doctor'
  AND SR.RequestStatus = 'Completed'
GROUP BY U.UserID, U.Name
HAVING COUNT(SR.RequestID) > 0
ORDER BY CompletedServices DESC;
GO
USE [master]
GO
ALTER DATABASE [AgriCareDB] SET  READ_WRITE 
GO
