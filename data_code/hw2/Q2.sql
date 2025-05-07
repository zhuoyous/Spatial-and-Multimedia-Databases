--live oracle sql

CREATE TABLE enrollment  
    (SID INTEGER NOT NULL, 
    ClassName VARCHAR(30) NOT NULL, 
    Grade CHAR(1),
    PRIMARY KEY (SID, ClassName));
    
INSERT INTO ENROLLMENT VALUES (123, 'Synthesis algorithms', 'A');
INSERT INTO ENROLLMENT VALUES (123, 'EDM synthesis', 'B');
INSERT INTO ENROLLMENT VALUES (123, 'MIDI controllers', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'Sound mixing', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'EDM synthesis', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'Electronic Music Fundamentals', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'MIDI controllers', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'MIDI controllers', 'A');
INSERT INTO ENROLLMENT VALUES (345, 'Electronic Music Fundamentals', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'EDM synthesis', 'A');
INSERT INTO ENROLLMENT VALUES (555, 'EDM synthesis', 'B');
INSERT INTO ENROLLMENT VALUES (555, 'Electronic Music Fundamentals', 'B');
INSERT INTO ENROLLMENT VALUES (213, 'Electronic Music Fundamentals', 'A');


SELECT CLASSNAME, COUNT(DISTINCT SID) AS Total
FROM enrollment
GROUP BY ClassName
ORDER BY Total DESC, ClassName DESC;

--To get the total students enrolled in each section, we should first use count function to count the number, then use group by command to divide it into gruops
--Last, to get its reversing order, we use order by and desc order. 