/**************************************************************/
/*                                                            */
/*    CSC 4480 Organization of Databases - Final Project      */
/*    Louis Pitingolo, Henry Zinn, Pat Heard                  */
/*    Theme Park Schema                                       */
/*                                                            */
/**************************************************************/

DROP TABLE PARK_ZONE CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE ATTRACTION CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE ACTIVITYLOG CASCADE CONSTRAINTS;
DROP TABLE WORKS_ON CASCADE CONSTRAINTS;

CREATE TABLE PARK_ZONE(
    ZoneID           Int             NOT NULL,
    ZoneName         VarChar(50)     NOT NULL,
    OpeningDate      Date            NULL,
    CONSTRAINT       ZONE_PK     PRIMARY KEY(ZoneID)
);

CREATE TABLE ATTRACTION(
    AttractionID     Int             NOT NULL,
    AttractionName   VarChar(50)     NOT NULL,
    AttractionType   VarChar(50)     NOT NULL,
    DateOpened       Date            NOT NULL,
    CurrStatus       VarChar(15)     NOT NULL,
    ZoneID           Int             NOT NULL,
    CONSTRAINT       ATTRACTION_PK      PRIMARY KEY(AttractionID),
    FOREIGN KEY (ZoneID) REFERENCES Park_Zone(ZoneID)
    );
    
CREATE TABLE EMPLOYEE(
    EmployeeID      Int             NOT NULL,
    FirstName       VarChar(20)     NOT NULL,
    MiddelInit      Char(1)         NULL,
    LastName        VarChar(20)     NOT NULL,
    JobTitle        VarChar(50)     NOT NULL, 
    Birthdate       Date            NOT NULL,
    Address         VarChar(50)     NULL,
    Salary          Int             NOT NULL,
    CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EmployeeID)
    );
    
CREATE TABLE CUSTOMER(
    CustomerID      Int             NOT NULL,
    Fname           VarChar(20)     NOT NULL,
    Lname           VarChar(20)     NOT NULL,
    TicketType      VarChar(20)     NOT NULL,
    CONSTRAINT CUSTOMER_PK PRIMARY KEY(CustomerID)
    );
    
CREATE TABLE ActivityLog(
    CustomerID      Int         NOT NULL,
    AttractionID    Int         NOT NULL,
    AtrTime         DATE        NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (AttractionID) REFERENCES Attraction(AttractionID)
    );

CREATE TABLE Works_On(
    EmployeeID      Int     NOT NULL,
    AttractionID    Int     NOT NULL,
    ShiftHours      Int     NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (AttractionID) REFERENCES Attraction(AttractionID)
    );
