-- 1. Passenger
create database Airline_Resevation;
use Airline_Resevation;
CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(20),
    Address VARCHAR(100)
);

INSERT INTO Passenger VALUES
(1, 'Alice Johnson', 'alice@example.com', '1234567890', '123 Main St'),
(2, 'Bob Smith', 'bob@example.com', '2345678901', '456 Oak Ave'),
(3, 'Charlie Brown', 'charlie@example.com', '3456789012', '789 Pine Rd'),
(4, 'Diana Prince', 'diana@example.com', '4567890123', '101 Maple Ln'),
(5, 'Ethan Hunt', 'ethan@example.com', '5678901234', '202 Cedar St'),
(6, 'Fiona Glenanne', 'fiona@example.com', '6789012345', '303 Birch Blvd'),
(7, 'George Clooney', 'george@example.com', '7890123456', '404 Spruce Dr'),
(8, 'Hannah Montana', 'hannah@example.com', '8901234567', '505 Elm St'),
(9, 'Ian Somerhalder', 'ian@example.com', '9012345678', '606 Walnut Ave'),
(10, 'Julia Roberts', 'julia@example.com', '0123456789', '707 Cherry St'),
(11, 'Kevin Bacon', 'kevin@example.com', '1123456789', '808 Fir St'),
(12, 'Laura Palmer', 'laura@example.com', '2123456789', '909 Ash Rd'),
(13, 'Michael Scott', 'michael@example.com', '3123456789', '1010 Oak St'),
(14, 'Nina Dobrev', 'nina@example.com', '4123456789', '1111 Pine Ave'),
(15, 'Oscar Wilde', 'oscar@example.com', '5123456789', '1212 Maple Dr');


-- 2. Flight
CREATE TABLE Flight (
    FlightID INT PRIMARY KEY,
    DepartureCity VARCHAR(50),
    ArrivalCity VARCHAR(50),
    DepartureTime TIME,
    ArrivalTime TIME
);

INSERT INTO Flight VALUES
(1, 'New York', 'Los Angeles', '08:00:00', '11:00:00'),
(2, 'Chicago', 'Miami', '09:00:00', '13:00:00'),
(3, 'Dallas', 'San Francisco', '07:30:00', '10:30:00'),
(4, 'Boston', 'Seattle', '10:00:00', '14:00:00'),
(5, 'Houston', 'Denver', '06:45:00', '09:45:00'),
(6, 'Atlanta', 'New Orleans', '12:00:00', '13:30:00'),
(7, 'San Diego', 'Las Vegas', '15:00:00', '16:00:00'),
(8, 'Orlando', 'Philadelphia', '11:00:00', '14:00:00'),
(9, 'Phoenix', 'Portland', '13:00:00', '15:00:00'),
(10, 'Detroit', 'Minneapolis', '14:30:00', '16:00:00'),
(11, 'San Jose', 'Austin', '09:15:00', '12:15:00'),
(12, 'Memphis', 'Charlotte', '07:00:00', '09:30:00'),
(13, 'Indianapolis', 'Cleveland', '10:45:00', '12:00:00'),
(14, 'St. Louis', 'Kansas City', '08:30:00', '09:45:00'),
(15, 'Raleigh', 'Nashville', '13:30:00', '15:00:00');


-- 3. Airport
CREATE TABLE Airport (
    AirportID INT PRIMARY KEY,
    AirportName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50),
    IATA_Code VARCHAR(10)
);

INSERT INTO Airport VALUES
(1, 'John F Kennedy International', 'New York', 'USA', 'JFK'),
(2, 'Los Angeles International', 'Los Angeles', 'USA', 'LAX'),
(3, 'O\'Hare International', 'Chicago', 'USA', 'ORD'),
(4, 'Miami International', 'Miami', 'USA', 'MIA'),
(5, 'Dallas Fort Worth', 'Dallas', 'USA', 'DFW'),
(6, 'San Francisco International', 'San Francisco', 'USA', 'SFO'),
(7, 'Boston Logan', 'Boston', 'USA', 'BOS'),
(8, 'Seattle-Tacoma', 'Seattle', 'USA', 'SEA'),
(9, 'Denver International', 'Denver', 'USA', 'DEN'),
(10, 'Hartsfield-Jackson Atlanta', 'Atlanta', 'USA', 'ATL'),
(11, 'Orlando International', 'Orlando', 'USA', 'MCO'),
(12, 'Phoenix Sky Harbor', 'Phoenix', 'USA', 'PHX'),
(13, 'Portland International', 'Portland', 'USA', 'PDX'),
(14, 'Detroit Metropolitan', 'Detroit', 'USA', 'DTW'),
(15, 'Minneapolis–St Paul', 'Minneapolis', 'USA', 'MSP');


-- 4. Airline
CREATE TABLE Airline (
    AirlineID INT PRIMARY KEY,
    AirlineName VARCHAR(50),
    ContactNumber VARCHAR(20),
    Headquarters VARCHAR(50),
    Website VARCHAR(50)
);

INSERT INTO Airline VALUES
(1, 'AirOne', '111-222-3333', 'New York', 'www.airone.com'),
(2, 'SkyJet', '222-333-4444', 'Chicago', 'www.skyjet.com'),
(3, 'FlyHigh', '333-444-5555', 'Los Angeles', 'www.flyhigh.com'),
(4, 'AeroMax', '444-555-6666', 'Dallas', 'www.aeromax.com'),
(5, 'CloudNine', '555-666-7777', 'Miami', 'www.cloudnine.com'),
(6, 'JetSpeed', '666-777-8888', 'San Francisco', 'www.jetspeed.com'),
(7, 'AirWave', '777-888-9999', 'Boston', 'www.airwave.com'),
(8, 'GlobalAir', '888-999-0000', 'Seattle', 'www.globalair.com'),
(9, 'SunRise', '999-000-1111', 'Denver', 'www.sunrise.com'),
(10, 'StarFly', '000-111-2222', 'Atlanta', 'www.starfly.com'),
(11, 'EagleAir', '111-333-5555', 'Orlando', 'www.eagleair.com'),
(12, 'RedWing', '222-444-6666', 'Phoenix', 'www.redwing.com'),
(13, 'BlueSky', '333-555-7777', 'Portland', 'www.bluesky.com'),
(14, 'AeroStar', '444-666-8888', 'Detroit', 'www.aerostar.com'),
(15, 'SkyBound', '555-777-9999', 'Minneapolis', 'www.skybound.com');


-- 5. Booking
CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    PassengerID INT, -- FK to Passenger
    FlightID INT,    -- FK to Flight
    BookingDate DATE,
    SeatNumber VARCHAR(10)
);

INSERT INTO Booking VALUES
(1, 1, 1, '2025-03-01', '12A'),
(2, 2, 2, '2025-03-02', '14B'),
(3, 3, 3, '2025-03-03', '16C'),
(4, 4, 4, '2025-03-04', '18D'),
(5, 5, 5, '2025-03-05', '20E'),
(6, 6, 6, '2025-03-06', '22F'),
(7, 7, 7, '2025-03-07', '24A'),
(8, 8, 8, '2025-03-08', '26B'),
(9, 9, 9, '2025-03-09', '28C'),
(10, 10, 10, '2025-03-10', '30D'),
(11, 11, 11, '2025-03-11', '32E'),
(12, 12, 12, '2025-03-12', '34F'),
(13, 13, 13, '2025-03-13', '36A'),
(14, 14, 14, '2025-03-14', '38B'),
(15, 15, 15, '2025-03-15', '40C');


-- 6. Ticket
CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY,
    BookingID INT,  -- FK to Booking
    TicketPrice DECIMAL(8,2),
    TicketStatus VARCHAR(20),
    PaymentMethod VARCHAR(20)
);

INSERT INTO Ticket VALUES
(1, 1, 300.00, 'Confirmed', 'Credit Card'),
(2, 2, 350.00, 'Confirmed', 'Debit Card'),
(3, 3, 400.00, 'Confirmed', 'PayPal'),
(4, 4, 450.00, 'Confirmed', 'Credit Card'),
(5, 5, 500.00, 'Confirmed', 'Debit Card'),
(6, 6, 320.00, 'Confirmed', 'PayPal'),
(7, 7, 360.00, 'Confirmed', 'Credit Card'),
(8, 8, 380.00, 'Confirmed', 'Debit Card'),
(9, 9, 410.00, 'Confirmed', 'PayPal'),
(10, 10, 430.00, 'Confirmed', 'Credit Card'),
(11, 11, 470.00, 'Confirmed', 'Debit Card'),
(12, 12, 490.00, 'Confirmed', 'PayPal'),
(13, 13, 520.00, 'Confirmed', 'Credit Card'),
(14, 14, 540.00, 'Confirmed', 'Debit Card'),
(15, 15, 560.00, 'Confirmed', 'PayPal');


-- 7. Seat
CREATE TABLE Seat (
    SeatID INT PRIMARY KEY,
    FlightID INT,    -- FK to Flight
    SeatNumber VARCHAR(10),
    SeatClass VARCHAR(20),
    Availability VARCHAR(20)
);

INSERT INTO Seat VALUES
(1, 1, '12A', 'Economy', 'Available'),
(2, 1, '12B', 'Economy', 'Booked'),
(3, 2, '14A', 'Business', 'Available'),
(4, 2, '14B', 'Business', 'Booked'),
(5, 3, '16A', 'Economy', 'Available'),
(6, 3, '16B', 'Economy', 'Booked'),
(7, 4, '18A', 'First', 'Available'),
(8, 4, '18B', 'First', 'Booked'),
(9, 5, '20A', 'Economy', 'Available'),
(10, 5, '20B', 'Economy', 'Booked'),
(11, 6, '22A', 'Business', 'Available'),
(12, 6, '22B', 'Business', 'Booked'),
(13, 7, '24A', 'Economy', 'Available'),
(14, 7, '24B', 'Economy', 'Booked'),
(15, 8, '26A', 'Economy', 'Available');


-- 8. Payment
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    BookingID INT,  -- FK to Booking
    Amount DECIMAL(8,2),
    PaymentDate DATE,
    PaymentStatus VARCHAR(20)
);

INSERT INTO Payment VALUES
(1, 1, 300.00, '2025-03-01', 'Completed'),
(2, 2, 350.00, '2025-03-02', 'Completed'),
(3, 3, 400.00, '2025-03-03', 'Completed'),
(4, 4, 450.00, '2025-03-04', 'Completed'),
(5, 5, 500.00, '2025-03-05', 'Completed'),
(6, 6, 320.00, '2025-03-06', 'Completed'),
(7, 7, 360.00, '2025-03-07', 'Completed'),
(8, 8, 380.00, '2025-03-08', 'Completed'),
(9, 9, 410.00, '2025-03-09', 'Completed'),
(10, 10, 430.00, '2025-03-10', 'Completed'),
(11, 11, 470.00, '2025-03-11', 'Completed'),
(12, 12, 490.00, '2025-03-12', 'Completed'),
(13, 13, 520.00, '2025-03-13', 'Completed'),
(14, 14, 540.00, '2025-03-14', 'Completed'),
(15, 15, 560.00, '2025-03-15', 'Completed');


-- 9. Baggage
CREATE TABLE Baggage (
    BaggageID INT PRIMARY KEY,
    PassengerID INT, -- FK to Passenger
    FlightID INT,    -- FK to Flight
    Weight DECIMAL(5,2),
    BaggageStatus VARCHAR(20)
);

INSERT INTO Baggage VALUES
(1, 1, 1, 15.50, 'Checked'),
(2, 2, 2, 18.00, 'Checked'),
(3, 3, 3, 20.25, 'Checked'),
(4, 4, 4, 16.75, 'Checked'),
(5, 5, 5, 22.00, 'Checked'),
(6, 6, 6, 19.50, 'Checked'),
(7, 7, 7, 17.00, 'Checked'),
(8, 8, 8, 21.30, 'Checked'),
(9, 9, 9, 16.00, 'Checked'),
(10, 10, 10, 18.25, 'Checked'),
(11, 11, 11, 20.00, 'Checked'),
(12, 12, 12, 15.75, 'Checked'),
(13, 13, 13, 19.80, 'Checked'),
(14, 14, 14, 17.50, 'Checked'),
(15, 15, 15, 21.00, 'Checked');


-- 10. Crew
CREATE TABLE Crew (
    CrewID INT PRIMARY KEY,
    Name VARCHAR(50),
    Role VARCHAR(20),
    AirlineID INT,  -- FK to Airline
    FlightID INT    -- FK to Flight
);

INSERT INTO Crew VALUES
(1, 'Captain Morgan', 'Pilot', 1, 1),
(2, 'First Officer Lee', 'Co-Pilot', 1, 1),
(3, 'Captain Carter', 'Pilot', 2, 2),
(4, 'First Officer Kim', 'Co-Pilot', 2, 2),
(5, 'Captain Smith', 'Pilot', 3, 3),
(6, 'First Officer Adams', 'Co-Pilot', 3, 3),
(7, 'Captain Davis', 'Pilot', 4, 4),
(8, 'First Officer Wong', 'Co-Pilot', 4, 4),
(9, 'Captain Brown', 'Pilot', 5, 5),
(10, 'First Officer Patel', 'Co-Pilot', 5, 5),
(11, 'Captain Garcia', 'Pilot', 6, 6),
(12, 'First Officer Rossi', 'Co-Pilot', 6, 6),
(13, 'Captain Nguyen', 'Pilot', 7, 7),
(14, 'First Officer Singh', 'Co-Pilot', 7, 7),
(15, 'Captain Lopez', 'Pilot', 8, 8);


-- 11. Schedule
CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY,
    FlightID INT, -- FK to Flight
    DepartureDate DATE,
    ArrivalDate DATE,
    Status VARCHAR(20)
);

INSERT INTO Schedule VALUES
(1, 1, '2025-03-01', '2025-03-01', 'On Time'),
(2, 2, '2025-03-02', '2025-03-02', 'On Time'),
(3, 3, '2025-03-03', '2025-03-03', 'On Time'),
(4, 4, '2025-03-04', '2025-03-04', 'On Time'),
(5, 5, '2025-03-05', '2025-03-05', 'On Time'),
(6, 6, '2025-03-06', '2025-03-06', 'On Time'),
(7, 7, '2025-03-07', '2025-03-07', 'On Time'),
(8, 8, '2025-03-08', '2025-03-08', 'On Time'),
(9, 9, '2025-03-09', '2025-03-09', 'On Time'),
(10, 10, '2025-03-10', '2025-03-10', 'On Time'),
(11, 11, '2025-03-11', '2025-03-11', 'On Time'),
(12, 12, '2025-03-12', '2025-03-12', 'On Time'),
(13, 13, '2025-03-13', '2025-03-13', 'On Time'),
(14, 14, '2025-03-14', '2025-03-14', 'On Time'),
(15, 15, '2025-03-15', '2025-03-15', 'On Time');


-- 12. Promotion
CREATE TABLE Promotion (
    PromotionID INT PRIMARY KEY,
    AirlineID INT,  -- FK to Airline
    DiscountCode VARCHAR(20),
    ValidFrom DATE,
    ValidTo DATE
);

INSERT INTO Promotion VALUES
(1, 1, 'AIR1SAVE10', '2025-01-01', '2025-12-31'),
(2, 2, 'SKYJET20', '2025-01-01', '2025-12-31'),
(3, 3, 'FLYHIGH15', '2025-01-01', '2025-12-31'),
(4, 4, 'AEROMAX25', '2025-01-01', '2025-12-31'),
(5, 5, 'CLOUDNINE30', '2025-01-01', '2025-12-31'),
(6, 6, 'JETSPED5', '2025-01-01', '2025-12-31'),
(7, 7, 'AIRWAVE10', '2025-01-01', '2025-12-31'),
(8, 8, 'GLOBALAIR20', '2025-01-01', '2025-12-31'),
(9, 9, 'SUNRISE15', '2025-01-01', '2025-12-31'),
(10, 10, 'STARFLY25', '2025-01-01', '2025-12-31'),
(11, 11, 'EAGLEAIR30', '2025-01-01', '2025-12-31'),
(12, 12, 'REDWING5', '2025-01-01', '2025-12-31'),
(13, 13, 'BLUESKY10', '2025-01-01', '2025-12-31'),
(14, 14, 'AEROSTAR20', '2025-01-01', '2025-12-31'),
(15, 15, 'SKYBOUND15', '2025-01-01', '2025-12-31');


-- 13. LoyaltyProgram
CREATE TABLE LoyaltyProgram (
    LoyaltyID INT PRIMARY KEY,
    PassengerID INT, -- FK to Passenger
    Points INT,
    Tier VARCHAR(20),
    ExpiryDate DATE
);

INSERT INTO LoyaltyProgram VALUES
(1, 1, 1000, 'Silver', '2025-12-31'),
(2, 2, 1500, 'Gold', '2025-12-31'),
(3, 3, 1200, 'Silver', '2025-12-31'),
(4, 4, 1800, 'Gold', '2025-12-31'),
(5, 5, 2000, 'Platinum', '2025-12-31'),
(6, 6, 1100, 'Silver', '2025-12-31'),
(7, 7, 1600, 'Gold', '2025-12-31'),
(8, 8, 1300, 'Silver', '2025-12-31'),
(9, 9, 1700, 'Gold', '2025-12-31'),
(10, 10, 1900, 'Platinum', '2025-12-31'),
(11, 11, 1400, 'Silver', '2025-12-31'),
(12, 12, 2100, 'Platinum', '2025-12-31'),
(13, 13, 2200, 'Platinum', '2025-12-31'),
(14, 14, 1250, 'Silver', '2025-12-31'),
(15, 15, 1350, 'Silver', '2025-12-31');


-- 14. CheckIn
CREATE TABLE CheckIn (
    CheckInID INT PRIMARY KEY,
    PassengerID INT, -- FK to Passenger
    FlightID INT,    -- FK to Flight
    CheckInTime TIME,
    CheckInStatus VARCHAR(20)
);

INSERT INTO CheckIn VALUES
(1, 1, 1, '07:30:00', 'Completed'),
(2, 2, 2, '08:30:00', 'Completed'),
(3, 3, 3, '07:00:00', 'Completed'),
(4, 4, 4, '09:30:00', 'Completed'),
(5, 5, 5, '06:15:00', 'Completed'),
(6, 6, 6, '11:30:00', 'Completed'),
(7, 7, 7, '14:30:00', 'Completed'),
(8, 8, 8, '10:30:00', 'Completed'),
(9, 9, 9, '12:30:00', 'Completed'),
(10, 10, 10, '13:30:00', 'Completed'),
(11, 11, 11, '08:15:00', 'Completed'),
(12, 12, 12, '07:45:00', 'Completed'),
(13, 13, 13, '10:00:00', 'Completed'),
(14, 14, 14, '08:45:00', 'Completed'),
(15, 15, 15, '12:00:00', 'Completed');


-- 15. Cancellation
CREATE TABLE Cancellation (
    CancellationID INT PRIMARY KEY,
    BookingID INT,  -- FK to Booking
    CancellationDate DATE,
    RefundAmount DECIMAL(8,2),
    CancellationReason VARCHAR(100)
);

INSERT INTO Cancellation VALUES
(1, 1, '2025-03-02', 300.00, 'Change of plans'),
(2, 2, '2025-03-03', 350.00, 'Personal reasons'),
(3, 3, '2025-03-04', 400.00, 'Health issues'),
(4, 4, '2025-03-05', 450.00, 'Weather concerns'),
(5, 5, '2025-03-06', 500.00, 'Schedule conflict'),
(6, 6, '2025-03-07', 320.00, 'Change of plans'),
(7, 7, '2025-03-08', 360.00, 'Personal reasons'),
(8, 8, '2025-03-09', 380.00, 'Health issues'),
(9, 9, '2025-03-10', 410.00, 'Weather concerns'),
(10, 10, '2025-03-11', 430.00, 'Schedule conflict'),
(11, 11, '2025-03-12', 470.00, 'Change of plans'),
(12, 12, '2025-03-13', 490.00, 'Personal reasons'),
(13, 13, '2025-03-14', 520.00, 'Health issues'),
(14, 14, '2025-03-15', 540.00, 'Weather concerns'),
(15, 15, '2025-03-16', 560.00, 'Schedule conflict');

select * from Passenger;
select * from Flight;
select * from Airport;
select * from Airline;
select * from Booking;
select * from Ticket ;
select * from Seat;
select * from Baggage;
select * from Crew;
select * from Payment;
select * from Schedule;
select * from Promotion;
select * from  LoyaltyProgram  ;
select * from CheckIn;
select * from Cancellation ;
