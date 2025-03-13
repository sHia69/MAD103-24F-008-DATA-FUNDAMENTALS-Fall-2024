-- Table to store work order information
CREATE TABLE WorkOrder (
    WorkOrderID INT PRIMARY KEY,
    DateOfService DATE,
    VehicleVIN VARCHAR(17),
    KMAtService INT,
    MechanicID VARCHAR(10)
);

-- Table to store service codes
CREATE TABLE ServiceCode (
    ServiceCodeID INT PRIMARY KEY,
    ServiceDescription VARCHAR(255)
);

-- Table to store the relationship between work orders and service codes
CREATE TABLE WorkOrderService (
    WorkOrderID INT,
    ServiceCodeID INT,
    PRIMARY KEY (WorkOrderID, ServiceCodeID),
    FOREIGN KEY (WorkOrderID) REFERENCES WorkOrder(WorkOrderID),
    FOREIGN KEY (ServiceCodeID) REFERENCES ServiceCode(ServiceCodeID)
);

-- Table to store vehicle information
CREATE TABLE Vehicle (
    VehicleVIN VARCHAR(17) PRIMARY KEY,
    VehicleDescription VARCHAR(255)
);

-- Table to store mechanic information
CREATE TABLE Mechanic (
    MechanicID VARCHAR(10) PRIMARY KEY,
    MechanicName VARCHAR(255)
);

-- Inserting data into the tables
INSERT INTO WorkOrder (WorkOrderID, DateOfService, VehicleVIN, KMAtService, MechanicID)
VALUES (10356, '2021-03-23', '1HGBH41JXMN109186', 98032, 'MECH 01'), (20342, '2020-04-04', 'JN3MS37A9PW202929', 210532, 'MECH 02'), (12321, '2020-02-10', '1G6DH8EYXB0865975', 66242, 'MECH 01');

INSERT INTO ServiceCode (ServiceCodeID, ServiceDescription)
VALUES (1, 'Oil Change'), (2, 'Engine Check'), (3, 'Brakes'), (4, 'Transmission');

INSERT INTO WorkOrderService (WorkOrderID, ServiceCodeID)
VALUES (10356, 1), (10356, 2), (10356, 3), (20342, 2), (12321, 1), (12321, 4);

INSERT INTO Vehicle (VehicleVIN, VehicleDescription)
VALUES ('1HGBH41JXMN109186', 'Vehicle 1 Description'), ('JN3MS37A9PW202929', 'Vehicle 2 Description'), ('1G6DH8EYXB0865975', 'Vehicle 3 Description');

INSERT INTO Mechanic (MechanicID, MechanicName)
VALUES ('MECH 01', 'Fred Fixit'), ('MECH 02', 'Ralph Wreckit');