USE [DB24]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] NOT NULL,
	[LoginId] [int] NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Delivery Team]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Create Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Delivery Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Designation]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[Id] [int] NOT NULL,
	[Designation] [varchar](50) NOT NULL,
	[Salary] [money] NOT NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] NOT NULL,
	[LoginId] [int] NOT NULL,
	[EmployeeId] [nvarchar](20) NOT NULL,
	[HireDate] [date] NOT NULL,
	[DesignationId] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Contact] [varchar](20) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShippedDate] [datetime] NULL,
	[TotalBill] [money] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders DeliveryTeams]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders DeliveryTeams](
	[OrderId] [int] NOT NULL,
	[DeliveryTeamId] [int] NOT NULL,
	[DeliveryStatus] [varchar](50) NOT NULL,
	[AssignmentDateTime] [datetime] NOT NULL,
	[Bill Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Orders DeliveryTeams] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdersVehicles]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdersVehicles](
	[OrderId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[VehicleAssignDate] [datetime] NOT NULL,
 CONSTRAINT [PK_OrdersVehicles] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 4/13/2019 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [nvarchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Orders DeliveryTeams]  WITH CHECK ADD  CONSTRAINT [FK_Orders DeliveryTeams_Delivery Team] FOREIGN KEY([DeliveryTeamId])
REFERENCES [dbo].[Delivery Team] ([Id])
GO
ALTER TABLE [dbo].[Orders DeliveryTeams] CHECK CONSTRAINT [FK_Orders DeliveryTeams_Delivery Team]
GO
ALTER TABLE [dbo].[Orders DeliveryTeams]  WITH CHECK ADD  CONSTRAINT [FK_Orders DeliveryTeams_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Orders DeliveryTeams] CHECK CONSTRAINT [FK_Orders DeliveryTeams_Orders]
GO
ALTER TABLE [dbo].[OrdersVehicles]  WITH CHECK ADD  CONSTRAINT [FK_OrdersVehicles_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrdersVehicles] CHECK CONSTRAINT [FK_OrdersVehicles_Orders]
GO
ALTER TABLE [dbo].[OrdersVehicles]  WITH CHECK ADD  CONSTRAINT [FK_OrdersVehicles_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([Id])
GO
ALTER TABLE [dbo].[OrdersVehicles] CHECK CONSTRAINT [FK_OrdersVehicles_Vehicles]
GO
