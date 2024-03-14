-- View to show all flights from a specific source to destination
CREATE VIEW Flights_From_To AS
SELECT * FROM Flights
WHERE Source = 'YourSource' AND Destination = 'YourDestination';

-- Query to find the cheapest flight for a route
-- Replace 'YourSource' and 'YourDestination' with actual values
SELECT * FROM Flights
WHERE Source = 'YourSource' AND Destination = 'YourDestination'
ORDER BY Price ASC;
