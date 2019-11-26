CREATE SCHEMA IF NOT EXISTS teams;
USE teams;

DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;

CREATE TABLE IF NOT EXISTS games
(
    match_date DATE,
    victory TINYINT,
    observations TEXT
);

CREATE TABLE IF NOT EXISTS players
(
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    start_date DATE
);

GRANT ALL PRIVILEGES ON teams.games TO 'manager'@'localhost' IDENTIFIED BY 'manager_password';
GRANT SELECT, INSERT ON teams.players TO 'recruiter'@'localhost' IDENTIFIED BY 'recruiter_password';
FLUSH PRIVILEGES;

