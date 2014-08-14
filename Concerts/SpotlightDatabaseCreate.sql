IF  NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'ConcertsJayakumar')
CREATE DATABASE [ConcertsJayakumar]
GO

USE [ConcertsJayakumar]
GO

/****** Object:  Table [dbo].[Artist]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[BandId] [int] NOT NULL,
	[Sex] [nchar](10) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArtistInTheShow]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArtistInTheShow](
	[ArtistInTheShowId] [int] IDENTITY(1,1) NOT NULL,
	[EventInfoId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[BandId] [int] NOT NULL,
 CONSTRAINT [PK_ArtistInTheShow] PRIMARY KEY CLUSTERED 
(
	[ArtistInTheShowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Band]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Band](
	[BandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[City] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Band] PRIMARY KEY CLUSTERED 
(
	[BandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[SeatingId] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventInfo]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventInfo](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[BandId] [int] NOT NULL,
	[VenueId] [int] NOT NULL,
	[ShowDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_EventInfo] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pricing]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing](
	[PriceId] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[SeatingId] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Pricing] PRIMARY KEY CLUSTERED 
(
	[PriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seating]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seating](
	[SeatingId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Seating] PRIMARY KEY CLUSTERED 
(
	[SeatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venue]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venue](
	[VenueId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[City] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[VenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VenueSeating]    Script Date: 13-Aug-14 6:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VenueSeating](
	[VenueSeatingId] [int] IDENTITY(1,1) NOT NULL,
	[SeatingId] [int] NOT NULL,
	[VenueId] [int] NOT NULL,
 CONSTRAINT [PK_VenueSeating] PRIMARY KEY CLUSTERED 
(
	[VenueSeatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ArtistId], [Name], [BandId], [Sex], [IsActive]) VALUES (1, N'John Deacon', 6, N'M         ', 1)
INSERT [dbo].[Artist] ([ArtistId], [Name], [BandId], [Sex], [IsActive]) VALUES (2, N'Freddie Mercury', 6, N'M         ', 1)
INSERT [dbo].[Artist] ([ArtistId], [Name], [BandId], [Sex], [IsActive]) VALUES (3, N'Brian May', 6, N'M         ', 0)
INSERT [dbo].[Artist] ([ArtistId], [Name], [BandId], [Sex], [IsActive]) VALUES (4, N'John Wenner', 2, N'M         ', 1)
INSERT [dbo].[Artist] ([ArtistId], [Name], [BandId], [Sex], [IsActive]) VALUES (5, N'Ralph J. Gleason', 2, N'M         ', 1)
SET IDENTITY_INSERT [dbo].[Artist] OFF
SET IDENTITY_INSERT [dbo].[ArtistInTheShow] ON 

INSERT [dbo].[ArtistInTheShow] ([ArtistInTheShowId], [EventInfoId], [ArtistId], [BandId]) VALUES (1, 1, 1, 6)
INSERT [dbo].[ArtistInTheShow] ([ArtistInTheShowId], [EventInfoId], [ArtistId], [BandId]) VALUES (2, 1, 2, 6)
INSERT [dbo].[ArtistInTheShow] ([ArtistInTheShowId], [EventInfoId], [ArtistId], [BandId]) VALUES (3, 2, 4, 2)
INSERT [dbo].[ArtistInTheShow] ([ArtistInTheShowId], [EventInfoId], [ArtistId], [BandId]) VALUES (4, 2, 5, 2)
INSERT [dbo].[ArtistInTheShow] ([ArtistInTheShowId], [EventInfoId], [ArtistId], [BandId]) VALUES (5, 1, 3, 6)
SET IDENTITY_INSERT [dbo].[ArtistInTheShow] OFF
SET IDENTITY_INSERT [dbo].[Band] ON 

INSERT [dbo].[Band] ([BandId], [Name], [City]) VALUES (1, N'The Beatles', N'LIverpool')
INSERT [dbo].[Band] ([BandId], [Name], [City]) VALUES (2, N'The Rolling Stones', N'Dartford')
INSERT [dbo].[Band] ([BandId], [Name], [City]) VALUES (3, N'The Clash', N'London')
INSERT [dbo].[Band] ([BandId], [Name], [City]) VALUES (4, N'Oasis', N'Manchester')
INSERT [dbo].[Band] ([BandId], [Name], [City]) VALUES (5, N'The Who', N'London')
INSERT [dbo].[Band] ([BandId], [Name], [City]) VALUES (6, N'Queen', N'London')
SET IDENTITY_INSERT [dbo].[Band] OFF
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingId], [UserId], [EventId], [SeatingId]) VALUES (1, 1, 1, 2)
INSERT [dbo].[Booking] ([BookingId], [UserId], [EventId], [SeatingId]) VALUES (2, 2, 1, 1)
INSERT [dbo].[Booking] ([BookingId], [UserId], [EventId], [SeatingId]) VALUES (3, 1, 2, 2)
INSERT [dbo].[Booking] ([BookingId], [UserId], [EventId], [SeatingId]) VALUES (5, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[EventInfo] ON 

INSERT [dbo].[EventInfo] ([EventId], [Name], [BandId], [VenueId], [ShowDateTime]) VALUES (1, N'A Night at the Opera ', 6, 6, CAST(0x0000A39C0128A180 AS DateTime))
INSERT [dbo].[EventInfo] ([EventId], [Name], [BandId], [VenueId], [ShowDateTime]) VALUES (2, N'Inside the voice', 2, 9, CAST(0x0000A3C9014159A0 AS DateTime))
SET IDENTITY_INSERT [dbo].[EventInfo] OFF
SET IDENTITY_INSERT [dbo].[Pricing] ON 

INSERT [dbo].[Pricing] ([PriceId], [EventId], [SeatingId], [Price]) VALUES (1, 1, 1, 160.0000)
INSERT [dbo].[Pricing] ([PriceId], [EventId], [SeatingId], [Price]) VALUES (2, 1, 2, 100.0000)
INSERT [dbo].[Pricing] ([PriceId], [EventId], [SeatingId], [Price]) VALUES (3, 1, 3, 40.0000)
INSERT [dbo].[Pricing] ([PriceId], [EventId], [SeatingId], [Price]) VALUES (4, 2, 1, 250.0000)
INSERT [dbo].[Pricing] ([PriceId], [EventId], [SeatingId], [Price]) VALUES (5, 2, 1, 140.0000)
INSERT [dbo].[Pricing] ([PriceId], [EventId], [SeatingId], [Price]) VALUES (6, 2, 1, 50.0000)
SET IDENTITY_INSERT [dbo].[Pricing] OFF
SET IDENTITY_INSERT [dbo].[Seating] ON 

INSERT [dbo].[Seating] ([SeatingId], [Type]) VALUES (1, N'Stalls')
INSERT [dbo].[Seating] ([SeatingId], [Type]) VALUES (2, N'Circle Seating')
INSERT [dbo].[Seating] ([SeatingId], [Type]) VALUES (3, N'Balcony')
INSERT [dbo].[Seating] ([SeatingId], [Type]) VALUES (4, N'Box')
SET IDENTITY_INSERT [dbo].[Seating] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [FirstName], [LastName]) VALUES (1, N'Jayakumar', N'Mogenahalli')
INSERT [dbo].[User] ([UserId], [FirstName], [LastName]) VALUES (2, N'Phil', N'Bird')
INSERT [dbo].[User] ([UserId], [FirstName], [LastName]) VALUES (3, N'Arinderjit', N'Biswas')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Venue] ON 

INSERT [dbo].[Venue] ([VenueId], [Name], [Address], [City]) VALUES (1, N'LG Arena', N'Birmingham', N'Birmingham')
INSERT [dbo].[Venue] ([VenueId], [Name], [Address], [City]) VALUES (3, N'National Indoor Arena', N'Birmingham', N'Birmingham')
INSERT [dbo].[Venue] ([VenueId], [Name], [Address], [City]) VALUES (4, N'Bolton Arena', N'Bolton', N'Bolton')
INSERT [dbo].[Venue] ([VenueId], [Name], [Address], [City]) VALUES (5, N'Brighton Centre', N'Brighton', N'Brighton')
INSERT [dbo].[Venue] ([VenueId], [Name], [Address], [City]) VALUES (6, N'Royal Albert Hall', N'London', N'London')
INSERT [dbo].[Venue] ([VenueId], [Name], [Address], [City]) VALUES (8, N'The O2 Arena', N'London', N'London')
INSERT [dbo].[Venue] ([VenueId], [Name], [Address], [City]) VALUES (9, N'Wembley Arena', N'London', N'London')
SET IDENTITY_INSERT [dbo].[Venue] OFF
SET IDENTITY_INSERT [dbo].[VenueSeating] ON 

INSERT [dbo].[VenueSeating] ([VenueSeatingId], [SeatingId], [VenueId]) VALUES (1, 1, 6)
INSERT [dbo].[VenueSeating] ([VenueSeatingId], [SeatingId], [VenueId]) VALUES (2, 2, 6)
INSERT [dbo].[VenueSeating] ([VenueSeatingId], [SeatingId], [VenueId]) VALUES (3, 3, 6)
INSERT [dbo].[VenueSeating] ([VenueSeatingId], [SeatingId], [VenueId]) VALUES (4, 1, 9)
INSERT [dbo].[VenueSeating] ([VenueSeatingId], [SeatingId], [VenueId]) VALUES (5, 2, 9)
INSERT [dbo].[VenueSeating] ([VenueSeatingId], [SeatingId], [VenueId]) VALUES (6, 3, 9)
INSERT [dbo].[VenueSeating] ([VenueSeatingId], [SeatingId], [VenueId]) VALUES (7, 4, 9)
SET IDENTITY_INSERT [dbo].[VenueSeating] OFF
ALTER TABLE [dbo].[Artist]  WITH CHECK ADD  CONSTRAINT [FK_Artist_Band] FOREIGN KEY([BandId])
REFERENCES [dbo].[Band] ([BandId])
GO
ALTER TABLE [dbo].[Artist] CHECK CONSTRAINT [FK_Artist_Band]
GO
ALTER TABLE [dbo].[ArtistInTheShow]  WITH CHECK ADD  CONSTRAINT [FK_ArtistInTheShow_Artist] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artist] ([ArtistId])
GO
ALTER TABLE [dbo].[ArtistInTheShow] CHECK CONSTRAINT [FK_ArtistInTheShow_Artist]
GO
ALTER TABLE [dbo].[ArtistInTheShow]  WITH CHECK ADD  CONSTRAINT [FK_ArtistInTheShow_Band] FOREIGN KEY([BandId])
REFERENCES [dbo].[Band] ([BandId])
GO
ALTER TABLE [dbo].[ArtistInTheShow] CHECK CONSTRAINT [FK_ArtistInTheShow_Band]
GO
ALTER TABLE [dbo].[ArtistInTheShow]  WITH CHECK ADD  CONSTRAINT [FK_ArtistInTheShow_EventInfo] FOREIGN KEY([EventInfoId])
REFERENCES [dbo].[EventInfo] ([EventId])
GO
ALTER TABLE [dbo].[ArtistInTheShow] CHECK CONSTRAINT [FK_ArtistInTheShow_EventInfo]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_EventInfo] FOREIGN KEY([EventId])
REFERENCES [dbo].[EventInfo] ([EventId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_EventInfo]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Seating] FOREIGN KEY([SeatingId])
REFERENCES [dbo].[Seating] ([SeatingId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Seating]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User]
GO
ALTER TABLE [dbo].[EventInfo]  WITH CHECK ADD  CONSTRAINT [FK_EventInfo_Band] FOREIGN KEY([BandId])
REFERENCES [dbo].[Band] ([BandId])
GO
ALTER TABLE [dbo].[EventInfo] CHECK CONSTRAINT [FK_EventInfo_Band]
GO
ALTER TABLE [dbo].[EventInfo]  WITH CHECK ADD  CONSTRAINT [FK_EventInfo_Venue1] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venue] ([VenueId])
GO
ALTER TABLE [dbo].[EventInfo] CHECK CONSTRAINT [FK_EventInfo_Venue1]
GO
ALTER TABLE [dbo].[Pricing]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Seating] FOREIGN KEY([SeatingId])
REFERENCES [dbo].[Seating] ([SeatingId])
GO
ALTER TABLE [dbo].[Pricing] CHECK CONSTRAINT [FK_Pricing_Seating]
GO
ALTER TABLE [dbo].[VenueSeating]  WITH CHECK ADD  CONSTRAINT [FK_VenueSeating_Seating] FOREIGN KEY([SeatingId])
REFERENCES [dbo].[Seating] ([SeatingId])
GO
ALTER TABLE [dbo].[VenueSeating] CHECK CONSTRAINT [FK_VenueSeating_Seating]
GO
ALTER TABLE [dbo].[VenueSeating]  WITH CHECK ADD  CONSTRAINT [FK_VenueSeating_Venue] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venue] ([VenueId])
GO
ALTER TABLE [dbo].[VenueSeating] CHECK CONSTRAINT [FK_VenueSeating_Venue]
GO
