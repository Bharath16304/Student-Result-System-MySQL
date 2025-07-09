#create tables
#create table "Students"
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Department VARCHAR(100),
    Email VARCHAR(255)
);
DESC Students;

#cerate table "Subjects"
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY AUTO_INCREMENT,
    SubjectName VARCHAR(255),
    Department VARCHAR(100)
);
DESC Subjects;

#create table "Marks"
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    SubjectID INT,
    MarksObtained INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);
DESC Marks;

#create table "Results"
CREATE TABLE Results (
    ResultID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    TotalMarks INT,
    Grade VARCHAR(5),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
DESC Results;

#insert values into tables

INSERT INTO Students (Name, Department, Email) VALUES
('David Miller', 'CS', 'david.miller@example.com'),
('Sara Wilson', 'IT', 'sara.wilson@example.com'),
('Emily Clark', 'ECE', 'emily.clark@example.com'),
('Tom Hardy', 'MECH', 'tom.hardy@example.com'),
('Michael Scott', 'CS', 'michael.scott@example.com'),
('Pam Beesly', 'IT', 'pam.beesly@example.com'),
('Jim Halpert', 'ECE', 'jim.halpert@example.com'),
('Dwight Schrute', 'MECH', 'dwight.schrute@example.com'),
('Angela Martin', 'IT', 'angela.martin@example.com'),
('Stanley Hudson', 'CS', 'stanley.hudson@example.com');
SELECT * FROM Students;

INSERT INTO Subjects (SubjectName, Department) VALUES
('Database Systems', 'CS'),
('Web Development', 'IT'),
('Digital Circuits', 'ECE'),
('Mechanics', 'MECH');
SELECT * FROM Subjects;

INSERT INTO Marks (StudentID, SubjectID, MarksObtained) VALUES
(1, 1, 85),
(2, 2, 90),
(3, 3, 88),
(4, 4, 75),
(5, 1, 95),
(6, 2, 80),
(7, 3, 78),
(8, 4, 82),
(9, 2, 92),
(10, 1, 89);
SELECT * FROM Marks;

INSERT INTO Results (StudentID, TotalMarks, Grade) VALUES
(1, 85, 'A'),
(2, 90, 'A'),
(3, 88, 'A'),
(4, 75, 'B'),
(5, 95, 'A+'),
(6, 80, 'B'),
(7, 78, 'B'),
(8, 82, 'B+'),
(9, 92, 'A+'),
(10, 89, 'A');
SELECT * FROM Results;
