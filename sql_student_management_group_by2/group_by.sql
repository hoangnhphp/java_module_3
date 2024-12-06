#Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT 
    SubId, SubName, `Status`, Credit
FROM
    `subject`
WHERE
    Credit = (SELECT 
            MAX(Credit) AS max_credit
        FROM
            `subject`);
#Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    s.SubId, s.SubName, s.`Status`, s.Credit
FROM
    `subject` s join mark on mark.SubId = s.SubId
WHERE
    mark.Mark = (SELECT 
            MAX(m.Mark)
        FROM
            mark m);
#Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
    Student.*, IFNULL(AVG(m.Mark), 0) AS mark_avg
FROM
    Student
        LEFT JOIN
    mark m ON m.StudentId = student.StudentId
GROUP BY student.StudentId
ORDER BY mark_avg DESC;