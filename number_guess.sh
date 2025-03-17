#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$((1 + $RANDOM % 1000))

echo "Enter your username:"

read USERNAME

USER_IN_DATABASE_RESULT=$($PSQL "select username from users where username = '$USERNAME'")
#echo "DEBUG: USER_IN_DATABASE_RESULT=$USER_IN_DATABASE_RESULT"

if [[ -z "$USER_IN_DATABASE_RESULT" ]]; then
	echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "insert into users (username, games_played) values ('$USERNAME', 0)" > /dev/null
  GAMES_PLAYED=0
else
  GAMES_PLAYED=$($PSQL "select COALESCE(games_played, 0) from users where username = '$USERNAME'" | xargs)
  #echo "DEBUG: GAMES_PLAYED=$GAMES_PLAYED"
  USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'" | xargs)
  #echo "DEBUG: USER_ID=$USER_ID"
  BEST_GAME=$($PSQL "select MIN(guesses_needed) from games where user_id = $USER_ID and guesses_needed != 0" | xargs)
  #echo "DEBUG: BEST_GAME=$BEST_GAME"
  echo -n -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
fi

echo "Guess the secret number between 1 and 1000:"

GUESS_COUNT=0

while true; do
  read USER_GUESS
  ((GUESS_COUNT++))

  if [[ $USER_GUESS =~ ^[0-9]+$ ]]; then

    if [ $USER_GUESS -lt $SECRET_NUMBER ]; then
      echo "It's higher than that, guess again:"
    elif [ $USER_GUESS -gt $SECRET_NUMBER ]; then
      echo "It's lower than that, guess again:"
    else
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
      break
    fi
  else
    echo "That is not an integer, guess again:"
  fi
done


if [[ -z "$USER_ID" ]]; then
	#$PSQL "insert into users (username, games_played) values ('$USERNAME', 0)" > /dev/null
	USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
fi


$PSQL "insert into games (user_id, guesses_needed) values ($USER_ID, $GUESS_COUNT)" > /dev/null
$PSQL "update users set games_played = $(($GAMES_PLAYED+1)) where user_id = $USER_ID" > /dev/null
