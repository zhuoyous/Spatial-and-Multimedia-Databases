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



SELECT DISTINCT I1.Instructor
FROM Instructor_Subject I1
JOIN 
Instructor_Subject I2 ON I1.Instructor = I2.Instructor
JOIN
Instructor_Subject I3 ON I2.Instructor = I3.Instructor
WHERE I1.Subject = 'Electronic Music Fundamentals' 
AND I2.Subject = 'MIDI controllers' 
AND I3.Subject = 'EDM synthesis';

--to get teachers who teach these three subjects.
--we could use inner join method by conncect the same table three times under the conditon: Instructor.
--then, we use the WHERE command to find people who could not only teach Electronic Music Fundamentals but also  MIDI controllers and EDM synthesis.
--this is achieved under that we are considering the same insturctor.