CREATE DATABASE events;
USE events;

CREATE TABLE IF NOT EXISTS public_events
(
event_date DATETIME,
event_name VARCHAR(50),
event_age_requirement TINYINT
);

CREATE TABLE IF NOT EXISTS private_events LIKE public_events;

GRANT ALL PRIVILEGES ON events.*.* TO 'event_manager'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON events.public_events TO 'event_supervisor'@'localhost' IDENTIFIED BY 'pass';
FLUSH PRIVILEGES;


mysql -u event_manager -p;
USE events;

INSERT INTO public_events (event_date, event_name, event_age_requirement) VALUES (NOW(), "test", 50);
INSERT INTO public_events (event_date, event_name, event_age_requirement) VALUES (NOW(), "test", 50);
INSERT INTO private_events (event_date, event_name, event_age_requirement) VALUES (NOW(), "test", 50);
INSERT INTO private_events (event_date, event_name, event_age_requirement) VALUES (NOW(), "test", 50);

mysql -u event_supervisor -p

USE events;
SELECT * FROM public_events;
exit

SELECT * FROM private_events;
Erreur : ERROR 1142 (42000): SELECT command denied to user 'event_supervisor'@'localhost' for table 'private_events'

