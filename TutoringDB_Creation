/*
Create a database called TutoringDB with tables named 
Students, Subjects, Rates, Examboard, StudentSubjects, 
Schedule, Payments, Cancellations, Reschedule
with primary and foreign keys assigned.
*/

-- Create a database called TutoringDB 
CREATE DATABASE TutoringDB;

USE TutoringDB;
-- 1 Create a table called Students
CREATE TABLE Students (
    sID int NOT NULL,
    FirstName varchar(20) NOT NULL,
    LastName varchar(20),
    PRIMARY KEY (sID)
);


-- 2 Create a table called Subjects
CREATE TABLE Subjects (
	subID int NOT NULL, 
    Subject varchar(20) NOT NULL,
    PRIMARY KEY (subID)
    );

    
-- 3 Create a table called Rates
CREATE TABLE Rates (
	Level varchar(50) NOT NULL,
    Rate FLOAT(5,2) NOT NULL,
    PRIMARY KEY (Level)
    );

    
-- 4 Create a table called Examboard
CREATE TABLE Examboard (
	ebID int NOT NULL, 
    Examboard varchar(20) NOT NULL, 
    PRIMARY KEY (ebID)
    );

    
-- 5 Create a table called StudentSubjects
CREATE TABLE StudentSubjects (
	sID int NOT NULL,
    subID int NOT NULL, 
    Level varchar(50) NOT NULL, 
    ebID int NOT NULL,
    FOREIGN KEY(sID) REFERENCES Students(sID), 
    FOREIGN KEY(subID) REFERENCES Subjects(subID), 
    FOREIGN KEY(Level) REFERENCES Rates(Level), 
    FOREIGN KEY(ebID) REFERENCES Examboard(ebID)
    );


-- 6 Create a table called Schedule
CREATE TABLE Schedule (
	LessonID int NOT NULL,
    Date date, 
    Time time, 
    sID int NOT NULL,
    subID int NOT NULL, 
    PRIMARY KEY (LessonID), 
    FOREIGN KEY(sID) REFERENCES Students(sID), 
    FOREIGN KEY(subID) REFERENCES Subjects(subID)
    );


-- 7 Create a table called Payments
CREATE TABLE Payments (
	LessonID int NOT NULL, 
    Status ENUM('paid', 'outstanding', 'cancelled') NOT NULL,
    Received TIMESTAMP,
    FOREIGN KEY (LessonID) REFERENCES Schedule(LessonID)
    );

    
-- 8 Create a table called Cancellations
CREATE TABLE Cancellations (
	LessonID int NOT NULL, 
    Reason VARCHAR(50), 
    FOREIGN KEY (LessonID) REFERENCES Schedule(LessonID)
    );


-- 9 Create a table called Reschedule
CREATE TABLE Reschedule (
	LessonID int NOT NULL, 
    Reason VARCHAR(50), 
    NewDate DATE NOT NULL,
    NewTime Time NOT NULL,
    FOREIGN KEY (LessonID) REFERENCES Schedule(LessonID)
    );
