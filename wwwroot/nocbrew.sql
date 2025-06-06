USE [NocturnalBrews]
GO
/****** Object:  Table [dbo].[Addons]    Script Date: 11/28/2024 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addons](
	[AddonId] [int] IDENTITY(1,1) NOT NULL,
	[AddonName] [varchar](30) NOT NULL,
	[AddonPrice] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AddonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersTb]    Script Date: 11/28/2024 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersTb](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Price] [int] NOT NULL,
	[Mop] [varchar](50) NOT NULL,
	[Change] [int] NULL,
	[ProductsArray] [nvarchar](max) NULL,
	[Total] [decimal](18, 2) NULL,
	[OrderDateTime] [datetime] NULL,
	[Status] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsTb]    Script Date: 11/28/2024 8:19:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsTb](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[Categories] [nvarchar](100) NULL,
	[Small] [int] NULL,
	[Medium] [int] NULL,
	[Large] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrdersTb] ADD  DEFAULT ('Pending') FOR [Status]
GO
