
 Student Management System - SQLite Version



CREATE TABLE IF NOT EXISTS Classes (
    ClassID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClassName TEXT NOT NULL,
    Section TEXT
);

CREATE TABLE IF NOT EXISTS Students (
    StudentID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Age INTEGER,
    Gender TEXT,
    ClassID INTEGER,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID) 
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


INSERT INTO Classes (ClassName, Section) VALUES 
('Mathematics', 'A'),
('Science', 'B'),
('English', 'C');

INSERT INTO Students (FirstName, LastName, Age, Gender, ClassID) VALUES
('Ali', 'Khan', 15, 'Male', 1),
('Sara', 'Ahmed', 14, 'Female', 2),
('Hassan', 'Raza', 16, 'Male', 3),
('Ayesha', 'Iqbal', 15, 'Female', 1),
('Bilal', 'Shah', 17, 'Male', 2);


SELECT * FROM Students;
SELECT * FROM Classes;


SELECT S.StudentID, S.FirstName, S.LastName, C.ClassName, C.Section
FROM Students S
LEFT JOIN Classes C ON S.ClassID = C.ClassID;


INSERT INTO Students (FirstName, LastName, Age, Gender, ClassID)
VALUES ('Zain', 'Malik', 16, 'Male', 3);


UPDATE Students
SET Age = 17
WHERE StudentID = 1;

UPDATE Students
SET ClassID = 2
WHERE StudentID = 3;


DELETE FROM Students
WHERE StudentID = 2;


DELETE FROM Classes
WHERE ClassID = 3;