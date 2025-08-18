CREATE DATABASE IF NOT EXISTS betcriativo;
use betcriativo;

CREATE TABLE IF NOT EXISTS players (
id_player SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
shirt_number INT,
position VARCHAR(20),
nationality VARCHAR(30),
date_birth DATE
);

CREATE TABLE IF NOT EXISTS matches (
id_match SERIAL PRIMARY KEY,
date_time DATE,
stadium VARCHAR(30),
stage VARCHAR
);

CREATE TABLE IF NOT EXISTS teams (
id_teams SERIAL PRIMARY KEY,
team_name VARCHAR(100) NOT NULL UNIQUE,
country VARCHAR(50),
);

ALTER TABLE teams
ADD COLUMN stadium VARCHAR(100);

CREATE TABLE IF NOT EXISTS championships (
id_championship SERIAL PRIMARY KEY,
championship_name VARCHAR(100) NOT NULL UNIQUE,
season VARCHAR(9) NOT NULL
);

CREATE TABLE IF NOT EXISTS card_events (
card_id SERIAL PRIMARY KEY,
time INTEGER NOT NULL,
color VARCHAR(6) NOT NULL
);

CREATE TABLE IF NOT EXISTS offside_events (
offside_id SERIAL PRIMARY KEY,
time INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS goal_events (
goal_id SERIAL PRIMARY KEY,
time INTEGER NOT NULL
);

ALTER TABLE players
ADD COLUMN team_id INTEGER;

ALTER TABLE players
ADD FOREIGN KEY (team_id)
REFERENCES teams(id_teams);

ALTER TABLE matches
ADD COLUMN home INTEGER;

ALTER TABLE matches
ADD FOREIGN KEY (home)
REFERENCES teams(id_teams);

ALTER TABLE matches
ADD COLUMN away INTEGER;

ALTER TABLE matches
ADD FOREIGN KEY (away)
REFERENCES teams(id_teams);

ALTER TABLE matches
ADD COLUMN championship INTEGER;

ALTER TABLE matches
ADD FOREIGN KEY (championship)
REFERENCES championships(id_championship);

ALTER TABLE matches
ADD COLUMN winner INTEGER NOT NULL;

ALTER TABLE matches
ADD FOREIGN KEY (winner)
REFERENCES teams(id_teams);

CREATE TABLE IF NOT EXISTS championship_teams (
id SERIAL PRIMARY KEY
);

ALTER TABLE championship_teams
ADD COLUMN championship_id INTEGER NOT NULL;

ALTER TABLE championship_teams
ADD FOREIGN KEY (championship_id)
REFERENCES championships(id_championship);

ALTER TABLE championship_teams
ADD COLUMN team_id INTEGER NOT NULL;

ALTER TABLE championship_teams
ADD FOREIGN KEY (team_id)
REFERENCES teams (id_teams);

ALTER TABLE goal_events 
ADD COLUMN benefited_id INTEGER NOT NULL; 

ALTER TABLE goal_events
ADD FOREIGN KEY (benefited_id)
REFERENCES teams (id_teams);

ALTER TABLE goal_events 
ADD COLUMN player_id INTEGER NOT NULL; 

ALTER TABLE goal_events
ADD FOREIGN KEY (player_id)
REFERENCES players (id_player);

ALTER TABLE goal_events 
ADD COLUMN match_id INTEGER NOT NULL;

ALTER TABLE goal_events
ADD FOREIGN KEY (match_id)
REFERENCES matches (id_match);

ALTER TABLE card_events 
ADD COLUMN player_id INTEGER NOT NULL; 

ALTER TABLE card_events
ADD FOREIGN KEY (player_id)
REFERENCES players (id_player);

ALTER TABLE card_events 
ADD COLUMN match_id INTEGER NOT NULL;

ALTER TABLE card_events
ADD FOREIGN KEY (match_id)
REFERENCES matches (id_match);

ALTER TABLE offside_events 
ADD COLUMN player_id INTEGER NOT NULL; 

ALTER TABLE offside_events
ADD FOREIGN KEY (player_id)
REFERENCES players (id_player);

ALTER TABLE offside_events 
ADD COLUMN match_id INTEGER NOT NULL;

ALTER TABLE offside_events
ADD FOREIGN KEY (match_id)
REFERENCES matches (id_match);