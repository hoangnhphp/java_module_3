SELECT *
FROM Student where StudentName like "h%";

SELECT *
FROM class
WHERE date_format(class.StartDate, "%c") = 12;

SELECT *
FROM subject
WHERE Credit between 3 and 5;

SET SQL_SAFE_UPDATES = 0;
update student set ClassId = 2 where StudentName = "Hung";
SET SQL_SAFE_UPDATES = 1;

SELECT student.StudentName, mark.SubId, mark.Mark
FROM Student join mark on student.StudentId = mark.StudentId
order by mark.Mark desc, student.StudentName asc;