--live oracle sql

CREATE TABLE Projects
    (PID VARCHAR(10) NOT NULL,
    Step INTEGER NOT NULL,
    Status VARCHAR(5) NOT NULL,
    PRIMARY KEY (PID, Step));
    
INSERT INTO Projects  VALUES ('P100', 0, 'C');
INSERT INTO Projects  VALUES ('P100', 1, 'W');
INSERT INTO Projects  VALUES ('P100', 2, 'W');
INSERT INTO Projects  VALUES ('P201', 0, 'C');
INSERT INTO Projects  VALUES ('P201', 1, 'C');
INSERT INTO Projects  VALUES ('P333', 0, 'W');
INSERT INTO Projects  VALUES ('P333', 1, 'W');
INSERT INTO Projects  VALUES ('P333', 2, 'W');
INSERT INTO Projects  VALUES ('P333', 3, 'W');

SELECT DISTINCT P.PID
FROM Projects P JOIN Projects R
ON P.Step= 0 
AND R.Step = 1
AND R.Status='W' 
AND P.Status = 'C' 
AND P.PID = R.PID;

--To use the same table twice and find its own similarities, we use the inner join and connect the table with ON command.
--To make sure it satisfy all requirements, we use AND command.