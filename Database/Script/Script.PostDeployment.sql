/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

DELETE FROM [Bookings]
DELETE FROM [TourEvents]
DELETE FROM [Tours]
DELETE FROM [Clients]

INSERT INTO [Clients] ([ClientId], [Surname], [GivenName], [Gender]) VALUES
(1, 'Price', 'Taylor', 'M'),
(2, 'Gamble', 'Ellyse', 'F'),
(3, 'Tan', 'Tilly', 'F');


INSERT INTO [Tours] ([TourName], [Description]) VALUES
('West', 'Tour of wineries and outlets of the Geelong and Otways region'),
('East', 'Tour of wineries and outlets of the Yarra Valley'),
('South', 'Tour of wineries and outlets of Mornington Penisula'),
('North', 'Tour of wineries and outlets of the Bedigo and Castlemaine region');


INSERT INTO [TourEvents] ([TourName], [EventDate], [EventFee]) VALUES
('North', '2016/01/09', $200.00),
('North', '2016/02/13', $225.00),
('South', '2016/01/16', $200.00),
('West', '2016/01/29', $225.00);

INSERT INTO [Bookings] ([ClientId], [TourName], [EventDate], [Payment], [DateBooked]) VALUES
(1, 'North', '2016/01/09', $200.00, '2015/12/10'),
(2, 'North', '2016/01/09', $200.00, '2015/12/16'),
(1, 'North', '2016/02/13', $225.00, '2016/01/08'),
(2, 'North', '2016/02/13', $225.00, '2016/01/14'),
(3, 'North', '2016/02/13', $225.00, '2016/02/3'),
(1, 'South', '2016/01/16', $200.00, '2015/12/10'),
(2, 'South', '2016/01/16', $200.00, '2015/12/18'),
(3, 'South', '2016/01/16', $200.00, '2016/01/09'),
(2, 'West', '2016/01/29', $200.00, '2015/12/17'),
(3, 'West', '2016/01/29', $200.00, '2015/12/18');
