-- ===========================================
-- 1. ROLES
-- ===========================================

INSERT INTO Roles (RoleName) VALUES
('Admin'),
('Operator'),
('Customer');

-- ===========================================
-- 2. USERS (20 Records)
-- ===========================================

INSERT INTO Users
(RoleID, FullName, Email, Phone, PasswordHash, Address, WalletBalance, IsActive)
VALUES
(1,'Amit Sharma','amit.admin@gmail.com','9000000001','admin123','Hyderabad',5000.00,TRUE),

(2,'Rajesh Kumar','rajesh.operator@gmail.com','9000000002','operator123','Visakhapatnam',1500.00,TRUE),

(2,'Suresh Reddy','suresh.operator@gmail.com','9000000003','operator123','Vijayawada',1800.00,TRUE),

(2,'Priya Singh','priya.operator@gmail.com','9000000004','operator123','Bengaluru',2200.00,TRUE),

(3,'Rahul Verma','rahul@gmail.com','9000000005','pass123','Visakhapatnam',800.00,TRUE),

(3,'Sneha Reddy','sneha@gmail.com','9000000006','pass123','Hyderabad',1200.00,TRUE),

(3,'Kiran Kumar','kiran@gmail.com','9000000007','pass123','Vijayawada',450.00,TRUE),

(3,'Anjali Sharma','anjali@gmail.com','9000000008','pass123','Chennai',950.00,TRUE),

(3,'Rohit Gupta','rohit@gmail.com','9000000009','pass123','Delhi',1500.00,TRUE),

(3,'Neha Patel','neha@gmail.com','9000000010','pass123','Mumbai',1800.00,TRUE),

(3,'Arjun Rao','arjun@gmail.com','9000000011','pass123','Hyderabad',300.00,TRUE),

(3,'Pooja Nair','pooja@gmail.com','9000000012','pass123','Kochi',600.00,TRUE),

(3,'Vikram Das','vikram@gmail.com','9000000013','pass123','Kolkata',1400.00,TRUE),

(3,'Meena Iyer','meena@gmail.com','9000000014','pass123','Chennai',500.00,TRUE),

(3,'Harish Kumar','harish@gmail.com','9000000015','pass123','Bengaluru',900.00,TRUE),

(3,'Swathi Rao','swathi@gmail.com','9000000016','pass123','Hyderabad',650.00,TRUE),

(3,'Naveen Reddy','naveen@gmail.com','9000000017','pass123','Warangal',750.00,TRUE),

(3,'Divya Sharma','divya@gmail.com','9000000018','pass123','Pune',1100.00,TRUE),

(3,'Akash Jain','akash@gmail.com','9000000019','pass123','Jaipur',950.00,TRUE),

(3,'Keerthi Devi','keerthi@gmail.com','9000000020','pass123','Tirupati',1300.00,TRUE);

-- ===========================================
-- 3. MEMBERSHIP PLANS
-- ===========================================

INSERT INTO MembershipPlans
(PlanName,Description,Price,DurationDays,DiscountPercent,IsActive)
VALUES

('Basic',
'Suitable for occasional users',
199,
30,
5,
TRUE),

('Silver',
'Monthly charging plan',
399,
30,
10,
TRUE),

('Gold',
'Frequent EV users',
699,
30,
15,
TRUE),

('Platinum',
'Unlimited premium charging',
999,
30,
20,
TRUE),

('Annual Premium',
'One year membership',
8999,
365,
25,
TRUE);

-- ===========================================
-- 4. USER MEMBERSHIPS
-- ===========================================

INSERT INTO UserMemberships
(UserID,PlanID,StartDate,EndDate,Status)
VALUES

(5,1,'2026-01-01','2026-01-31','Expired'),

(6,2,'2026-06-01','2026-07-01','Active'),

(7,3,'2026-06-10','2026-07-10','Active'),

(8,2,'2026-05-01','2026-06-01','Expired'),

(9,4,'2026-06-15','2026-07-15','Active'),

(10,5,'2026-01-01','2026-12-31','Active'),

(11,1,'2026-06-05','2026-07-05','Active'),

(12,2,'2026-05-15','2026-06-15','Expired'),

(13,3,'2026-06-20','2026-07-20','Active'),

(14,2,'2026-04-01','2026-05-01','Expired'),

(15,4,'2026-06-01','2026-07-01','Active'),

(16,1,'2026-03-01','2026-04-01','Expired'),

(17,5,'2026-01-15','2027-01-14','Active'),

(18,3,'2026-06-08','2026-07-08','Active'),

(19,2,'2026-06-11','2026-07-11','Active'),

(20,1,'2026-06-18','2026-07-18','Active');

-- =====================================================
-- 5. EV VEHICLES (25 Records)
-- =====================================================

INSERT INTO EVVehicles
(UserID, Make, Model, RegistrationNumber, BatteryCapacityKWh, ConnectorType)
VALUES
(5,'Tata','Nexon EV','AP39AB1001',40.50,'CCS2'),
(6,'MG','ZS EV','TS09CD1002',50.30,'CCS2'),
(7,'Hyundai','Kona Electric','KA01EF1003',39.20,'CCS2'),
(8,'Mahindra','XUV400','TN10GH1004',39.40,'CCS2'),
(9,'BYD','Atto 3','MH12JK1005',60.48,'CCS2'),
(10,'Tata','Punch EV','AP39LM1006',35.00,'CCS2'),
(11,'Tata','Tiago EV','TS08NP1007',24.00,'AC Type2'),
(12,'Citroen','eC3','KL07QR1008',29.20,'CCS2'),
(13,'MG','Comet EV','WB20ST1009',17.30,'AC Type2'),
(14,'BMW','i4','TN22UV1010',83.90,'CCS2'),
(15,'Mercedes','EQS','KA03WX1011',107.80,'CCS2'),
(16,'Kia','EV6','AP31YZ1012',77.40,'CCS2'),
(17,'Audi','e-tron','TS10AA1013',95.00,'CCS2'),
(18,'Volvo','XC40 Recharge','MH04BB1014',78.00,'CCS2'),
(19,'Tata','Curvv EV','RJ14CC1015',55.00,'CCS2'),
(20,'Mahindra','BE6','AP05DD1016',60.00,'CCS2'),
(5,'MG','Comet EV','AP39EE1017',17.30,'AC Type2'),
(6,'Tata','Nexon EV Max','TS09FF1018',46.00,'CCS2'),
(7,'Hyundai','Ioniq 5','KA01GG1019',72.60,'CCS2'),
(8,'BYD','Seal','TN10HH1020',82.50,'CCS2'),
(9,'BMW','iX','MH12JJ1021',111.50,'CCS2'),
(10,'Audi','Q8 e-tron','AP39KK1022',106.00,'CCS2'),
(11,'Kia','EV9','TS08LL1023',99.80,'CCS2'),
(12,'Volvo','EX30','KL07MM1024',69.00,'CCS2'),
(13,'Tata','Harrier EV','WB20NN1025',75.00,'CCS2');

-- =====================================================
-- 6. CHARGING STATIONS (10 Records)
-- =====================================================

INSERT INTO ChargingStations
(OperatorID, StationName, Address, City, State, Latitude, Longitude, Amenities, Status)
VALUES
(2,'Vizag Fast Charge Hub','MVP Colony','Visakhapatnam','Andhra Pradesh',17.742000,83.318000,'Cafe,Parking,WiFi','Active'),
(2,'Beach Road EV Station','Beach Road','Visakhapatnam','Andhra Pradesh',17.712000,83.323000,'Parking,Restroom','Active'),
(2,'Gajuwaka Charging Point','Gajuwaka','Visakhapatnam','Andhra Pradesh',17.684000,83.214000,'Parking','Active'),
(3,'Vijayawada EV Plaza','Benz Circle','Vijayawada','Andhra Pradesh',16.506000,80.648000,'Cafe,WiFi','Active'),
(3,'Hyderabad Super Charge','Hitech City','Hyderabad','Telangana',17.448000,78.391000,'Restaurant,WiFi','Active'),
(4,'Bangalore Green Charge','Whitefield','Bengaluru','Karnataka',12.969000,77.750000,'Food Court','Active'),
(4,'Chennai EV Center','OMR Road','Chennai','Tamil Nadu',12.912000,80.229000,'Parking,Cafe','Active'),
(4,'Mumbai Charge Point','Andheri','Mumbai','Maharashtra',19.113000,72.869000,'Mall,Parking','Active'),
(3,'Delhi EV Station','Connaught Place','Delhi','Delhi',28.631000,77.216000,'WiFi,Parking','Active'),
(2,'Pune Green Hub','Hinjewadi','Pune','Maharashtra',18.591000,73.738000,'Cafe,Parking','Active');

-- =====================================================
-- 7. CHARGERS (30 Records)
-- =====================================================

INSERT INTO Chargers
(StationID, ChargerCode, ChargerType, ConnectorType, PowerOutputKW, Status)
VALUES
(1,'CH001','DC','CCS2',120,'Available'),
(1,'CH002','DC','CCS2',60,'Available'),
(1,'CH003','AC','Type2',22,'Available'),

(2,'CH004','DC','CCS2',120,'Available'),
(2,'CH005','AC','Type2',22,'Available'),
(2,'CH006','DC','CCS2',60,'InUse'),

(3,'CH007','DC','CCS2',60,'Available'),
(3,'CH008','AC','Type2',22,'Available'),
(3,'CH009','DC','CCS2',30,'Offline'),

(4,'CH010','DC','CCS2',120,'Available'),
(4,'CH011','AC','Type2',22,'Available'),
(4,'CH012','DC','CCS2',60,'Available'),

(5,'CH013','DC','CCS2',180,'Available'),
(5,'CH014','DC','CCS2',120,'InUse'),
(5,'CH015','AC','Type2',22,'Available'),

(6,'CH016','DC','CCS2',150,'Available'),
(6,'CH017','DC','CCS2',60,'Available'),
(6,'CH018','AC','Type2',22,'Available'),

(7,'CH019','DC','CCS2',120,'Available'),
(7,'CH020','AC','Type2',22,'Available'),
(7,'CH021','DC','CCS2',60,'UnderMaintenance'),

(8,'CH022','DC','CCS2',180,'Available'),
(8,'CH023','AC','Type2',22,'Available'),
(8,'CH024','DC','CCS2',60,'Available'),

(9,'CH025','DC','CCS2',150,'Available'),
(9,'CH026','AC','Type2',22,'Available'),
(9,'CH027','DC','CCS2',60,'Available'),

(10,'CH028','DC','CCS2',120,'Available'),
(10,'CH029','AC','Type2',22,'Available'),
(10,'CH030','DC','CCS2',60,'Available');

-- =====================================================
-- 8. TARIFFS (30 Records)
-- =====================================================

INSERT INTO Tariffs
(ChargerID, PlanID, PricePerKWh, PricePerMinute, TimeSlotStart, TimeSlotEnd, EffectiveFrom, EffectiveTo)
VALUES
(1,1,15,0.50,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(2,2,14,0.45,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(3,3,13,0.40,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(4,4,12,0.35,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(5,5,11,0.30,'00:00:00','23:59:59','2026-01-01','2027-01-01'),

(6,1,15,0.50,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(7,2,14,0.45,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(8,3,13,0.40,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(9,4,12,0.35,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(10,5,11,0.30,'00:00:00','23:59:59','2026-01-01','2027-01-01'),

(11,1,15,0.50,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(12,2,14,0.45,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(13,3,13,0.40,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(14,4,12,0.35,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(15,5,11,0.30,'00:00:00','23:59:59','2026-01-01','2027-01-01'),

(16,1,15,0.50,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(17,2,14,0.45,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(18,3,13,0.40,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(19,4,12,0.35,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(20,5,11,0.30,'00:00:00','23:59:59','2026-01-01','2027-01-01'),

(21,1,15,0.50,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(22,2,14,0.45,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(23,3,13,0.40,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(24,4,12,0.35,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(25,5,11,0.30,'00:00:00','23:59:59','2026-01-01','2027-01-01'),

(26,1,15,0.50,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(27,2,14,0.45,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(28,3,13,0.40,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(29,4,12,0.35,'00:00:00','23:59:59','2026-01-01','2027-01-01'),
(30,5,11,0.30,'00:00:00','23:59:59','2026-01-01','2027-01-01');

-- =====================================================
-- 9. BOOKINGS (40 Records)
-- =====================================================

INSERT INTO Bookings
(UserID, VehicleID, ChargerID, BookingDate, StartTime, EndTime, Status)
VALUES

(5,1,1,'2026-07-01','2026-07-01 09:00:00','2026-07-01 10:00:00','Completed'),
(6,2,2,'2026-07-01','2026-07-01 10:30:00','2026-07-01 11:30:00','Completed'),
(7,3,3,'2026-07-02','2026-07-02 08:00:00','2026-07-02 09:15:00','Completed'),
(8,4,4,'2026-07-02','2026-07-02 11:00:00','2026-07-02 12:00:00','Completed'),
(9,5,5,'2026-07-03','2026-07-03 09:30:00','2026-07-03 10:45:00','Completed'),

(10,6,6,'2026-07-03','2026-07-03 14:00:00','2026-07-03 15:00:00','Completed'),
(11,7,7,'2026-07-04','2026-07-04 08:30:00','2026-07-04 09:30:00','Completed'),
(12,8,8,'2026-07-04','2026-07-04 10:00:00','2026-07-04 11:00:00','Completed'),
(13,9,9,'2026-07-05','2026-07-05 15:00:00','2026-07-05 16:00:00','Cancelled'),
(14,10,10,'2026-07-05','2026-07-05 17:00:00','2026-07-05 18:00:00','Completed'),

(15,11,11,'2026-07-06','2026-07-06 09:00:00','2026-07-06 10:00:00','Completed'),
(16,12,12,'2026-07-06','2026-07-06 11:00:00','2026-07-06 12:00:00','Completed'),
(17,13,13,'2026-07-07','2026-07-07 13:00:00','2026-07-07 14:15:00','Completed'),
(18,14,14,'2026-07-07','2026-07-07 15:30:00','2026-07-07 16:30:00','Completed'),
(19,15,15,'2026-07-08','2026-07-08 08:00:00','2026-07-08 09:30:00','Completed'),

(20,16,16,'2026-07-08','2026-07-08 10:30:00','2026-07-08 11:30:00','Completed'),
(5,17,17,'2026-07-09','2026-07-09 12:00:00','2026-07-09 13:00:00','Completed'),
(6,18,18,'2026-07-09','2026-07-09 14:00:00','2026-07-09 15:15:00','Completed'),
(7,19,19,'2026-07-10','2026-07-10 09:30:00','2026-07-10 10:45:00','Completed'),
(8,20,20,'2026-07-10','2026-07-10 11:00:00','2026-07-10 12:15:00','Completed'),

(9,21,21,'2026-07-11','2026-07-11 13:00:00','2026-07-11 14:00:00','Completed'),
(10,22,22,'2026-07-11','2026-07-11 15:00:00','2026-07-11 16:00:00','Completed'),
(11,23,23,'2026-07-12','2026-07-12 09:00:00','2026-07-12 10:30:00','Completed'),
(12,24,24,'2026-07-12','2026-07-12 11:30:00','2026-07-12 12:45:00','Completed'),
(13,25,25,'2026-07-13','2026-07-13 14:00:00','2026-07-13 15:00:00','Completed'),

(14,10,26,'2026-07-13','2026-07-13 16:00:00','2026-07-13 17:00:00','Completed'),
(15,9,27,'2026-07-14','2026-07-14 08:30:00','2026-07-14 09:45:00','Completed'),
(16,8,28,'2026-07-14','2026-07-14 10:00:00','2026-07-14 11:15:00','Completed'),
(17,7,29,'2026-07-15','2026-07-15 13:00:00','2026-07-15 14:00:00','Confirmed'),
(18,6,30,'2026-07-15','2026-07-15 15:00:00','2026-07-15 16:00:00','Confirmed'),

(19,5,1,'2026-07-16','2026-07-16 09:00:00','2026-07-16 10:00:00','Pending'),
(20,4,2,'2026-07-16','2026-07-16 11:00:00','2026-07-16 12:00:00','Pending'),
(5,3,3,'2026-07-17','2026-07-17 13:00:00','2026-07-17 14:00:00','Completed'),
(6,2,4,'2026-07-17','2026-07-17 15:00:00','2026-07-17 16:15:00','Completed'),
(7,1,5,'2026-07-18','2026-07-18 09:30:00','2026-07-18 10:30:00','Completed'),

(8,20,6,'2026-07-18','2026-07-18 11:30:00','2026-07-18 12:45:00','Confirmed'),
(9,18,7,'2026-07-19','2026-07-19 14:00:00','2026-07-19 15:00:00','Pending'),
(10,16,8,'2026-07-19','2026-07-19 16:00:00','2026-07-19 17:00:00','Confirmed'),
(11,14,9,'2026-07-20','2026-07-20 09:00:00','2026-07-20 10:30:00','Completed'),
(12,12,10,'2026-07-20','2026-07-20 11:00:00','2026-07-20 12:00:00','Completed');


-- =====================================================
-- 10. CHARGING SESSIONS (40 Records)
-- =====================================================

INSERT INTO ChargingSessions
(BookingID, UserID, VehicleID, ChargerID, StartTime,
 EstimatedCompletionTime, EndTime, EnergyDeliveredKWh, Status)
VALUES

(1,5,1,1,'2026-07-01 09:00:00','2026-07-01 09:55:00','2026-07-01 09:50:00',28.50,'Completed'),
(2,6,2,2,'2026-07-01 10:30:00','2026-07-01 11:25:00','2026-07-01 11:20:00',35.20,'Completed'),
(3,7,3,3,'2026-07-02 08:00:00','2026-07-02 09:10:00','2026-07-02 09:05:00',18.40,'Completed'),
(4,8,4,4,'2026-07-02 11:00:00','2026-07-02 11:55:00','2026-07-02 11:50:00',29.60,'Completed'),
(5,9,5,5,'2026-07-03 09:30:00','2026-07-03 10:40:00','2026-07-03 10:35:00',41.80,'Completed'),

(6,10,6,6,'2026-07-03 14:00:00','2026-07-03 14:55:00','2026-07-03 14:50:00',24.30,'Completed'),
(7,11,7,7,'2026-07-04 08:30:00','2026-07-04 09:25:00','2026-07-04 09:20:00',15.20,'Completed'),
(8,12,8,8,'2026-07-04 10:00:00','2026-07-04 10:55:00','2026-07-04 10:50:00',19.70,'Completed'),
(9,13,9,9,'2026-07-05 15:00:00','2026-07-05 15:45:00','2026-07-05 15:20:00',0.00,'Failed'),
(10,14,10,10,'2026-07-05 17:00:00','2026-07-05 17:55:00','2026-07-05 17:50:00',48.50,'Completed'),

(11,15,11,11,'2026-07-06 09:00:00','2026-07-06 09:50:00','2026-07-06 09:45:00',70.20,'Completed'),
(12,16,12,12,'2026-07-06 11:00:00','2026-07-06 11:55:00','2026-07-06 11:50:00',55.30,'Completed'),
(13,17,13,13,'2026-07-07 13:00:00','2026-07-07 14:10:00','2026-07-07 14:05:00',66.40,'Completed'),
(14,18,14,14,'2026-07-07 15:30:00','2026-07-07 16:20:00','2026-07-07 16:15:00',52.60,'Completed'),
(15,19,15,15,'2026-07-08 08:00:00','2026-07-08 09:20:00','2026-07-08 09:15:00',44.30,'Completed'),

(16,20,16,16,'2026-07-08 10:30:00','2026-07-08 11:20:00','2026-07-08 11:15:00',46.80,'Completed'),
(17,5,17,17,'2026-07-09 12:00:00','2026-07-09 12:55:00','2026-07-09 12:50:00',12.70,'Completed'),
(18,6,18,18,'2026-07-09 14:00:00','2026-07-09 15:10:00','2026-07-09 15:05:00',38.90,'Completed'),
(19,7,19,19,'2026-07-10 09:30:00','2026-07-10 10:40:00','2026-07-10 10:35:00',61.20,'Completed'),
(20,8,20,20,'2026-07-10 11:00:00','2026-07-10 12:10:00','2026-07-10 12:05:00',72.50,'Completed'),

(21,9,21,21,'2026-07-11 13:00:00','2026-07-11 13:55:00','2026-07-11 13:50:00',81.30,'Completed'),
(22,10,22,22,'2026-07-11 15:00:00','2026-07-11 15:55:00','2026-07-11 15:50:00',74.60,'Completed'),
(23,11,23,23,'2026-07-12 09:00:00','2026-07-12 10:20:00','2026-07-12 10:15:00',63.80,'Completed'),
(24,12,24,24,'2026-07-12 11:30:00','2026-07-12 12:30:00','2026-07-12 12:25:00',49.10,'Completed'),
(25,13,25,25,'2026-07-13 14:00:00','2026-07-13 14:55:00','2026-07-13 14:50:00',57.40,'Completed'),

(26,14,10,26,'2026-07-13 16:00:00','2026-07-13 16:55:00','2026-07-13 16:50:00',46.70,'Completed'),
(27,15,9,27,'2026-07-14 08:30:00','2026-07-14 09:40:00','2026-07-14 09:35:00',32.60,'Completed'),
(28,16,8,28,'2026-07-14 10:00:00','2026-07-14 11:10:00','2026-07-14 11:05:00',20.50,'Completed'),
(29,17,7,29,'2026-07-15 13:00:00','2026-07-15 14:15:00',NULL,15.20,'InProgress'),
(30,18,6,30,'2026-07-15 15:00:00','2026-07-15 16:10:00',NULL,18.90,'InProgress'),

(31,19,5,1,'2026-07-16 09:00:00','2026-07-16 10:00:00',NULL,0.00,'InProgress'),
(32,20,4,2,'2026-07-16 11:00:00','2026-07-16 12:00:00',NULL,0.00,'InProgress'),
(33,5,3,3,'2026-07-17 13:00:00','2026-07-17 14:00:00','2026-07-17 13:55:00',16.80,'Completed'),
(34,6,2,4,'2026-07-17 15:00:00','2026-07-17 16:10:00','2026-07-17 16:05:00',30.90,'Completed'),
(35,7,1,5,'2026-07-18 09:30:00','2026-07-18 10:25:00','2026-07-18 10:20:00',27.50,'Completed'),

(36,8,20,6,'2026-07-18 11:30:00','2026-07-18 12:40:00',NULL,34.80,'InProgress'),
(37,9,18,7,'2026-07-19 14:00:00','2026-07-19 15:00:00',NULL,0.00,'InProgress'),
(38,10,16,8,'2026-07-19 16:00:00','2026-07-19 17:05:00',NULL,21.30,'InProgress'),
(39,11,14,9,'2026-07-20 09:00:00','2026-07-20 10:20:00','2026-07-20 10:15:00',51.70,'Completed'),
(40,12,12,10,'2026-07-20 11:00:00','2026-07-20 11:55:00','2026-07-20 11:50:00',42.40,'Completed');


-- =====================================================
-- 11. CHARGING SESSION STATUS (Records 1-20)
-- =====================================================


INSERT INTO ChargingSessionStatus
(SessionID, BatteryPercentage, ChargingPowerKW, RemainingTimeMinutes, TimeStamp)
VALUES

(81,20.00,118.50,45,'2026-07-01 09:05:00'),
(81,80.00,85.20,5,'2026-07-01 09:45:00'),

(82,18.00,60.00,50,'2026-07-01 10:35:00'),
(82,90.00,42.00,3,'2026-07-01 11:15:00'),

(83,35.00,21.50,40,'2026-07-02 08:10:00'),
(83,95.00,8.20,2,'2026-07-02 09:00:00'),

(84,22.00,118.80,42,'2026-07-02 11:05:00'),
(84,88.00,64.30,4,'2026-07-02 11:45:00'),

(85,15.00,21.80,55,'2026-07-03 09:40:00'),
(85,92.00,10.20,3,'2026-07-03 10:30:00'),

(86,28.00,59.60,38,'2026-07-03 14:05:00'),
(86,96.00,12.10,2,'2026-07-03 14:45:00'),

(87,30.00,58.70,36,'2026-07-04 08:35:00'),
(87,98.00,9.50,1,'2026-07-04 09:15:00'),

(88,25.00,22.00,45,'2026-07-04 10:05:00'),
(88,91.00,11.20,4,'2026-07-04 10:45:00'),

(89,18.00,30.00,30,'2026-07-05 15:05:00'),
(89,18.00,0.00,0,'2026-07-05 15:20:00'),

(90,12.00,119.60,48,'2026-07-05 17:05:00'),
(90,94.00,18.50,3,'2026-07-05 17:45:00'),

(91,25.00,120.00,45,'2026-07-06 09:05:00'),
(91,96.00,16.50,2,'2026-07-06 09:40:00'),

(92,20.00,60.00,48,'2026-07-06 11:05:00'),
(92,93.00,14.20,3,'2026-07-06 11:45:00'),

(93,18.00,178.50,55,'2026-07-07 13:05:00'),
(93,95.00,22.80,4,'2026-07-07 13:55:00'),

(94,32.00,118.00,40,'2026-07-07 15:35:00'),
(94,98.00,10.50,1,'2026-07-07 16:10:00'),

(95,15.00,21.90,60,'2026-07-08 08:05:00'),
(95,90.00,8.60,5,'2026-07-08 09:10:00'),

(96,28.00,149.50,45,'2026-07-08 10:35:00'),
(96,94.00,20.40,3,'2026-07-08 11:10:00'),

(97,42.00,59.20,35,'2026-07-09 12:05:00'),
(97,99.00,5.80,1,'2026-07-09 12:45:00'),

(98,22.00,22.00,52,'2026-07-09 14:05:00'),
(98,91.00,9.20,4,'2026-07-09 14:55:00'),

(99,16.00,119.80,55,'2026-07-10 09:35:00'),
(99,97.00,14.80,2,'2026-07-10 10:30:00'),

(100,24.00,22.00,50,'2026-07-10 11:05:00'),
(100,95.00,7.40,3,'2026-07-10 12:00:00');
-- =====================================================
-- 12. PAYMENTS
-- =====================================================
INSERT INTO Payments
(UserID, SessionID, MembershipID, Amount, PaymentMethod, PaymentStatus, TransactionDate)
VALUES

(5,81,1,720.50,'UPI','Success','2026-07-01 09:50:00'),
(6,82,2,845.00,'Card','Success','2026-07-01 11:20:00'),
(7,83,3,395.50,'Wallet','Success','2026-07-02 09:05:00'),
(8,84,4,690.00,'Card','Success','2026-07-02 11:50:00'),
(9,85,5,355.75,'UPI','Success','2026-07-03 10:35:00'),
(10,86,1,810.25,'NetBanking','Success','2026-07-03 14:55:00'),
(11,87,2,765.50,'Wallet','Success','2026-07-04 09:20:00'),
(12,88,3,410.00,'UPI','Success','2026-07-04 10:50:00'),
(13,89,4,0.00,'UPI','Failed','2026-07-05 15:25:00'),
(14,90,5,925.00,'Card','Success','2026-07-05 17:50:00'),

(15,91,1,890.40,'UPI','Success','2026-07-06 09:45:00'),
(16,92,2,640.00,'Wallet','Success','2026-07-06 11:50:00'),
(17,93,3,1125.60,'Card','Success','2026-07-07 14:00:00'),
(18,94,4,845.20,'Card','Success','2026-07-07 16:15:00'),
(19,95,5,375.00,'UPI','Success','2026-07-08 09:15:00'),
(20,96,1,980.75,'NetBanking','Success','2026-07-08 11:15:00'),
(5,97,2,620.50,'Wallet','Success','2026-07-09 12:50:00'),
(6,98,3,430.00,'UPI','Success','2026-07-09 15:00:00'),
(7,99,4,875.80,'Card','Success','2026-07-10 10:35:00'),
(8,100,5,455.25,'Card','Success','2026-07-10 12:05:00'),

(9,101,1,1195.00,'UPI','Success','2026-07-11 13:50:00'),
(10,102,2,390.50,'Wallet','Success','2026-07-11 15:50:00'),
(11,103,3,655.75,'Card','Success','2026-07-12 10:10:00'),
(12,104,4,420.00,'UPI','Success','2026-07-12 12:25:00'),
(13,105,5,1025.50,'NetBanking','Success','2026-07-13 14:50:00'),
(14,106,1,710.00,'Wallet','Success','2026-07-13 16:50:00'),
(15,107,2,460.25,'UPI','Success','2026-07-14 09:35:00'),
(16,108,3,895.60,'Card','Success','2026-07-14 11:05:00'),
(17,109,4,520.00,'Card','Pending','2026-07-15 13:45:00'),
(18,110,5,615.75,'Wallet','Pending','2026-07-15 15:50:00'),

(19,111,1,0.00,'UPI','Failed','2026-07-16 09:35:00'),
(20,112,2,0.00,'Card','Failed','2026-07-16 11:35:00'),
(5,113,3,405.50,'UPI','Success','2026-07-17 13:55:00'),
(6,114,4,915.00,'NetBanking','Success','2026-07-17 16:05:00'),
(7,115,5,385.25,'Wallet','Success','2026-07-18 10:20:00'),
(8,116,1,640.75,'UPI','Pending','2026-07-18 12:20:00'),
(9,117,2,0.00,'Wallet','Failed','2026-07-19 14:35:00'),
(10,118,3,485.50,'Card','Pending','2026-07-19 16:50:00'),
(11,119,4,540.00,'UPI','Success','2026-07-20 10:15:00'),
(12,120,5,875.25,'Card','Success','2026-07-20 11:50:00');
-- =====================================================
-- 13. WALLET TRANSACTIONS
-- =====================================================
INSERT INTO WalletTransactions
(UserID, Type, Amount, BalanceAfter, ReferenceID, TransactionDate)
VALUES

(5,'Recharge',1000.00,1500.00,1,'2026-07-01 08:30:00'),
(5,'Debit',720.50,779.50,1,'2026-07-01 09:50:00'),

(6,'Recharge',1500.00,2000.00,2,'2026-07-01 10:00:00'),
(6,'Debit',845.00,1155.00,2,'2026-07-01 11:20:00'),

(7,'Recharge',1000.00,1800.00,3,'2026-07-02 08:00:00'),
(7,'Debit',395.50,1404.50,3,'2026-07-02 09:05:00'),

(8,'Recharge',1200.00,1900.00,4,'2026-07-02 10:30:00'),
(8,'Debit',690.00,1210.00,4,'2026-07-02 11:50:00'),

(9,'Recharge',800.00,1300.00,5,'2026-07-03 09:00:00'),
(9,'Debit',355.75,944.25,5,'2026-07-03 10:35:00'),

(10,'Recharge',1500.00,2200.00,6,'2026-07-03 13:30:00'),
(10,'Debit',810.25,1389.75,6,'2026-07-03 14:55:00'),

(11,'Recharge',1200.00,1800.00,7,'2026-07-04 08:00:00'),
(11,'Debit',765.50,1034.50,7,'2026-07-04 09:20:00'),

(12,'Recharge',1000.00,1600.00,8,'2026-07-04 09:30:00'),
(12,'Debit',410.00,1190.00,8,'2026-07-04 10:50:00'),

(13,'Recharge',1000.00,1700.00,9,'2026-07-05 14:00:00'),
(13,'Refund',50.00,1750.00,9,'2026-07-05 15:30:00'),

(14,'Recharge',1500.00,2200.00,10,'2026-07-05 16:30:00'),
(14,'Debit',925.00,1275.00,10,'2026-07-05 17:50:00'),

(15,'Recharge',1500.00,2300.00,11,'2026-07-06 08:30:00'),
(15,'Debit',890.40,1409.60,11,'2026-07-06 09:45:00'),

(16,'Recharge',1200.00,1800.00,12,'2026-07-06 10:30:00'),
(16,'Debit',640.00,1160.00,12,'2026-07-06 11:50:00'),

(17,'Recharge',2000.00,2700.00,13,'2026-07-07 12:30:00'),
(17,'Debit',1125.60,1574.40,13,'2026-07-07 14:00:00'),

(18,'Recharge',1500.00,2300.00,14,'2026-07-07 15:00:00'),
(18,'Debit',845.20,1454.80,14,'2026-07-07 16:15:00'),

(19,'Recharge',1000.00,1700.00,15,'2026-07-08 08:00:00'),
(19,'Debit',375.00,1325.00,15,'2026-07-08 09:15:00'),

(20,'Recharge',1800.00,2600.00,16,'2026-07-08 10:00:00'),
(20,'Debit',980.75,1619.25,16,'2026-07-08 11:15:00');

-- =====================================================
-- 15. MAINTENANCE
-- =====================================================
INSERT INTO Maintenance
(ChargerID, IssueDescription, ScheduledDate, CompletedDate, Status, TechnicianName)
VALUES

(3,'Connector overheating','2026-07-02','2026-07-02','Completed','Ramesh Kumar'),
(7,'Charging cable damaged','2026-07-03','2026-07-03','Completed','Suresh Naidu'),
(5,'Software update required','2026-07-04','2026-07-04','Completed','Anil Sharma'),
(12,'Display not responding','2026-07-05','2026-07-05','Completed','Kiran Rao'),
(15,'Cooling fan malfunction','2026-07-06','2026-07-06','Completed','Mahesh Reddy'),
(9,'Power fluctuation','2026-07-07','2026-07-07','Completed','Rahul Verma'),
(18,'Network connectivity issue','2026-07-08','2026-07-08','Completed','Ajay Kumar'),
(21,'Routine preventive maintenance','2026-07-09','2026-07-09','Completed','Ravi Teja'),
(24,'RFID reader failure','2026-07-10','2026-07-10','Completed','Sandeep Kumar'),
(27,'Emergency stop button faulty','2026-07-11','2026-07-11','Completed','Praveen Reddy'),
(30,'Charging socket worn out','2026-07-12','2026-07-12','Completed','Naresh Kumar'),
(14,'Voltage calibration','2026-07-13','2026-07-13','Completed','Harish Rao'),
(6,'Cooling system cleaning','2026-07-14','2026-07-14','Completed','Venkatesh'),
(10,'Breaker tripping frequently','2026-07-15','2026-07-15','Completed','Ramesh Kumar'),
(17,'Routine inspection','2026-07-16','2026-07-16','Completed','Ajay Kumar'),
(20,'Payment terminal issue','2026-07-17',NULL,'InProgress','Mahesh Reddy'),
(23,'Screen flickering','2026-07-18',NULL,'Scheduled','Anil Sharma'),
(26,'Charging connector loose','2026-07-19','2026-07-19','Completed','Suresh Naidu'),
(28,'Communication module failure','2026-07-20',NULL,'InProgress','Ravi Teja'),
(29,'Annual preventive maintenance','2026-07-21',NULL,'Scheduled','Praveen Reddy');
-- =====================================================
-- 16. NOTIFICATIONS
-- =====================================================
INSERT INTO Notifications
(UserID, Title, Message, Type, IsRead, CreatedAt)
VALUES

(1,'Booking Confirmed','Your charging slot has been confirmed.','Booking',1,'2026-07-01 08:45:00'),
(2,'Charging Started','Your EV charging session has started successfully.','Charging',1,'2026-07-01 10:35:00'),
(3,'Charging Completed','Charging completed successfully. Thank you for using our service.','Charging',0,'2026-07-02 09:05:00'),
(4,'Payment Successful','Payment of ₹690.00 has been received.','Payment',1,'2026-07-02 11:50:00'),
(5,'Membership Activated','Your Gold Membership has been activated successfully.','Membership',0,'2026-07-03 09:15:00'),
(6,'Wallet Recharged','₹1500 has been added to your wallet.','Wallet',1,'2026-07-03 13:35:00'),
(7,'Charging Completed','Your vehicle is fully charged.','Charging',0,'2026-07-04 09:25:00'),
(8,'Reminder','Your booking starts in 30 minutes.','Reminder',1,'2026-07-04 09:30:00'),
(9,'Payment Failed','Your payment could not be processed. Please try again.','Payment',0,'2026-07-05 15:25:00'),
(10,'Special Offer','Get 10% cashback on your next charging session.','Promotion',0,'2026-07-05 18:00:00'),

(11,'Maintenance Notice','One charger at your preferred station is under maintenance.','Maintenance',0,'2026-07-06 08:30:00'),
(12,'Charging Completed','Charging session completed successfully.','Charging',1,'2026-07-06 11:50:00'),
(13,'Payment Successful','Payment completed successfully.','Payment',1,'2026-07-07 14:00:00'),
(14,'Station Available','A charger is now available at your preferred station.','Station',0,'2026-07-07 16:20:00'),
(15,'Membership Renewal','Your membership expires in 7 days.','Membership',0,'2026-07-08 08:00:00'),
(16,'Wallet Cashback','₹100 cashback credited to your wallet.','Wallet',1,'2026-07-08 11:30:00'),
(17,'Booking Confirmed','Your booking has been confirmed successfully.','Booking',1,'2026-07-09 11:45:00'),
(18,'Charging Reminder','Please connect your EV within 10 minutes.','Reminder',0,'2026-07-09 14:00:00'),
(19,'Payment Successful','Payment received successfully.','Payment',1,'2026-07-10 10:40:00'),
(20,'Feedback Request','Please rate your charging experience.','Feedback',0,'2026-07-10 12:15:00');
-- =====================================================
-- 17. LOGIN HISTORY
-- =====================================================
INSERT INTO LoginHistory
(UserID, LoginTime, LogoutTime, IPAddress, DeviceInfo, Status)
VALUES

(1,'2026-07-01 08:10:00','2026-07-01 10:05:00','192.168.1.101','Android','Success'),
(2,'2026-07-01 10:00:00','2026-07-01 11:30:00','192.168.1.102','Windows','Success'),
(3,'2026-07-02 07:50:00','2026-07-02 09:15:00','192.168.1.103','Android','Success'),
(4,'2026-07-02 10:45:00','2026-07-02 12:10:00','192.168.1.104','iPhone','Success'),
(5,'2026-07-03 08:30:00','2026-07-03 10:45:00','192.168.1.105','Android','Success'),
(6,'2026-07-03 13:10:00','2026-07-03 15:10:00','192.168.1.106','Windows','Success'),
(7,'2026-07-04 08:05:00','2026-07-04 09:40:00','192.168.1.107','Android','Success'),
(8,'2026-07-04 09:20:00','2026-07-04 11:05:00','192.168.1.108','iPhone','Success'),
(9,'2026-07-05 14:10:00',NULL,'192.168.1.109','Android','Failed'),
(10,'2026-07-05 16:20:00','2026-07-05 18:05:00','192.168.1.110','Windows','Success'),

(11,'2026-07-06 08:20:00','2026-07-06 10:05:00','192.168.1.111','Android','Success'),
(12,'2026-07-06 10:15:00','2026-07-06 12:05:00','192.168.1.112','Android','Success'),
(13,'2026-07-07 12:20:00','2026-07-07 14:20:00','192.168.1.113','Windows','Success'),
(14,'2026-07-07 15:00:00','2026-07-07 16:40:00','192.168.1.114','iPhone','Success'),
(15,'2026-07-08 07:45:00','2026-07-08 09:35:00','192.168.1.115','Android','Success'),
(16,'2026-07-08 09:50:00','2026-07-08 11:40:00','192.168.1.116','Windows','Success'),
(17,'2026-07-09 11:15:00','2026-07-09 13:10:00','192.168.1.117','Android','Success'),
(18,'2026-07-09 13:40:00','2026-07-09 15:20:00','192.168.1.118','iPhone','Success'),
(19,'2026-07-10 08:50:00','2026-07-10 10:50:00','192.168.1.119','Android','Success'),
(20,'2026-07-10 10:45:00','2026-07-10 12:30:00','192.168.1.120','Windows','Success');
-- =====================================================
-- 18. AUDIT LOGS
-- =====================================================
INSERT INTO AuditLogs
(UserID, Action, TableAffected, RecordID, Details, CreatedAt)
VALUES

(1,'User Login','LoginHistory',1,'User logged into the system.','2026-07-01 08:10:00'),
(1,'Booking Created','Bookings',1,'Charging slot booked successfully.','2026-07-01 08:40:00'),
(1,'Charging Started','ChargingSessions',81,'Charging session started.','2026-07-01 09:00:00'),
(1,'Payment Success','Payments',1,'Payment completed successfully.','2026-07-01 09:50:00'),

(2,'User Login','LoginHistory',2,'User logged into the system.','2026-07-01 10:00:00'),
(2,'Booking Created','Bookings',2,'Charging slot booked successfully.','2026-07-01 10:20:00'),
(2,'Charging Started','ChargingSessions',82,'Charging session started.','2026-07-01 10:30:00'),
(2,'Payment Success','Payments',2,'Payment completed successfully.','2026-07-01 11:20:00'),

(3,'User Login','LoginHistory',3,'User logged into the system.','2026-07-02 07:50:00'),
(3,'Charging Completed','ChargingSessions',83,'Charging completed successfully.','2026-07-02 09:05:00'),

(4,'User Login','LoginHistory',4,'User logged into the system.','2026-07-02 10:45:00'),
(4,'Payment Success','Payments',4,'Payment received successfully.','2026-07-02 11:50:00'),

(5,'User Login','LoginHistory',5,'User logged into the system.','2026-07-03 08:30:00'),
(5,'Wallet Recharge','WalletTransactions',1,'Wallet recharged successfully.','2026-07-03 09:00:00'),

(6,'Maintenance Updated','Maintenance',6,'Maintenance status updated.','2026-07-03 15:00:00'),

(7,'Charging Completed','ChargingSessions',87,'Charging session completed.','2026-07-04 09:20:00'),

(8,'Notification Sent','Notifications',8,'Booking reminder notification sent.','2026-07-04 09:30:00'),

(9,'Payment Failed','Payments',9,'Payment transaction failed.','2026-07-05 15:25:00'),

(10,'Review Submitted','Reviews',10,'Customer submitted station review.','2026-07-05 18:10:00'),

(11,'User Login','LoginHistory',11,'User logged into the system.','2026-07-06 08:20:00'),

(12,'Charging Completed','ChargingSessions',92,'Charging session completed successfully.','2026-07-06 11:50:00');


-- 1. Roles
SELECT * FROM Roles;

-- 2. Users
SELECT * FROM Users;

-- 3. MembershipPlans
SELECT * FROM MembershipPlans;

-- 4. UserMemberships
SELECT * FROM UserMemberships;

-- 5. EVVehicles
SELECT * FROM EVVehicles;

-- 6. ChargingStations
SELECT * FROM ChargingStations;

-- 7. Chargers
SELECT * FROM Chargers;

-- 8. Tariffs
SELECT * FROM Tariffs;

-- 9. Bookings
SELECT * FROM Bookings;

-- 10. ChargingSessions
SELECT * FROM ChargingSessions;

-- 11. ChargingSessionStatus
SELECT * FROM ChargingSessionStatus;

-- 12. Payments
SELECT * FROM Payments;

-- 13. WalletTransactions
SELECT * FROM WalletTransactions;

-- 14. Reviews
SELECT * FROM Reviews;

-- 15. Maintenance
SELECT * FROM Maintenance;

-- 16. Notifications
SELECT * FROM Notifications;

-- 17. LoginHistory
SELECT * FROM LoginHistory;

-- 18. AuditLogs
SELECT * FROM AuditLogs;


