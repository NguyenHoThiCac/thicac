Create Database WebDB3
GO
USE [WebDB3]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 15/01/2022 5:15:26 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](550) NULL,
	[Detail] [ntext] NULL,
	[Price] [money] NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[PriceNew] [money] NULL,
	[Color] [nvarchar](50) NULL,
	[Sale] [int] NULL,
	[CatalogID] [int] NULL,
	[SellID] [int] Null,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Catalog] FOREIGN KEY([CatalogID])
REFERENCES [dbo].[Catalog] ([CatalogID])
GO

ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Catalog]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SellID] FOREIGN KEY([SellID])
REFERENCES [dbo].[Account] ([AccountID])
GO

ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Catalog]
GO

----table Oder detail
USE [WebDB3]
GO

/****** Object:  Table [dbo].[Oder_Detail]    Script Date: 15/01/2022 5:15:19 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Oder_Detail](
	[OderID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Oder_Detail] PRIMARY KEY CLUSTERED 
(
	[OderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Oder_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Oder_Detail_Oder] FOREIGN KEY([OderID])
REFERENCES [dbo].[Oder] ([OderID])
GO

ALTER TABLE [dbo].[Oder_Detail] CHECK CONSTRAINT [FK_Oder_Detail_Oder]
GO

ALTER TABLE [dbo].[Oder_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Oder_Detail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO

ALTER TABLE [dbo].[Oder_Detail] CHECK CONSTRAINT [FK_Oder_Detail_Product]
GO
---table oder
USE [WebDB3]
GO

/****** Object:  Table [dbo].[Oder]    Script Date: 15/01/2022 5:15:13 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Oder](
	[OderID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](50) NULL,
	[AccountID] [int] NULL,
	[TotalMoney] [money] NULL,
 CONSTRAINT [PK_Oder] PRIMARY KEY CLUSTERED 
(
	[OderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Oder]  WITH CHECK ADD  CONSTRAINT [FK_Oder_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO

ALTER TABLE [dbo].[Oder] CHECK CONSTRAINT [FK_Oder_Account]
GO
--table contact
USE [WebDB3]
GO

/****** Object:  Table [dbo].[Contact]    Script Date: 15/01/2022 5:15:01 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Mail] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[Subject] [nvarchar](250) NULL,
	[Message] [ntext] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--table catalog
USE [WebDB3]
GO

/****** Object:  Table [dbo].[Catalog]    Script Date: 15/01/2022 5:14:52 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Catalog](
	[CatalogID] [int] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[CatalogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
---table blog
USE [WebDB3]
GO

/****** Object:  Table [dbo].[Blog]    Script Date: 15/01/2022 5:14:44 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blog](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Author] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
	[Demo] [nvarchar](250) NULL,
	[Content] [ntext] NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


---table account role = 1 là admin, role = 0/null la user
USE [WebDB3]
GO

/****** Object:  Table [dbo].[Account]    Script Date: 15/01/2022 5:14:27 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](500) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NOT NULL,
	[Phone] [varchar](50) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO








