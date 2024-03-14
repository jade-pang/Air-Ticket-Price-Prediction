-- Query to find flights based on source and destination
SELECT * FROM Flights
WHERE Source = 'Toronto' AND Destination = 'New York';

-- Query to calculate average price of flights for each airline
SELECT Airline_ID, AVG(Price) AS Average_Price
FROM Flights
GROUP BY Airline_ID;

-- Query to find total duration of flights for each airline
SELECT Airline_ID, SUM(Duration) AS Total_Duration
FROM Flights
GROUP BY Airline_ID;

-- Query to list all bookings with additional info
SELECT Booking_ID, Flight_ID, Additional_Info
FROM Bookings;
