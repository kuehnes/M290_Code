create database scratch_1;

use scratch_1;

show databases;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  surname VARCHAR(50),
  username VARCHAR(50),
  birthdate DATE
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

INSERT INTO users (name, surname, username, birthdate) VALUES
    ('John', 'Doe', 'johndoe87', '1990-05-15'),
    ('Alice', 'Smith', 'asmith', '1985-09-20'),
    ('Michael', 'Johnson', 'mjohn', '1992-03-10'),
    ('Emily', 'Brown', 'em_brown', '1988-11-25'),
    ('Sophia', 'Williams', 'sophwill', '1995-07-08'),
    ('Daniel', 'Taylor', 'dantay', '1993-02-18'),
    ('Olivia', 'Miller', 'olivm', '1997-04-30'),
    ('Ethan', 'Anderson', 'eth_and', '1991-12-05'),
    ('Ava', 'Wilson', 'ava_wil', '1987-06-12'),
    ('Liam', 'Martinez', 'liam_m', '1994-08-22');

CREATE TABLE modules (
  id INT AUTO_INCREMENT PRIMARY KEY,
  module_name VARCHAR(255) NOT NULL
);

INSERT INTO modules (module_name) VALUES
('264'),
('265'),
('270'),
('271'),
('283'),
('287'),
('286'),
('213'),
('266'),
('273');
('279'),
('278'),
('284'),
('307'),
('288'),
('431');
('268');
('267');
('274');
('281');
('280');
('285');
('291');
('290');
('306');
('275');
('282');


CREATE TABLE semesters (
  semester_id INT AUTO_INCREMENT PRIMARY KEY,
  semester_name VARCHAR(255) NOT NULL
);

INSERT INTO semesters (semester_name) VALUES
('Herbstsemester 2021'),
('Frühlingssemester 2022'),
('Herbstsemester 2022'),
('Frühlingssemester 2023'),
('Herbstsemester 2023'),
('Frühlingssemester 2024');
('Herbstsemester 2024'),
('Frühlingssemester 2025'),
('Herbstsemester 2025')


CREATE TABLE grades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  module_id INT NOT NULL,
  semester_id INT NOT NULL,
  grade DECIMAL(3,1) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (module_id) REFERENCES modules(module_id),
  FOREIGN KEY (semester_id) REFERENCES semesters(semester_id)
);

INSERT INTO grades (user_id, module_id, semester_id, grade) VALUES
(1, 1, 1, 4.5),
(1, 2, 1, 5.0),
(1, 3, 2, 4.0),
(2, 1, 1, 3.8),
(2, 2, 2, 4.2),
(2, 3, 2, 5.0),
(3, 1, 3, 4.0),
(3, 2, 3, 4.5),
(3, 3, 4, 3.7),
(4, 1, 3, 4.8),
(4, 2, 4, 5.0),
(4, 3, 4, 4.2),
(5, 1, 5, 3.5),
(5, 2, 5, 4.0),
(5, 3, 6, 4.5),
(6, 1, 5, 4.7),
(6, 2, 6, 5.0),
(6, 3, 6, 4.8),
(7, 1, 7, 3.9),
(7, 2, 7, 4.0),
(7, 3, 8, 4.3),
(8, 1, 7, 4.5),
(8, 2, 8, 4.0),
(8, 3, 8, 4.7),
(9, 1, 9, 4.0),
(9, 2, 9, 4.5),
(9, 3, 10, 4.8),
(10, 1, 9, 3.5),
(10, 2, 10, 4.0),
(10, 3, 10, 3.9);


SELECT users.username AS Benutzername, modules.module_name AS Modul, semesters.semester_name AS Semester,
       grades.grade AS Note
FROM grades
JOIN users ON grades.user_id = users.user_id
JOIN modules ON grades.module_id = modules.module_id
JOIN semesters ON grades.semester_id = semesters.semester_id
WHERE users.username = 'UsernameDesBenutzers';
