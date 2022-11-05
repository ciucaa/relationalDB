#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams CASCADE")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPO WGOALS OGOALS
do
  if [[ $YEAR != "year" ]]
  then
    GET_WIN=$($PSQL "SELECT team_id FROM teams WHERE teams.name='$WINNER'")
    if [[ -z $GET_WIN ]]
    then
      INSERT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      GET_WIN=$($PSQL "SELECT team_id FROM teams WHERE teams.name='$WINNER'")
    fi
  
    GET_OP=$($PSQL "SELECT team_id FROM teams WHERE teams.name='$OPPO'")
    if [[ -z $GET_OP ]];
    then
      INSERT_OPP=$($PSQL "INSERT INTO teams(name) VALUES('$OPPO')")
      GET_OP=$($PSQL "SELECT team_id FROM teams WHERE teams.name='$OPPO'")
    fi 
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND', $WGOALS, $OGOALS, $GET_WIN, $GET_OP)")  
  fi  
done
