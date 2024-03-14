-- View for Available Flights
CREATE VIEW Available_Flights AS
SELECT Flight_ID, Source, Destination, Date_of_Journey, Dep_Time, Arrival_Time, Duration, Total_Stops, Price
FROM Flights
WHERE Date_of_Journey >= CURRENT_DATE;

-- View for Airline Details
CREATE VIEW Airline_Details AS
SELECT Airline_ID, Name
FROM Airlines;
