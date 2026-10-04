CREATE DATABASE worldcup;
\connect worldcup

CREATE TABLE teams (
  team_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  round VARCHAR(100) NOT NULL,
  winner_id INT NOT NULL REFERENCES teams(team_id),
  opponent_id INT NOT NULL REFERENCES teams(team_id),
  winner_goals INT NOT NULL,
  opponent_goals INT NOT NULL
);

INSERT INTO teams(team_id, name) VALUES (1, 'Algeria');
INSERT INTO teams(team_id, name) VALUES (2, 'Argentina');
INSERT INTO teams(team_id, name) VALUES (3, 'Belgium');
INSERT INTO teams(team_id, name) VALUES (4, 'Brazil');
INSERT INTO teams(team_id, name) VALUES (5, 'Chile');
INSERT INTO teams(team_id, name) VALUES (6, 'Colombia');
INSERT INTO teams(team_id, name) VALUES (7, 'Costa Rica');
INSERT INTO teams(team_id, name) VALUES (8, 'Croatia');
INSERT INTO teams(team_id, name) VALUES (9, 'Denmark');
INSERT INTO teams(team_id, name) VALUES (10, 'England');
INSERT INTO teams(team_id, name) VALUES (11, 'France');
INSERT INTO teams(team_id, name) VALUES (12, 'Germany');
INSERT INTO teams(team_id, name) VALUES (13, 'Greece');
INSERT INTO teams(team_id, name) VALUES (14, 'Japan');
INSERT INTO teams(team_id, name) VALUES (15, 'Mexico');
INSERT INTO teams(team_id, name) VALUES (16, 'Netherlands');
INSERT INTO teams(team_id, name) VALUES (17, 'Nigeria');
INSERT INTO teams(team_id, name) VALUES (18, 'Portugal');
INSERT INTO teams(team_id, name) VALUES (19, 'Russia');
INSERT INTO teams(team_id, name) VALUES (20, 'Spain');
INSERT INTO teams(team_id, name) VALUES (21, 'Sweden');
INSERT INTO teams(team_id, name) VALUES (22, 'Switzerland');
INSERT INTO teams(team_id, name) VALUES (23, 'United States');
INSERT INTO teams(team_id, name) VALUES (24, 'Uruguay');
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (1, 2018, 'Final', 11, 8, 4, 2);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2, 2018, 'Third Place', 3, 10, 2, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (3, 2018, 'Semi-Final', 8, 10, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (4, 2018, 'Semi-Final', 11, 3, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (5, 2018, 'Quarter-Final', 8, 19, 3, 2);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (6, 2018, 'Quarter-Final', 10, 21, 2, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (7, 2018, 'Quarter-Final', 3, 4, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (8, 2018, 'Quarter-Final', 11, 24, 2, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (9, 2018, 'Eighth-Final', 10, 6, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (10, 2018, 'Eighth-Final', 21, 22, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (11, 2018, 'Eighth-Final', 3, 14, 3, 2);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (12, 2018, 'Eighth-Final', 4, 15, 2, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (13, 2018, 'Eighth-Final', 8, 9, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (14, 2018, 'Eighth-Final', 19, 20, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (15, 2018, 'Eighth-Final', 24, 18, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (16, 2018, 'Eighth-Final', 11, 2, 4, 3);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (17, 2014, 'Final', 12, 2, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (18, 2014, 'Third Place', 16, 4, 3, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (19, 2014, 'Semi-Final', 2, 16, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (20, 2014, 'Semi-Final', 12, 4, 7, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (21, 2014, 'Quarter-Final', 16, 7, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (22, 2014, 'Quarter-Final', 2, 3, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (23, 2014, 'Quarter-Final', 4, 6, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (24, 2014, 'Quarter-Final', 12, 11, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (25, 2014, 'Eighth-Final', 4, 5, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (26, 2014, 'Eighth-Final', 6, 24, 2, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (27, 2014, 'Eighth-Final', 11, 17, 2, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (28, 2014, 'Eighth-Final', 12, 1, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (29, 2014, 'Eighth-Final', 16, 15, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (30, 2014, 'Eighth-Final', 7, 13, 2, 1);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (31, 2014, 'Eighth-Final', 2, 22, 1, 0);
INSERT INTO games(game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (32, 2014, 'Eighth-Final', 3, 23, 2, 1);
SELECT setval('teams_team_id_seq', (SELECT MAX(team_id) FROM teams));
SELECT setval('games_game_id_seq', (SELECT MAX(game_id) FROM games));
