-- ---------------------------------------------------------------------------------------------------------------------
-- 4. Anlegen und füllen der Tabelle
-- ---------------------------------------------------------------------------------------------------------------------
show databases;

create database `efzdb`;

use `appdb`;

CREATE TABLE `users` (
                         `user_id` INT AUTO_INCREMENT PRIMARY KEY,
                         `name` VARCHAR(50),
                         `surname` VARCHAR(50),
                         `username` VARCHAR(50) NOT NULL UNIQUE ,
                         `password` VARCHAR(50) NOT NULL
);

ALTER TABLE ``
    DROP COLUMN ``;

ALTER TABLE ``
    MODIFY COLUMN `` VARCHAR(50);



show table `users`;

drop table `users`;

select * from `semesters`;
select * from `user`;
INSERT INTO `user` (`name`, `surname`, `username`, `password`) VALUES
                                                                    ( 'Alice', 'Smith', 'alice123', 'password1'),
                                                                    ( 'Bob', 'Johnson', 'bob89', 'pass123word'),
                                                                    ( 'Charlie', 'Brown', 'charlieb', 'securePW'),
                                                                    ( 'David', 'Lee', 'davidlee', 'davidpass'),
                                                                    ( 'Emma', 'Garcia', 'emma_g', 'emmapwd123'),
                                                                    ( 'Frank', 'Martinez', 'frankm', 'password123'),
                                                                    ( 'Grace', 'Nguyen', 'graceng', 'gracepass'),
                                                                    ( 'Hannah', 'Kim', 'hannahk', 'hannah123'),
                                                                    ( 'Ian', 'Adams', 'ian_a', 'ianpassword'),
                                                                    ( 'Jessica', 'Wang', 'jessw', 'jessica456');



CREATE TABLE `modules` (
                           `module_id` INT AUTO_INCREMENT PRIMARY KEY,
                           `module_name` VARCHAR(255) NOT NULL
);


INSERT INTO `modules` (`module_name`) VALUES
                                          ('200'),
                                          ('201'),
                                          ('202'),
                                          ('203'),
                                          ('204'),
                                          ('205'),
                                          ('206'),
                                          ('207'),
                                          ('208'),
                                          ('209'),
                                          ('210'),
                                          ('211'),
                                          ('212'),
                                          ('213'),
                                          ('214'),
                                          ('215'),
                                          ('216'),
                                          ('217'),
                                          ('218'),
                                          ('219'),
                                          ('220'),
                                          ('221'),
                                          ('222'),
                                          ('223'),
                                          ('224'),
                                          ('225'),
                                          ('226'),
                                          ('227'),
                                          ('228'),
                                          ('229'),
                                          ('230'),
                                          ('231'),
                                          ('232'),
                                          ('233'),
                                          ('234'),
                                          ('235'),
                                          ('236'),
                                          ('237'),
                                          ('238'),
                                          ('239'),
                                          ('240'),
                                          ('241'),
                                          ('242'),
                                          ('243'),
                                          ('244'),
                                          ('245'),
                                          ('246'),
                                          ('247'),
                                          ('248'),
                                          ('249'),
                                          ('250'),
                                          ('251'),
                                          ('252'),
                                          ('253'),
                                          ('254'),
                                          ('255'),
                                          ('256'),
                                          ('257'),
                                          ('258'),
                                          ('259'),
                                          ('260'),
                                          ('261'),
                                          ('262'),
                                          ('263'),
                                          ('264'),
                                          ('265'),
                                          ('266'),
                                          ('267'),
                                          ('268'),
                                          ('269'),
                                          ('270'),
                                          ('271'),
                                          ('272'),
                                          ('273'),
                                          ('274'),
                                          ('275'),
                                          ('276'),
                                          ('277'),
                                          ('278'),
                                          ('279'),
                                          ('280'),
                                          ('281'),
                                          ('282'),
                                          ('283'),
                                          ('284'),
                                          ('285'),
                                          ('286'),
                                          ('287'),
                                          ('288'),
                                          ('289'),
                                          ('290'),
                                          ('291'),
                                          ('292'),
                                          ('293'),
                                          ('294'),
                                          ('295'),
                                          ('296'),
                                          ('297'),
                                          ('298'),
                                          ('299'),
                                          ('300');


show `modules`;

select * from modules;

CREATE TABLE `semesters` (
                             `semester_id` INT AUTO_INCREMENT PRIMARY KEY,
                             `semester_name` VARCHAR(255) NOT NULL
);


INSERT INTO `semesters` (`semester_name`) VALUES
                                              ('Herbstsemester 2021'),
                                              ('Frühlingssemester 2022'),
                                              ('Herbstsemester 2022'),
                                              ('Frühlingssemester 2023'),
                                              ('Herbstsemester 2023'),
                                              ('Frühlingssemester 2024'),
                                              ('Herbstsemester 2024'),
                                              ('Frühlingssemester 2025'),
                                              ('Herbstsemester 2025'),
                                              ('Frühlingssemester 2026');

select * from semesters;

drop table `grades`;

select * from user;

CREATE TABLE `grades` (
                          `user_id` INT,
                          `module_id` INT,
                          `semester_id` INT,
                          `grade` DECIMAL(3, 2),
                          FOREIGN KEY (`semester_id`) REFERENCES `semesters`(`semester_id`),
                          FOREIGN KEY (`user_id`) REFERENCES `user`(`ID`),
                          FOREIGN KEY (`module_id`) REFERENCES `modules`(`module_id`)
);

ALTER TABLE `users`
    MODIFY COLUMN `grade_id` VARCHAR(50);

ALTER TABLE `grades` ADD COLUMN `semester_id` INT AFTER `module_id`;

DELETE * FROM `grades` WHERE 1

UPDATE `grades` SET `semester_id` = 1 WHERE 1;



INSERT INTO `grades` (`user_id`, `module_id`, `semester_id`, `grade`) VALUES
                                                                          (1, 1, 1, 4.5),
                                                                          (2, 1, 2, 3.2),
                                                                          (1, 2, 3, 5.8),
                                                                          (3, 2, 5, 2.5),
                                                                          (4, 3, 4, 4.0),
                                                                          (5, 4, 6, 3.7),
                                                                          (6, 5, 7, 4.2),
                                                                          (7, 6, 8, 3.9),
                                                                          (8, 7, 9, 2.8),
                                                                          (9, 8, 10, 4.5);


CREATE TABLE `certificate` (
                               `certificate_id` INT PRIMARY KEY AUTO_INCREMENT,
                               `user_id` INT,
                               `module_id` INT,
                               `grade_id` INT,
                               `semester_id` INT,
                               FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`),
                               FOREIGN KEY (`module_id`) REFERENCES `modules`(`module_id`),
                               FOREIGN KEY (`grade_id`) REFERENCES `grades`(`grade_id`),
                               FOREIGN KEY (`semester_id`) REFERENCES `semesters`(`semester_id`)
);


CREATE TABLE `certificate` (
                               `certificate_id` INT AUTO_INCREMENT PRIMARY KEY,
                               `user_id` INT,
                               `module_id` INT,
                               `semester_id` INT,
                               FOREIGN KEY (`user_id`) REFERENCES `user`(`ID`),
                               FOREIGN KEY (`module_id`) REFERENCES `modules`(`module_id`),
                               FOREIGN KEY (`semester_id`) REFERENCES `semesters`(`semester_id`)
);

drop table appdb.certificate;
drop table grades;
drop table modules;
drop table semesters;
drop table users;

INSERT INTO `certificate` (`certificate_id`, `user_id`, `module_id`, `semester_id`) VALUES
                                                                                  (1, 1, 1, 1),
                                                                                  (2, 2, 2, 1),
                                                                                  (3, 2, 3, 2),
                                                                                  (4, 2, 4, 2),
                                                                                  (5, 3, 5, 3),
                                                                                  (6, 4, 6, 4),
                                                                                  (7, 5, 7, 5),
                                                                                  (8, 6, 8, 6),
                                                                                  (9, 7, 9, 7),
                                                                                  (10, 8, 10, 8);


select * from user;


SELECT DISTINCT user.username AS Benutzername, modules.module_name AS Modul, semesters.semester_name AS Semester,
                grades.grade AS Note
FROM grades
         JOIN user ON grades.user_id = user.ID
         JOIN modules ON grades.module_id = modules.module_id
         JOIN semesters ON grades.semester_id = semesters.semester_id
WHERE user.username = 'johndoe';

SELECT
    user.name AS Name,
    user.vorname AS Vorname,
    modules.module_name AS Modul,
    semesters.semester_name AS Semester,
    grades.grade AS Note
FROM
    user
        JOIN grades ON user.ID = grades.user_id
        JOIN modules ON grades.module_id = modules.module_id
        JOIN semesters ON grades.semester_id = semesters.semester_id
WHERE
        user.username = 'oliviad';


-- ---------------------------------------------------------------------------------------------------------------------
-- 4.1 Die neue DB wird in die Console genommen, damit Berechtigungen müssen jetzt noch aktiviert werden
-- ---------------------------------------------------------------------------------------------------------------------
USE appdb;

-- ---------------------------------------------------------------------------------------------------------------------
-- 4.2 Sicherheitshalber löschen der Tabelle customer
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS user;


-- ---------------------------------------------------------------------------------------------------------------------
-- 4.3 Anlegen der Tabelle user
-- ---------------------------------------------------------------------------------------------------------------------
CREATE TABLE user (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    vorname VARCHAR(50),
    username VARCHAR(50)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- 4.4 Füllen der Tabelle mit Initialdaten
-- ---------------------------------------------------------------------------------------------------------------------
INSERT INTO user (name, vorname, username) VALUES
('Doe', 'John', 'johndoe'),
('Smith', 'Alice', 'alicesmith'),
('Johnson', 'Michael', 'michaelj'),
('Williams', 'Emma', 'emmawill'),
('Brown', 'James', 'jamesbrown'),
('Davis', 'Olivia', 'oliviad'),
('Garcia', 'Daniel', 'danigarcia'),
('Wilson', 'Sophia', 'sophiawil'),
('Martinez', 'William', 'willmart'),
('Anderson', 'Ava', 'avaanderson');


-- ---------------------------------------------------------------------------------------------------------------------
-- 4.5 Einige Kontrollselects
-- ---------------------------------------------------------------------------------------------------------------------
Select * from user;
select current_date;