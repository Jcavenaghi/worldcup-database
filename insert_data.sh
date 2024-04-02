#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams;")

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  if [[ $winner != winner ]]
  then
    #get winner and opponent id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE (name = '$winner');")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE (name = '$opponent');")

    if [[ -z $WINNER_ID ]]
    then
      #insert winner in teams
      WINNER_ID=$($PSQL "INSERT INTO teams(name) VALUES('$winner') RETURNING team_id;")
      # extract the id from the result using
      WINNER_ID=$(echo $WINNER_ID | awk '{print $1}')
    fi
    if [[ -z $OPPONENT_ID ]]
    then
      #insert opponents in teams
      OPPONENT_ID=$($PSQL "INSERT INTO teams(name) VALUES('$opponent') RETURNING team_id;")
      # extract the id from the result using awk
      OPPONENT_ID=$(echo $OPPONENT_ID | awk '{print $1}')
    fi

    # get game_id
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE (year=$year AND round='$round' AND winner_id=$WINNER_ID AND opponent_id=$OPPONENT_ID);")

    # if not found
    if [[ -z $GAME_ID ]]
    then
      # insert game
      INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $WINNER_ID, $OPPONENT_ID, $winner_goals, $opponent_goals);")
    fi
  fi
done