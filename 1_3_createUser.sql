

drop database appDB;

create database appdb;

use appdb;

drop USER 'app';

CREATE USER 'app' IDENTIFIED BY 'appAdminPW';
ALTER USER 'app' IDENTIFIED WITH mysql_native_password BY 'appAdminPW';





CREATE TABLE `users` (
                         `id` INT AUTO_INCREMENT PRIMARY KEY,
                         `name` VARCHAR(50),
                         `surname` VARCHAR(50),
                         `username` VARCHAR(50) NOT NULL UNIQUE ,
                         `password` VARCHAR(50) NOT NULL
);



INSERT INTO `users` (`name`, `surname`, `username`, `password`) VALUES
                                                                     ( 'Alice', 'Smith', 'alice123', 'password1'),
                                                                    ('Bob', 'Johnson', 'bob89', 'pass123word'),
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


CREATE TABLE `grades` (
                          `grades_id` INT PRIMARY KEY AUTO_INCREMENT,
                          `user_id` INT,
                          `module_id` INT,
                          `semester_id` INT,
                          `grade` DECIMAL(3, 2),
                          FOREIGN KEY (`semester_id`) References `semesters`(`semester_id`),
                          FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
                          FOREIGN KEY (`module_id`) REFERENCES `modules`(`module_id`)
);


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
                               FOREIGN KEY (`user_id`) REFERENCES  `users`(`id`),
                               FOREIGN KEY (`module_id`) REFERENCES `modules`(`module_id`),
                               FOREIGN KEY (`grade_id`) REFERENCES `grades`(`grades_id`),
                               FOREIGN KEY (`semester_id`) REFERENCES `semesters`(`semester_id`)
);




INSERT INTO `certificate` (`user_id`, `module_id`, `grade_id`, `semester_id`) VALUES
                                                                                  (1, 1, 1, 1),
                                                                                  (2, 1, 2, 1),
                                                                                  (1, 2, 3, 2),
                                                                                  (3, 2, 4, 2),
                                                                                  (4, 3, 5, 3),
                                                                                  (5, 4, 6, 4),
                                                                                  (6, 5, 7, 5),
                                                                                  (7, 6, 8, 6),
                                                                                  (8, 7, 9, 7),
                                                                                  (9, 8, 10, 8);

--------------------------------------------------
-- Datenbank anfragen (manipulationen)
----------------------------------------------

ALTER TABLE `users`
    MODIFY COLUMN `username` VARCHAR(50);

-- gibt es schon
ALTER TABLE `grades` ADD COLUMN `semester_id` INT AFTER `module_id`;

DELETE FROM grades WHERE grades_id = 1;

UPDATE `grades` SET `semester_id` = 1 WHERE grades_id = 2;


-- ---------------------------------------------------------------------------------------------------------------------
-- 3.1 Aus Sicherheitsgründen können wir den root-user (Zugriffsprofile) für den Zugriff auf die DB nicht gebrauchen.
--     Wir müssen einen neuen User anlegen, allerdings mit beschränkten Zugriffsrechten auf die DB
--     Damit wir den neuen User nicht doppelt anlegen, lassen wir uns alle DB-User anzeigen.
-- ---------------------------------------------------------------------------------------------------------------------
SELECT user FROM mysql.user;
SELECT user, host FROM mysql.user;


-- ---------------------------------------------------------------------------------------------------------------------
-- 3.2 Gegebenenfalls müssen wir DB-User löschen
-- ---------------------------------------------------------------------------------------------------------------------
DROP USER 'appAdmin'@'localhost';


-- ---------------------------------------------------------------------------------------------------------------------
-- 3.3 Aus Sicherheitsgründen können wir den root-user für unseren Zugriff auf die DB nicht gebrauchen.
--     Daher legen wir einen neuen User an mit eingeschränkten Berechtigungen.
-- ---------------------------------------------------------------------------------------------------------------------
CREATE USER  'appAdmin'@'localhost' IDENTIFIED BY'appAdminPW';
ALTER USER 'appAdmin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'appAdminPW';
--    host: 'localhost',
--    user: 'appAdmin',
--    password: 'appAdminPW',
--    database: 'appDB',

-- ---------------------------------------------------------------------------------------------------------------------
-- 3.4 Privilegien/Berechtigungen setzten für die neuen User auf der neuen DB
-- ---------------------------------------------------------------------------------------------------------------------
GRANT all privileges ON appDB.* TO 'appAdmin'@'localhost';


-- ---------------------------------------------------------------------------------------------------------------------
-- 3.5 Berechtigungen müssen jetzt noch aktiviert werden
-- ---------------------------------------------------------------------------------------------------------------------
FLUSH PRIVILEGES;

-- ---------------------------------------------------------------------------------------------------------------------
-- 3.6 Berechtigungen anzeigen lassen
-- ---------------------------------------------------------------------------------------------------------------------
SELECT user,host FROM mysql.user;
SHOW GRANTS FOR appAdmin@localhost;
