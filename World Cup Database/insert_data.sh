#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE TABLE games, teams")"
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $WINNER != 'winner' ]]
  then
    # Insert into teams table
    if [[ -z $($PSQL "SELECT name from teams WHERE name = '$WINNER'") ]]
    then
      echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
    fi
    if [[ -z $($PSQL "SELECT name from teams WHERE name = '$OPPONENT'") ]]
    then
      echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
    fi
    # Insert into games table
    echo "$($PSQL "INSERT INTO games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) 
                  VALUES((select team_id from teams where name = '$WINNER'),
                  (select team_id from teams where name = '$OPPONENT'),
                  $WINNER_GOALS,
                  $OPPONENT_GOALS,
                  $YEAR,
                  '$ROUND')")"
  fi
done