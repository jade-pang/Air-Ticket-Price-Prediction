-- Create Airlines Table
CREATE TABLE Airlines (
    Airline_ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create Flights Table
CREATE TABLE Flights (
    Flight_ID INT PRIMARY KEY,
    Airline_ID INT,
    Date_of_Journey DATE,
    Source VARCHAR(255),
    Destination VARCHAR(255),
    Route TEXT,
    Dep_Time TIME,
    Arrival_Time TIME,
    Duration INT,
    Total_Stops INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (Airline_ID) REFERENCES Airlines(Airline_ID)
);

-- Create Bookings Table
CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY,
    Flight_ID INT,
    Passenger_Name VARCHAR(255),
    Additional_Info TEXT,
    FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID)
);
