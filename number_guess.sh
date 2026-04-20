#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
TRIES=0

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME')" >/dev/null
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
else
  GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS

while true
do
  ((TRIES++))

  if ! [[ $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESS
  elif (( GUESS > SECRET_NUMBER ))
  then
    echo "It's lower than that, guess again:"
    read GUESS
  elif (( GUESS < SECRET_NUMBER ))
  then
    echo "It's higher than that, guess again:"
    read GUESS
  else
    break
  fi
done

$PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)" >/dev/null

echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
