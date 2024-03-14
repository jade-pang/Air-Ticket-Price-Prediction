-- Create Bookings Table
CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY,
    Flight_ID INT,
    Passenger_Name VARCHAR(255),
    Additional_Info TEXT,
    FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID)
);
