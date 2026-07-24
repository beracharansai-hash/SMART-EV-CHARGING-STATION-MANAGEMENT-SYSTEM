Smart EV Charging Station Management System
Project Overview
The Smart EV Charging Station Management System is a Database Management System (DBMS) project developed using MySQL. It is designed to manage electric vehicle charging operations, including user registration, vehicle management, charging station management, bookings, charging sessions, payments, memberships, maintenance, and notifications.

Objectives
Manage EV users and their vehicles.
Handle charging station and charger information.
Schedule and manage charging bookings.
Track charging sessions.
Manage membership plans and tariffs.
Process payments and wallet transactions.
Maintain charger maintenance records.
Store reviews, notifications, login history, and audit logs.
Technologies Used
MySQL
MySQL Workbench
SQL
Database Information
Database Name: SmartEVChargingSystem
Number of Tables: 18
Tables
Roles
Users
MembershipPlans
UserMemberships
EVVehicles
ChargingStations
Chargers
Tariffs
Bookings
ChargingSessions
ChargingSessionStatus
Payments
WalletTransactions
Reviews
Maintenance
Notifications
LoginHistory
AuditLogs
Entity Relationships
Parent Table	Child Table	Relationship
Roles → Users	1 : M	
Users → EVVehicles	1 : M	
Users → UserMemberships	1 : M	
MembershipPlans → UserMemberships	1 : M	
MembershipPlans → Tariffs	1 : M	
Users → Bookings	1 : M	
EVVehicles → Bookings	1 : M	
Chargers → Bookings	1 : M	
Bookings → ChargingSessions	1 : 1	
ChargingSessions → ChargingSessionStatus	1 : M	
Users → Payments	1 : M	
ChargingSessions → Payments	1 : M	
MembershipPlans → Payments	1 : M	
ChargingStations → Chargers	1 : M	
Users → WalletTransactions	1 : M	
Users → Reviews	1 : M	
ChargingStations → Reviews	1 : M	
Chargers → Maintenance	1 : M	
Users → Notifications	1 : M	
Users → LoginHistory	1 : M	
Users → AuditLogs	1 : M	
Relationship Notation
1 : 1 → One-to-One
1 : M → One-to-Many
M : M → Many-to-Many
SQL Queries (3 Levels)
Level 1 - Easy
Level 2 - Intermediate
Level 3 - Advanced
Features
User Management
EV Vehicle Management
Charging Station Management
Charger Management
Booking Management
Charging Session Tracking
Membership Management
Tariff Management
Payment Management
Wallet Transactions
Reviews
Notifications
Maintenance Tracking
Login History
Audit Logs
SQL Operations Included
Database Creation
CREATE DATABASE
CREATE TABLE
PRIMARY KEY
FOREIGN KEY
Constraints
Data Manipulation
INSERT
UPDATE
DELETE
SELECT
SQL Concepts Covered
Aggregate Functions
GROUP BY
HAVING
ORDER BY
CASE
IFNULL
COALESCE
String Functions
Numeric Functions
Date Functions
Window Functions
Common Table Expressions (CTE)
Joins
Subqueries
Correlated Subqueries
EXISTS
NOT EXISTS
ANY
ALL
Project Contents
Database Schema
Sample Data
60 SQL Queries
ER Diagram
