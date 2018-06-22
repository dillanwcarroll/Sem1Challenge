CREATE TABLE [dbo].[Bookings]
(
	[ClientId] INT NOT NULL,
	[TourName] CHAR(10) NOT NULL,
	[EventDate] DATE NOT NULL,
	[Payment] MONEY NOT NULL,
	[DateBooked] DATE NOT NULL,
	CONSTRAINT [PK_Booking] PRIMARY KEY ([DateBooked], [ClientId]),
	CONSTRAINT [FK_Booking_Client] FOREIGN KEY ([ClientId]) REFERENCES [Clients]([ClientId]),
	CONSTRAINT [FK_Booking_EventDate] FOREIGN KEY ([EventDate]) REFERENCES [TourEvents]([EventDate]),
	CONSTRAINT [FK_Booking_TourName] FOREIGN KEY ([TourName]) REFERENCES [Tours]([TourName]) 
)
