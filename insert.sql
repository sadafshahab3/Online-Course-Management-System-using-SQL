-- Instructors
INSERT INTO Instructors (name, expertise) VALUES 
('Dr. Smith', 'Data Science'),
('Ms. Johnson', 'Web Development');

-- Courses
INSERT INTO Courses (course_name, instructor_id, start_date, end_date) VALUES
('Intro to SQL', 1, '2024-03-01', '2024-04-01'),
('Full-Stack Web', 2, '2024-03-15', '2024-05-15');

-- Students
INSERT INTO Students (name, email, registration_date) VALUES
('Alice', 'alice@example.com', '2024-02-20'),
('Bob', 'bob@example.com', '2024-03-01'),
('Charlie', 'charlie@example.com', '2024-03-10');

-- Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-03-02'),
(2, 1, '2024-03-03'),
(3, 2, '2024-03-16');

-- Feedback
INSERT INTO Feedback (student_id, course_id, rating, comments) VALUES
(1, 1, 5, 'Excellent course!'),
(2, 1, 4, 'Very useful.'),
(3, 2, 3, 'Could be better.');
