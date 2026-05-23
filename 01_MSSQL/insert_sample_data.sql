USE EduSurveyHubDB;
GO

INSERT INTO Roles (RoleName)
VALUES
('Student'),
('Instructor'),
('Admin');

INSERT INTO Users (FullName, Email, PasswordHash, RoleID)
VALUES
('Ayse Demir', 'ayse@gmail.com', '123hash', 1),
('Mehmet Kaya', 'mehmet@gmail.com', '456hash', 2),
('Zeynep Yildiz', 'zeynep@gmail.com', '789hash', 1),
('Ali Can', 'ali@gmail.com', '111hash', 1);

INSERT INTO Categories (CategoryName, Description)
VALUES
('Programming', 'Software development courses'),
('Database Systems', 'SQL and NoSQL technologies'),
('Artificial Intelligence', 'Machine learning and AI');

INSERT INTO Courses
(CourseTitle, Description, CategoryID, InstructorID, Price)
VALUES
('Introduction to MongoDB', 'Learn MongoDB fundamentals', 2, 2, 499.99),
('Advanced SQL Server', 'Comprehensive MSSQL training', 2, 2, 699.99),
('Python for Data Science', 'Data analysis with Python', 1, 2, 799.99);

INSERT INTO Enrollments (UserID, CourseID)
VALUES
(1,1),
(3,2),
(4,3);

INSERT INTO Surveys (SurveyTitle, CourseID)
VALUES
('MongoDB Course Feedback',1),
('SQL Server Evaluation',2),
('Python Course Survey',3);

INSERT INTO SurveyQuestions
(SurveyID, QuestionText, QuestionType)
VALUES
(1,'How do you rate the course?','Rating'),
(1,'What did you like most?','Text'),
(2,'Was the content sufficient?','Yes/No'),
(3,'Would you recommend this course?','Yes/No');

INSERT INTO Payments (UserID, CourseID, Amount)
VALUES
(1,1,499.99),
(3,2,699.99),
(4,3,799.99);

INSERT INTO Certificates
(UserID, CourseID, CertificateCode)
VALUES
(1,1,'CERT-MONGO-001'),
(3,2,'CERT-MSSQL-002'),
(4,3,'CERT-PYTHON-003');
