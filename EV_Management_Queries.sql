USE Smart_EV_Charging_System;

-- Level 1 ( EASY )
-- 1. Display all details of every registered user in the system.

SELECT *
FROM Users;

-- 2. Display only the full name and email address of all users.

select FullName,Email from Users;

-- 3. Display the user's full name as Customer Name and wallet balance as Wallet Amount.

select FullName as 'Customer_Name', WalletBalance as 'Walltet_amount'
from users;

-- 4. Display users whose wallet balance is greater than ₹1000.

SELECT * FROM Users
WHERE WalletBalance > 1000;

-- 5. Display all users whose RoleID is 3 (Customer).

SELECT * FROM Users
WHERE RoleID = 3;

-- 6. Display vehicles whose battery capacity is between 30 kWh and 60 kWh.

SELECT * FROM EVVehicles
WHERE BatteryCapacityKWh BETWEEN 30 AND 60;

-- 7. Display users whose address contains the word Visakhapatnam.

SELECT * FROM Users
WHERE Address LIKE '%Visakhapatnam%';

-- 8. Display all unique charger types available in the system.

SELECT DISTINCT ChargerType
FROM Chargers;

-- 9. Display the five highest electricity tariffs based on price per kWh.

SELECT * FROM Tariffs
ORDER BY PricePerKWh DESC
LIMIT 5;

-- 10. Display all chargers in ascending order of their power output.

SELECT * FROM Chargers
ORDER BY PowerOutputKW;

-- 11. Find the total number of registered users.

SELECT COUNT(*) AS TotalUsers
FROM Users;

-- 12. Find the highest wallet balance among all users.

SELECT MAX(WalletBalance) AS HighestBalance
FROM Users;

-- 13. Find the minimum electricity tariff charged per kWh.

SELECT MIN(PricePerKWh) AS MinimumPrice
FROM Tariffs;

-- 14. Find the average payment amount made by users.

SELECT AVG(Amount) AS AveragePayment
FROM Payments;

-- 15. Calculate the total revenue generated from successful payments.
SELECT SUM(Amount) AS TotalRevenue
FROM Payments
WHERE PaymentStatus = 'Success';

-- 16. Find the number of chargers available under each charger status.

SELECT Status, COUNT(*) AS TotalChargers
FROM Chargers
GROUP BY Status;

-- 17. Find the average electricity tariff for every membership plan.

SELECT PlanID,
AVG(PricePerKWh) AS AveragePrice
FROM Tariffs
GROUP BY PlanID;

-- 18. Display membership plans that have more than three tariff records.

SELECT PlanID, COUNT(*) AS TotalTariffs
FROM Tariffs
GROUP BY PlanID
HAVING COUNT(*) > 3;

-- 19. Display all user names in uppercase.

SELECT
UPPER(FullName) AS UserName
FROM Users;

-- 20. Display the current system date and time.
SELECT NOW();




-- LEVEL 2 (INTERMEDIATE)

-- 1. Increase the wallet balance of UserID = 5 by ₹500.

-- UPDATE Users
-- SET WalletBalance = WalletBalance + 500
-- WHERE UserID = 5;

-- 2. Delete Notification ID 15.

-- DELETE FROM Notifications
-- WHERE NotificationID = 15;

-- 3. Display users and classify them as Premium User if WalletBalance is above ₹1000, otherwise Regular User.

SELECT UserID, FullName, WalletBalance,
CASE
WHEN WalletBalance > 1000 THEN 'Premium User'
ELSE 'Regular User'
END AS UserType
FROM Users;

-- 4. Display login history. If LogoutTime is NULL, display Currently Logged In.

SELECT LoginID, UserID, LoginTime,
IFNULL(LogoutTime,'Currently Logged In') AS LogoutStatus
FROM LoginHistory;

-- 5. Display user addresses. If Address is NULL, display Address Not Available.

SELECT FullName,
COALESCE(Address,'Address Not Available') AS Address
FROM Users;

-- 6. Display all vehicle manufacturers in uppercase.

SELECT UPPER(Make)
FROM EVVehicles;

-- 7. Display first three characters of every registration number.

SELECT RegistrationNumber,
LEFT(RegistrationNumber,3)
FROM EVVehicles;

-- 8. Display every user's name and its length.
SELECT FullName,
LENGTH(FullName)
FROM Users;

-- 9. Display today's date.

SELECT CURDATE();

-- 10. Display only the current year.

SELECT YEAR(CURDATE());

-- 11. Display PaymentID and transaction month.

SELECT PaymentID, MONTH(TransactionDate) AS Month
FROM Payments;

-- 12. Display payment amounts rounded to the nearest integer.

SELECT
PaymentID,
ROUND(Amount)
FROM Payments;

-- 13. Display the highest wallet balance using a numeric function.

SELECT
GREATEST(MAX(WalletBalance),0)
FROM Users;

-- 14. Find the average electricity tariff for each membership plan.

SELECT PlanID,
AVG(PricePerKWh) AS AverageTariff
FROM Tariffs
GROUP BY PlanID;

-- 15. Display membership plans having more than five tariff records.

SELECT PlanID,
COUNT(*) AS TotalTariffs
FROM Tariffs
GROUP BY PlanID
HAVING COUNT(*)>5;

-- 16. Display users whose wallet balance is greater than ₹1000 using a Common Table Expression.

WITH RichUsers AS
(
SELECT *
FROM Users
WHERE WalletBalance>1000
)
SELECT *
FROM RichUsers;

-- 17. Assign a sequential row number to payments ordered by transaction date.

SELECT PaymentID, TransactionDate,
ROW_NUMBER() OVER(ORDER BY TransactionDate) AS RowNum
FROM Payments;

-- 18. Display the first four characters of each vehicle registration number.
SELECT RegistrationNumber,
LEFT(RegistrationNumber,4) AS Prefix
FROM EVVehicles;

-- 19. If Address is NULL, display "Not Available".

SELECT FullName,
COALESCE(Address,'Not Available') AS Address
FROM Users;

-- 20. Display the number of vehicles available for each connector type.

SELECT ConnectorType, COUNT(*) AS TotalVehicles
FROM EVVehicles
GROUP BY ConnectorType;





-- LEVEL 3 (Advanced/difficult)

-- 1. Display each user's name along with their registered vehicle details.
SELECT u.UserID, u.FullName, v.Make, v.Model, v.RegistrationNumber
FROM Users u
INNER JOIN EVVehicles v
ON u.UserID = v.UserID;

-- 2. Display booking details with user name and vehicle information.

SELECT b.BookingID, u.FullName, v.Make, v.Model, b.BookingDate, b.Status
FROM Bookings b
INNER JOIN Users u
ON b.UserID=u.UserID
INNER JOIN EVVehicles v
ON b.VehicleID=v.VehicleID;

-- 3. Display charging session details with customer name, vehicle model, charger code and session status.

SELECT cs.SessionID, u.FullName, v.Model, c.ChargerCode, cs.Status
FROM ChargingSessions cs
INNER JOIN Users u
ON cs.UserID=u.UserID
INNER JOIN EVVehicles v
ON cs.VehicleID=v.VehicleID
INNER JOIN Chargers c
ON cs.ChargerID=c.ChargerID;

-- 4. Display all users and their vehicles, including users who have not registered any vehicle

SELECT u.UserID,u.FullName, v.Make, v.Model
FROM Users u
LEFT JOIN EVVehicles v
ON u.UserID=v.UserID;

-- 5. Display all vehicles and their owners.

SELECT u.FullName, v.Make, v.Model
FROM Users u
RIGHT JOIN EVVehicles v
ON u.UserID=v.UserID;

-- 6. Display every membership plan with every charging station.

SELECT m.PlanName, s.StationName
FROM MembershipPlans m
CROSS JOIN ChargingStations s;

-- 7. Display users who have the same role.

SELECT A.FullName AS User1, B.FullName AS User2, A.RoleID
FROM Users A
JOIN Users B
ON A.RoleID=B.RoleID
AND A.UserID<B.UserID;

-- 8. Display payment details along with customer name and membership plan.

SELECT p.PaymentID, u.FullName, mp.PlanName, p.Amount, p.PaymentStatus
FROM Payments p
INNER JOIN Users u
ON p.UserID = u.UserID
INNER JOIN UserMemberships um
ON p.MembershipID = um.MembershipID
INNER JOIN MembershipPlans mp
ON um.PlanID = mp.PlanID;


-- 9. Display charger details along with station name.

SELECT c.ChargerCode, c.PowerOutputKW, s.StationName
FROM Chargers c
INNER JOIN ChargingStations s
ON c.StationID=s.StationID;

-- 10. Display users whose wallet balance is greater than the average wallet balance.

SELECT *
FROM Users
WHERE WalletBalance >
(
SELECT AVG(WalletBalance)
FROM Users
);

-- 11. Display the payment having the highest amount.
SELECT p.PaymentID, u.FullName, m.PlanName, p.Amount, p.PaymentStatus
FROM Payments p
INNER JOIN Users u
ON p.UserID = u.UserID
INNER JOIN MembershipPlans m
ON p.MembershipID = m.PlanID;
    
-- 12. Display users who have never made any payment.
SELECT *
FROM Users
WHERE UserID NOT IN
(
SELECT UserID
FROM Payments
);

-- 13. Display users who have made successful payments.

SELECT *
FROM Users
WHERE UserID IN
(
SELECT UserID
FROM Payments
WHERE PaymentStatus='Success'
);

-- 14. Display users whose wallet balance is greater than the average wallet balance of users having the same role.

SELECT *
FROM Users u
WHERE WalletBalance >
(
SELECT AVG(WalletBalance)
FROM Users
WHERE RoleID=u.RoleID
);

-- 15. Display users who have booked at least one charging session.

SELECT *
FROM Users u
WHERE EXISTS
(
SELECT *
FROM Bookings b
WHERE b.UserID=u.UserID
);

-- 16. Display users who have never booked a charging slot.

SELECT *
FROM Users u
WHERE NOT EXISTS
(
SELECT *
FROM Bookings b
WHERE b.UserID=u.UserID
);

-- 17. Display payments whose amount is greater than at least one failed payment.

SELECT *
FROM Payments
WHERE Amount >
ANY
(
SELECT Amount
FROM Payments
WHERE PaymentStatus='Failed'
);

-- 18. Display Complete Booking Information

SELECT b.BookingID, u.FullName, v.Make, v.Model, s.StationName, c.ChargerCode, b.BookingDate, b.Status
FROM Bookings b
INNER JOIN Users u
ON b.UserID = u.UserID
INNER JOIN EVVehicles v
ON b.VehicleID = v.VehicleID
INNER JOIN Chargers c
ON b.ChargerID = c.ChargerID
INNER JOIN ChargingStations s
ON c.StationID = s.StationID;

-- 19. Display customers who have completed charging sessions and made successful payments.
SELECT DISTINCT u.FullName
FROM Users u
INNER JOIN ChargingSessions cs
ON u.UserID=cs.UserID
INNER JOIN Payments p
ON cs.SessionID=p.SessionID
WHERE cs.Status='Completed'
AND p.PaymentStatus='Success';

-- 20. Display the complete charging history showing customer name, vehicle model, charging station, charger code, payment amount, and payment status.
SELECT u.FullName, v.Make, v.Model, s.StationName, c.ChargerCode, p.Amount, p.PaymentStatus
FROM ChargingSessions cs
INNER JOIN Users u
ON cs.UserID=u.UserID
INNER JOIN EVVehicles v
ON cs.VehicleID=v.VehicleID
INNER JOIN Chargers c
ON cs.ChargerID=c.ChargerID
INNER JOIN ChargingStations s
ON c.StationID=s.StationID
INNER JOIN Payments p
ON cs.SessionID=p.SessionID;
