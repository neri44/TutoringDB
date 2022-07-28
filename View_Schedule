-- create a view from base tables (schedule, students, studentsubjects and subjects) called SimpleSchedule to view a simplification of the schedule.

CREATE VIEW SimpleSchedule AS
SELECT concat(day(s1.date), ' ', monthname(s1.date), ' @ ', hour(s1.time), ':', minute(s1.date)) AS 'Tutorial Time', 
concat(s2.FirstName, ' ', s2.Lastname) AS 'Student',
concat(s3.Level, ' ', s4.Subject) AS 'Subject & Level'
FROM Schedule s1
INNER JOIN Students as s2
ON s1.sID = s2.sID
INNER JOIN StudentSubjects as s3
ON s3.sID = s1.sID
INNER JOIN Subjects as s4
ON s3.subID = s4.subID
ORDER BY s1.Date ASC;

-- select statement to view SimpleSchedule

SELECT * FROM SimpleSchedule;
