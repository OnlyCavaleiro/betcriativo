INSERT INTO teams (team_name, country, stadium) VALUES 
('Flamengo', 'Brasil', 'Maracanã'),
('Palmeiras', 'Brasil', 'Allianz Parque');

INSERT INTO championships (championship_name, season) VALUES 
('Campeonato Brasileiro Série A', '2024'),
('Copa Libertadores', '2024');

INSERT INTO players (name, shirt_number, position, nationality, date_birth, team_id) VALUES 
('Gabriel Barbosa', 99, 'Atacante', 'Brasil', '1996-08-30', 1),
('Raphael Veiga', 23, 'Meia', 'Brasil', '1995-06-19', 2);

ALTER TABLE matches DROP COLUMN winter;

INSERT INTO matches (date_time, stadium, stage, home, away, championship, winner) VALUES 
('2024-05-15', 'Maracanã', 'Semifinal', 1, 2, 1, 1),
('2024-06-20', 'Allianz Parque', 'Final', 2, 1, 2, 2);

INSERT INTO championship_teams (championship_id, team_id) VALUES 
(1, 1), -- Flamengo no Brasileirão
(2, 2); -- Palmeiras na Libertadores

INSERT INTO goal_events (time, benefited_id, player_id, match_id) VALUES 
(25, 1, 1, 1), -- Gabriel Barbosa marca para o Flamengo aos 25 min na partida 1
(67, 2, 2, 2); -- Raphael Veiga marca para o Palmeiras aos 67 min na partida 2

INSERT INTO card_events (time, color, player_id, match_id) VALUES 
(45, 'YELLOW', 1, 1), -- Gabriel Barbosa recebe amarelo aos 45 min na partida 1
(78, 'RED', 2, 2);    -- Raphael Veiga recebe vermelho aos 78 min na partida 2

INSERT INTO offside_events (time, player_id, match_id) VALUES 
(12, 1, 1), -- Gabriel Barbosa em impedimento aos 12 min na partida 1
(55, 2, 2); -- Raphael Veiga em impedimento aos 55 min na partida 2

SELECT id_match, date_time, stadium FROM matches;

UPDATE matches 
SET id_match = 1
WHERE id_match = 2;

UPDATE matches 
SET id_match = 2
WHERE id_match = 3;
