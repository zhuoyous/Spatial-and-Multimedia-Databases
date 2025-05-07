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

SELECT DISTINCT Instructor 
FROM Instructor_Subject WHERE Subject = 'Electronic Music Fundamentals'
INTERSECT
SELECT DISTINCT Instructor
FROM Instructor_Subject WHERE Subject = 'MIDI controllers'
INTERSECT
SELECT DISTINCT Instructor
FROM Instructor_Subject WHERE Subject = 'EDM synthesis';

--we want to find teachers who can teach these three subjects
--we can first get insturctors who could teach Electronic Music Fundamentals.Get insturctors who could teach MIDI controllers. Get insturctors who could teach EDM synthesis.
--after we get these, we could use INTERSECT to find thouse who teach all these.