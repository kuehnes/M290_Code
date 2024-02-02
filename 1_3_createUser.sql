
-- ---------------------------------------------------------------------------------------------------------------------
-- 3. Neuen User für den Zugriff der App auf die DB anlegen und mit Berechtigungen versehen Anlegen der Datenbank
-- ---------------------------------------------------------------------------------------------------------------------
CREATE USER 'appAdmin'@'localhost' IDENTIFIED BY 'appAdminPW';
ALTER USER 'appAdmin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'appAdminPW';



use appdb;

CREATE TABLE `users` (
                         `user_id` INT AUTO_INCREMENT PRIMARY KEY,
                         `name` VARCHAR(50),
                         `surname` VARCHAR(50),
                         `username` VARCHAR(50) NOT NULL UNIQUE ,
                         `password` VARCHAR(50) NOT NULL
);

INSERT INTO `users` (`name`, `surname`, `username`, `password`) VALUES
                                                                     ( 'Alice', 'Smith', 'alice123', 'password1');
                                                                    ( 'Bob', 'Johnson', 'bob89', 'pass123word'),
                                                                    ( 'Charlie', 'Brown', 'charlieb', 'securePW'),
                                                                    ( 'David', 'Lee', 'davidlee', 'davidpass'),
                                                                    ( 'Emma', 'Garcia', 'emma_g', 'emmapwd123'),
                                                                    ( 'Frank', 'Martinez', 'frankm', 'password123'),
                                                                    ( 'Grace', 'Nguyen', 'graceng', 'gracepass'),
                                                                    ( 'Hannah', 'Kim', 'hannahk', 'hannah123'),
                                                                    ( 'Ian', 'Adams', 'ian_a', 'ianpassword'),
                                                                    ( 'Jessica', 'Wang', 'jessw', 'jessica456');

-- ---------------------------------------------------------------------------------------------------------------------
-- 3.1 Aus Sicherheitsgründen können wir den root-user (Zugriffsprofile) für den Zugriff auf die DB nicht gebrauchen.
--     Wir müssen einen neuen User anlegen, allerdings mit beschränkten Zugriffsrechten auf die DB
--     Damit wir den neuen User nicht doppelt anlegen, lassen wir uns alle DB-User anzeigen.
-- ---------------------------------------------------------------------------------------------------------------------
SELECT user FROM mysql.users;
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
