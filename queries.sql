-- 1. List all students and their enrolled courses
SELECT s.name AS student_name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- 2. Show average rating for each course
SELECT c.course_name, AVG(f.rating) AS avg_rating
FROM Courses c
JOIN Feedback f ON c.course_id = f.course_id
GROUP BY c.course_name;

-- 3. Find courses with no enrollments
SELECT course_name
FROM Courses
WHERE course_id NOT IN (SELECT course_id FROM Enrollments);

-- 4. Number of students per course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- 5. Get all feedback with student and course names
SELECT s.name AS student, c.course_name, f.rating, f.comments
FROM Feedback f
JOIN Students s ON f.student_id = s.student_id
JOIN Courses c ON f.course_id = c.course_id;
