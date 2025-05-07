--live oracle sql

CREATE TABLE Instructor_Subject
    (Instructor VARCHAR(10) NOT NULL,
    Subject VARCHAR(30) NOT NULL,
    PRIMARY KEY (Instructor, Subject)); 
    
INSERT INTO Instructor_Subject VALUES ('Aleph', 'MIDI controllers');        
INSERT INTO Instructor_Subject VALUES ('Aleph', 'Sound mixing');         
INSERT INTO Instructor_Subject VALUES ('Aleph', 'Synthesis algorithms');       
INSERT INTO Instructor_Subject VALUES ('Bit', 'EDM synthesis');
INSERT INTO Instructor_Subject VALUES ('Bit', 'Electronic Music Fundamentals');
INSERT INTO Instructor_Subject VALUES ('Bit', 'Sound mixing');
INSERT INTO Instructor_Subject VALUES ('CRC', 'EDM synthesis');
INSERT INTO Instructor_Subject VALUES ('CRC', 'Electronic Music Fundamentals');
INSERT INTO Instructor_Subject VALUES ('Dat', 'MIDI controllers');
INSERT INTO Instructor_Subject VALUES ('Dat', 'EDM synthesis');
INSERT INTO Instructor_Subject VALUES ('Dat', 'Electronic Music Fundamentals');
INSERT INTO Instructor_Subject VALUES ('Emscr', 'MIDI controllers');
INSERT INTO Instructor_Subject VALUES ('Emscr', 'Synthesis algorithms');
INSERT INTO Instructor_Subject VALUES ('Emscr', 'Electronic Music Fundamentals');
INSERT INTO Instructor_Subject VALUES ('Emscr', 'EDM synthesis');

CREATE TABLE new_Subjects
    (Subject1 VARCHAR(30) NOT NULL,
    PRIMARY KEY (Subject1)); 

INSERT INTO new_Subjects VALUES ('Electronic Music Fundamentals');
INSERT INTO new_Subjects VALUES ('MIDI controllers');
INSERT INTO new_Subjects VALUES ('EDM synthesis');

SELECT Instructor
FROM Instructor_Subject
WHERE Subject IN (SELECT Subject1 FROM new_Subjects)
GROUP BY Instructor
HAVING COUNT(DISTINCT Subject) = (SELECT COUNT(DISTINCT Subject1) FROM new_Subjects);
--besides the table for insturctor and subjects, we also create a new table which contains these three subjects to make it more easy to use it when we need people who teach these three subjects.
--first, we find out people who can teach Electronic Music Fundamentals or MIDI controllers or EDM synthesis, which are all the insturctors.
--then, we use COUNT to get the different number of subjects in Subjects table, which is 3.
--after that, we match the different number of subjects which is 3 to our Instructor_Subject table.
--we try to find people who teach all these three subjects by comparing them to our new_Subjects which contains 3 subjects.