SELECT * FROM matches;

SELECT * FROM players;

SELECT * FROM championship_teams;

-- EQUIPES BRASILEIRAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('Botafogo', 'Brasil', 'Estádio Nilton Santos'),
('São Paulo', 'Brasil', 'Morumbi'),
('Corinthians', 'Brasil', 'Neo Química Arena'),
('Internacional', 'Brasil', 'Estádio Beira-Rio'),
('Bahia', 'Brasil', 'Arena Fonte Nova'),
('Cruzeiro', 'Brasil', 'Mineirão'),
('Vasco da Gama', 'Brasil', 'São Januário'),
('Atlético-MG', 'Brasil', 'Arena MRV'),
('Grêmio', 'Brasil', 'Arena do Grêmio'),
('Vitória', 'Brasil', 'Barradão'),
('Athletico-PR', 'Brasil', 'Arena da Baixada'),
('Fluminense', 'Brasil', 'Maracanã'),
('Fortaleza', 'Brasil', 'Castelão'),
('Juventude', 'Brasil', 'Estádio Alfredo Jaconi'),
('Red Bull Bragantino', 'Brasil', 'Estádio Nabi Abi Chedid'),
('Criciúma', 'Brasil', 'Estádio Heriberto Hülse'),
('Atlético-GO', 'Brasil', 'Estádio Antônio Accioly'),
('Cuiabá', 'Brasil', 'Arena Pantanal');

-- INSERT BRASILEIRAO
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(1, (SELECT id_teams FROM teams WHERE team_name = 'Palmeiras')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Botafogo')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'São Paulo')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Corinthians')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Internacional')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Bahia')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Cruzeiro')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Vasco da Gama')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Atlético-MG')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Grêmio')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Vitória')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Athletico-PR')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Fluminense')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Fortaleza')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Juventude')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Red Bull Bragantino')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Criciúma')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Atlético-GO')),
(1, (SELECT id_teams FROM teams WHERE team_name = 'Cuiabá'));

SELECT 
    ct.id,
    t.team_name,
    c.championship_name,
    c.season
FROM championship_teams ct
JOIN teams t ON ct.team_id = t.id_teams
JOIN championships c ON ct.championship_id = c.id_championship
WHERE c.championship_name = 'Campeonato Brasileiro Série A' 
    AND c.season = '2024'
ORDER BY t.team_name;

-- EQUIPES ARGENTINAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('River Plate', 'Argentina', 'Estádio Monumental'),
('Boca Juniors', 'Argentina', 'La Bombonera'),
('Racing Club', 'Argentina', 'Estádio Juan Domingo Perón'),
('Estudiantes', 'Argentina', 'Estádio Jorge Luis Hirschi'),
('Independiente', 'Argentina', 'Estádio Libertadores de América'),
('Talleres', 'Argentina', 'Estádio Mario Alberto Kempes');

-- EQUIPES URUGUAIAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('Peñarol', 'Uruguai', 'Estádio Campeón del Siglo'),
('Nacional', 'Uruguai', 'Gran Parque Central'),
('Liverpool FC', 'Uruguai', 'Estádio Belvedere'),
('Cerro Largo', 'Uruguai', 'Estádio Arquitecto Antonio Ubilla');

-- EQUIPES CHILENAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('Colo-Colo', 'Chile', 'Estádio Monumental David Arellano'),
('Universidad Católica', 'Chile', 'Estádio San Carlos de Apoquindo'),
('Cobresal', 'Chile', 'Estádio El Cobre'),
('Ñublense', 'Chile', 'Estádio Nelson Oyarzún');

-- EQUIPES COLOMBIANAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('Junior', 'Colômbia', 'Estádio Metropolitano Roberto Meléndez'),
('Millonarios', 'Colômbia', 'Estádio El Campín'),
('Independiente Santa Fe', 'Colômbia', 'Estádio El Campín'),
('Bucaramanga', 'Colômbia', 'Estádio Alfonso López');

-- EQUIPES EQUATORIANAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('LDU', 'Equador', 'Estádio Rodrigo Paz Delgado'),
('Independiente del Valle', 'Equador', 'Estádio Rumiñahui'),
('Barcelona SC', 'Equador', 'Estádio Monumental Banco Pichincha'),
('Universidad Católica del Ecuador', 'Equador', 'Estádio Olímpico Atahualpa');

-- EQUIPES BOLIVIANAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('The Strongest', 'Bolívia', 'Estádio Hernando Siles'),
('Bolívar', 'Bolívia', 'Estádio Hernando Siles'),
('Real Tomayapo', 'Bolívia', 'Estádio IV Centenario'),
('Santa Cruz', 'Bolívia', 'Estádio Ramón Tahuichi Aguilera');

-- EQUIPES PERUANAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('Alianza Lima', 'Peru', 'Estádio Alejandro Villanueva'),
('Sporting Cristal', 'Peru', 'Estádio Alberto Gallardo'),
('Melgar', 'Peru', 'Estádio de la UNSA'),
('Universitario', 'Peru', 'Estádio Monumental');

-- EQUIPES PARAGUAIAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('Libertad', 'Paraguai', 'Estádio Dr. Nicolás Leoz'),
('Cerro Porteño', 'Paraguai', 'Estádio General Pablo Rojas'),
('Olimpia', 'Paraguai', 'Estádio Manuel Ferreira'),
('Tacuary', 'Paraguai', 'Estádio Roberto Bettega');

-- EQUIPES VENEZUELANAS
INSERT INTO teams (team_name, country, stadium) VALUES 
('Caracas FC', 'Venezuela', 'Estádio Olímpico da UCV'),
('Deportivo Táchira', 'Venezuela', 'Estádio Polideportivo de Pueblo Nuevo'),
('Academia Puerto Cabello', 'Venezuela', 'Estádio Complejo Deportivo Socialista'),
('Metropolitanos FC', 'Venezuela', 'Estádio Olímpico da UCV');

SELECT * FROM teams;

SELECT * FROM championship_teams WHERE championship_id = 2;

SELECT team_name, team_id FROM championship_teams; 

-- Times BRASILEIROS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'Fluminense')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Palmeiras')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Flamengo')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Grêmio')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'São Paulo')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Atlético-MG')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Botafogo'));

-- Times ARGENTINOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'River Plate')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Boca Juniors')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Racing Club')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Estudiantes')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Independiente')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Talleres'));

-- Times URUGUAIOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'Peñarol')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Nacional')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Liverpool FC')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Cerro Largo'));

-- Times CHILENOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'Colo-Colo')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Universidad Católica')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Cobresal')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Ñublense'));

-- Times COLOMBIANOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'Junior')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Millonarios')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Independiente Santa Fe')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Bucaramanga'));

-- Times EQUATORIANOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'LDU')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Independiente del Valle')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Barcelona SC')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Universidad Católica del Ecuador'));

-- Times BOLIVIANOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'The Strongest')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Bolívar')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Real Tomayapo')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Santa Cruz'));

-- Times PERUANOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'Alianza Lima')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Sporting Cristal')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Melgar')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Universitario'));

-- Times PARAGUAIOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'Libertad')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Cerro Porteño')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Olimpia')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Tacuary'));

-- Times VENEZUELANOS na Libertadores 2024
INSERT INTO championship_teams (championship_id, team_id) VALUES 
(2, (SELECT id_teams FROM teams WHERE team_name = 'Caracas FC')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Deportivo Táchira')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Academia Puerto Cabello')),
(2, (SELECT id_teams FROM teams WHERE team_name = 'Metropolitanos FC'));

-- VERIFICAÇÃO: Ver todas as equipes da Copa Libertadores 2024 por país
SELECT 
    t.country,
    COUNT(*) as quantidade_times,
    STRING_AGG(t.team_name, ', ' ORDER BY t.team_name) as times
FROM championship_teams ct
JOIN teams t ON ct.team_id = t.id_teams
JOIN championships c ON ct.championship_id = c.id_championship
WHERE c.championship_name = 'Copa Libertadores' 
    AND c.season = '2024'
GROUP BY t.country
ORDER BY quantidade_times DESC;
