CREATE TABLE [dbo].[TourEvents]
(
	[TourName] CHAR(10) NOT NULL,
	[EventDate] DATE NOT NULL,
	[EventFee] MONEY NOT NULL,
	CONSTRAINT [PK_Event] PRIMARY KEY (EventDate),
	CONSTRAINT [FK_Event] FOREIGN KEY ([TourName]) REFERENCES [Tours]([TourName])
)
