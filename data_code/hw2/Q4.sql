--live oracle sql

CREATE TABLE Bonus
    (Instructor_name VARCHAR(30) NOT NULL,
    Hourly_rate DECIMAL(4,2) NOT NULL,
    Class_name VARCHAR(30) NOT NULL,
    Class_size INTEGER NOT NULL,
    PRIMARY KEY (Instructor_name, Class_name));
    
INSERT INTO Bonus VALUES ('TIM', 22.5, 'Electronic Music Fundamentals', 20);
INSERT INTO Bonus VALUES ('TIM', 22.5, 'EDM synthesis', 20);
INSERT INTO Bonus VALUES ('TIM', 22.5, 'MIDI controllers', 15);
INSERT INTO Bonus VALUES ('BOB', 22.5, 'MIDI controllers', 35);
INSERT INTO Bonus VALUES ('BOB', 22.5, 'EDM synthesis', 15);
INSERT INTO Bonus VALUES ('TOM', 22.5, 'Sound mixing', 20);
INSERT INTO Bonus VALUES ('JOY', 22.5, 'Sound mixing', 20);
INSERT INTO Bonus VALUES ('JOY', 22.5, 'EDM synthesis', 10);
INSERT INTO Bonus VALUES ('JOY', 22.5, 'Electronic Music Fundamentals', 40);


SELECT MAX(Bonus_amount) AS Highest_paid_amount
FROM
(SELECT SUM(Hourly_rate * Class_size * 0.1) AS Bonus_amount
FROM Bonus
GROUP BY instructor_name)

--According to our first homework design, we assume the rates are the same for all teachers.
--In the query, we use the subquery to finish the requirements.
--In the subquery, we first calculate the bonus by the formula and then use GROUP BY to divide them into different groups by the teachers’ name.
--After getting all the bonus, in the main query, we just use the MAX to get its max.