#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#!/bin/bash

#! /bin/bash

if [[ $1 == "test" ]]; then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Truncate the tables to start fresh
$($PSQL "TRUNCATE TABLE games, teams")

# Create an associative array to store unique teams
declare -A teams

# Insert unique teams into the teams table
while IFS="," read -r year round winner opponent winner_goals opponent_goals; do
  # Skip the header line
  if [[ $year != "year" ]]; then
    teams["$winner"]=1
    teams["$opponent"]=1
  fi
done < games.csv

# Insert the unique teams into the database
for team in "${!teams[@]}"; do
  echo "$($PSQL "INSERT INTO teams(name) VALUES ('$team') ON CONFLICT (name) DO NOTHING")"
done

# Insert each game into the games table
while IFS="," read -r year round winner opponent winner_goals opponent_goals; do
  # Skip the header line
  if [[ $year != "year" ]]; then
    # Get the IDs of the winner and opponent
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    # Insert the game
    echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($year, '$round', $WINNER_ID, $OPPONENT_ID, $winner_goals, $opponent_goals)")"
  fi
done < games.csv

# Verify counts
echo "Unique teams in the teams table:"
echo "$($PSQL "SELECT COUNT(*) FROM teams")"

echo "Total games in the games table:"
echo "$($PSQL "SELECT COUNT(*) FROM games")"
