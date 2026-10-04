#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

CSV_PATH="$(dirname "${BASH_SOURCE[0]}")/games.csv"
if [[ ! -r "$CSV_PATH" ]]; then
  echo "Cannot read $CSV_PATH" >&2
  exit 1
fi

SQL="BEGIN;
TRUNCATE TABLE games, teams;
CREATE TEMP TABLE imported_games (
  year INT, round VARCHAR, winner VARCHAR, opponent VARCHAR,
  winner_goals INT, opponent_goals INT
) ON COMMIT DROP;
INSERT INTO imported_games VALUES "
SEPARATOR=""

while IFS=, read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
 do
  [[ "$YEAR" == "year" ]] && continue
  [[ -z "$YEAR" ]] && continue
  OPPONENT_GOALS="${OPPONENT_GOALS%$'\r'}"
  ROUND="${ROUND//\'/\'\'}"
  WINNER="${WINNER//\'/\'\'}"
  OPPONENT="${OPPONENT//\'/\'\'}"
  SQL+="$SEPARATOR($YEAR, '$ROUND', '$WINNER', '$OPPONENT', $WINNER_GOALS, $OPPONENT_GOALS)"
  SEPARATOR=","
done < "$CSV_PATH"

if [[ -z "$SEPARATOR" ]]; then
  echo "No games found in $CSV_PATH" >&2
  exit 1
fi

SQL+=";
INSERT INTO teams(name)
SELECT winner FROM imported_games
UNION
SELECT opponent FROM imported_games;
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
SELECT i.year, i.round, w.team_id, o.team_id, i.winner_goals, i.opponent_goals
FROM imported_games AS i
JOIN teams AS w ON w.name = i.winner
JOIN teams AS o ON o.name = i.opponent;
COMMIT;"

$PSQL "$SQL" -v ON_ERROR_STOP=1