
-- DATABASE


CREATE DATABASE Smart_EV_Charging_System;
USE Smart_EV_Charging_System;


-- 1. ROLES


CREATE TABLE Roles(
    RoleID INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL UNIQUE
);


-- 2. USERS


CREATE TABLE Users(
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    RoleID INT NOT NULL,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15) UNIQUE,
    PasswordHash VARCHAR(255),
    Address VARCHAR(200),
    WalletBalance DECIMAL(10,2) DEFAULT 0,
    IsActive BOOLEAN DEFAULT TRUE,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY(RoleID)
    REFERENCES Roles(RoleID)
);


-- 3. MEMBERSHIP PLANS


CREATE TABLE MembershipPlans(
    PlanID INT AUTO_INCREMENT PRIMARY KEY,
    PlanName VARCHAR(100),
    Description VARCHAR(200),
    Price DECIMAL(10,2),
    DurationDays INT,
    DiscountPercent DECIMAL(5,2),
    IsActive BOOLEAN DEFAULT TRUE
);


-- 4. USER MEMBERSHIPS


CREATE TABLE UserMemberships(
    MembershipID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    PlanID INT,
    StartDate DATE,
    EndDate DATE,
    Status ENUM('Active','Expired','Cancelled'),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(UserID)
    REFERENCES Users(UserID),

    FOREIGN KEY(PlanID)
    REFERENCES MembershipPlans(PlanID)
);


-- 5. EV VEHICLES


CREATE TABLE EVVehicles(
    VehicleID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Make VARCHAR(50),
    Model VARCHAR(50),
    RegistrationNumber VARCHAR(30) UNIQUE,
    BatteryCapacityKWh DECIMAL(6,2),
    ConnectorType VARCHAR(30),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(UserID)
    REFERENCES Users(UserID)
);


-- 6. CHARGING STATIONS


CREATE TABLE ChargingStations(
    StationID INT AUTO_INCREMENT PRIMARY KEY,
    OperatorID INT,
    StationName VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(100),
    State VARCHAR(100),
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6),
    Amenities VARCHAR(255),
    Status ENUM('Active','Inactive','UnderMaintenance'),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(OperatorID)
    REFERENCES Users(UserID)
);


-- 7. CHARGERS


CREATE TABLE Chargers(
    ChargerID INT AUTO_INCREMENT PRIMARY KEY,
    StationID INT,
    ChargerCode VARCHAR(30),
    ChargerType ENUM('AC','DC'),
    ConnectorType VARCHAR(30),
    PowerOutputKW DECIMAL(6,2),
    Status ENUM('Available','InUse','Offline','UnderMaintenance'),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(StationID)
    REFERENCES ChargingStations(StationID)
);


-- 8. TARIFFS


CREATE TABLE Tariffs(
    TariffID INT AUTO_INCREMENT PRIMARY KEY,
    ChargerID INT,
    PlanID INT,
    PricePerKWh DECIMAL(6,2),
    PricePerMinute DECIMAL(6,2),
    TimeSlotStart TIME,
    TimeSlotEnd TIME,
    EffectiveFrom DATE,
    EffectiveTo DATE,
    FOREIGN KEY(ChargerID)
    REFERENCES Chargers(ChargerID),
    FOREIGN KEY(PlanID)
    REFERENCES MembershipPlans(PlanID)
);


-- 9. BOOKINGS

CREATE TABLE Bookings(
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    VehicleID INT,
    ChargerID INT,
    BookingDate DATE,
    StartTime DATETIME,
    EndTime DATETIME,
    Status ENUM('Pending','Confirmed','Cancelled','Completed','NoShow'),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(UserID) REFERENCES Users(UserID),
    FOREIGN KEY(VehicleID) REFERENCES EVVehicles(VehicleID),
    FOREIGN KEY(ChargerID) REFERENCES Chargers(ChargerID)
);


-- 10. CHARGING SESSIONS

CREATE TABLE ChargingSessions(
    SessionID INT AUTO_INCREMENT PRIMARY KEY,
    BookingID INT,
    UserID INT,
    VehicleID INT,
    ChargerID INT,
    StartTime DATETIME,
    EstimatedCompletionTime DATETIME,
    EndTime DATETIME,
    EnergyDeliveredKWh DECIMAL(8,3),
    Status ENUM('InProgress','Completed','Interrupted','Failed'),

    FOREIGN KEY(BookingID) REFERENCES Bookings(BookingID),
    FOREIGN KEY(UserID) REFERENCES Users(UserID),
    FOREIGN KEY(VehicleID) REFERENCES EVVehicles(VehicleID),
    FOREIGN KEY(ChargerID) REFERENCES Chargers(ChargerID)
);


-- 11. CHARGING SESSION STATUS


CREATE TABLE ChargingSessionStatus(
    StatusID INT AUTO_INCREMENT PRIMARY KEY,
    SessionID INT,
    BatteryPercentage DECIMAL(5,2),
    ChargingPowerKW DECIMAL(6,2),
    RemainingTimeMinutes INT,
    TimeStamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(SessionID) REFERENCES ChargingSessions(SessionID)
);

-- 12. PAYMENTS

CREATE TABLE Payments(
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    SessionID INT,
    MembershipID INT,
    Amount DECIMAL(10,2),
    PaymentMethod ENUM('Wallet','Card','UPI','NetBanking','Cash'),
    PaymentStatus ENUM('Pending','Success','Failed','Refunded'),
    TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(UserID) REFERENCES Users(UserID),
    FOREIGN KEY(SessionID) REFERENCES ChargingSessions(SessionID),
    FOREIGN KEY(MembershipID) REFERENCES UserMemberships(MembershipID)
);


-- 13. WALLET TRANSACTIONS

CREATE TABLE WalletTransactions(
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Type ENUM('Recharge','Debit','Refund'),
    Amount DECIMAL(10,2),
    BalanceAfter DECIMAL(10,2),
    ReferenceID INT,
    TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(UserID) REFERENCES Users(UserID)
);


-- 14. REVIEWS


CREATE TABLE Reviews(
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    StationID INT,
    Rating TINYINT CHECK(Rating BETWEEN 1 AND 5),
    Comment VARCHAR(500),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(UserID) REFERENCES Users(UserID),
    FOREIGN KEY(StationID) REFERENCES ChargingStations(StationID)
);

-- 15. MAINTENANCE


CREATE TABLE Maintenance(
    MaintenanceID INT AUTO_INCREMENT PRIMARY KEY,
    ChargerID INT,
    IssueDescription VARCHAR(500),
    ScheduledDate DATE,
    CompletedDate DATE,
    Status ENUM('Scheduled','InProgress','Completed','Cancelled'),
    TechnicianName VARCHAR(100),
    FOREIGN KEY(ChargerID) REFERENCES Chargers(ChargerID)
);


-- 16. NOTIFICATIONS


CREATE TABLE Notifications(
    NotificationID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Title VARCHAR(150),
    Message VARCHAR(500),
    Type VARCHAR(50),
    IsRead BOOLEAN DEFAULT FALSE,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(UserID) REFERENCES Users(UserID)
);


-- 17. LOGIN HISTORY

CREATE TABLE LoginHistory(
    LoginID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    LoginTime DATETIME DEFAULT CURRENT_TIMESTAMP,
    LogoutTime DATETIME,
    IPAddress VARCHAR(45),
    DeviceInfo VARCHAR(255),
    Status ENUM('Success','Failed'),
    FOREIGN KEY(UserID) REFERENCES Users(UserID)
);


-- 18. AUDIT LOGS


CREATE TABLE AuditLogs(
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Action VARCHAR(100),
    TableAffected VARCHAR(100),
    RecordID INT,
    Details VARCHAR(500),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(UserID) REFERENCES Users(UserID)
);






