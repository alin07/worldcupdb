#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi


echo $($PSQL "TRUNCATE teams, games")


# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  echo -e "$YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS"
  if [[ $YEAR != "year" ]]
  then
    # check if winner and opponent team ids exists in teams table 
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    if [[ -z $WINNER_ID ]]
    then
      echo "empty winner id"
      INSERT_WINNER_ID=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER_ID == "INSERT 0 1" ]]
      then
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        echo "Inserted into teams, $WINNER is $WINNER_ID"
      fi
    fi

    if [[ -z $OPPONENT_ID ]]
    then
      echo "empty opp id"
      INSERT_OPPONENT_ID=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPPONENT_ID == "INSERT 0 1" ]]
      then
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        echo "Inserted into teams, $OPPONENT is $OPPONENT_ID"
      fi
    fi

    echo -e "$WINNER_ID, $OPPONENT_ID\n"

    # insert into games table
    INSERT_GAME=$($PSQL "INSERT INTO 
      games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) 
      VALUES($WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, $YEAR, '$ROUND')")
    if [[ $INSERT_GAME == "INSERT 0 1" ]]
    then
      echo Inserted into games: $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, $YEAR, $ROUND
    fi
  fi
done