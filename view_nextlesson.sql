-- Select statement to call the next date and time from schedule from now

SELECT Schedule.Date, Schedule.Time
FROM Schedule
WHERE (Schedule.Date >= NOW() AND Schedule.Time >= NOW())
ORDER BY Schedule.Time ASC
LIMIT 1
;


-- create a view of the next lesson called NextLesson to include date, time, name of student and the subject

CREATE VIEW NextLesson AS
SELECT s1.Date, s1.Time, CONCAT(s2.Firstname, ' ', s2.LastName) AS 'Student', s3.Subject
FROM Schedule s1
INNER JOIN Students AS s2
ON s1.sID = s2.sID
INNER JOIN Subjects AS s3
ON s1.subID = s3.subID
WHERE (s1.Date >= NOW() AND s1.Time >= NOW())
ORDER BY s1.Time ASC
LIMIT 1
;

-- selects the view called NextLesson
SELECT * FROM NextLesson;
