-- Query to find bookings with specific additional information
SELECT Booking_ID, Flight_ID, Additional_Info
FROM Bookings
WHERE Additional_Info LIKE '%extra baggage%';

-- Query to count the number of bookings with each type of additional information
SELECT Additional_Info, COUNT(*) AS Info_Count
FROM Bookings
GROUP BY Additional_Info;

-- View for Bookings with Additional Info
CREATE VIEW Bookings_With_Additional_Info AS
SELECT b.Booking_ID, f.Flight_ID, b.Additional_Info
FROM Bookings b
JOIN Flights f ON b.Flight_ID = f.Flight_ID
WHERE b.Additional_Info IS NOT NULL AND b.Additional_Info != '';

-- View for Detailed Flight Information with Additional Booking Info
CREATE VIEW Detailed_Flight_Bookings AS
SELECT f.Flight_ID, a.Name AS Airline_Name, f.Source, f.Destination, f.Date_of_Journey, f.Dep_Time, f.Arrival_Time, f.Duration, f.Total_Stops, f.Price, b.Additional_Info
FROM Flights f
JOIN Airlines a ON f.Airline_ID = a.Airline_ID
JOIN Bookings b ON f.Flight_ID = b.Flight_ID;
