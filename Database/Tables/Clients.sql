CREATE TABLE [dbo].[Clients]
(
	[ClientId] INT NOT NULL,
	[Surname] CHAR(20) NOT NULL,
	[GivenName] CHAR(20) NOT NULL,
	[Gender] CHAR(1) NOT NULL,
	CONSTRAINT [PK_Client] PRIMARY KEY ([ClientId]) 
)
