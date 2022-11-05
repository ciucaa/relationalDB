#!/bin/bash

#read PSQL database
PSQL="psql --username=freecodecamp --dbname=guessing_game -t --no-align -c"
echo "Enter your username: "
read USERNAME
#get user_id based on entered USERNAME
CHECK_USERNAME=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")

#check if user_id exists
if [[ -z $CHECK_USERNAME ]]
then
  #add new user to database
  INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  #if user exists get user information
  GET_GAMES=$($PSQL "SELECT games FROM users WHERE user_id=$CHECK_USERNAME")
  GET_GUESSES=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$CHECK_USERNAME")
  echo "Welcome back, $USERNAME! You have played $GET_GAMES games, and your best game took $GET_GUESSES guesses."
fi

#get user_id
GET_USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")

#generate random number between 1 and 1000
NUMBER=$(($RANDOM%1000+1))
#echo $NUMBER
echo "Guess the secret number between 1 and 1000:"
read GUESS_NUMBER
#check if number is VALID
while [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
do
  echo "That is not an integer, guess again:"
  read GUESS_NUMBER
done

#Start guess counter
TRY=0

while [[ $GUESS_NUMBER -ne $NUMBER ]]
do
  while [[ $GUESS_NUMBER -gt $NUMBER ]]
  do
    echo "It's lower than that, guess again: "
    read GUESS_NUMBER
    TRY=$((TRY+1))
  done

  while [[ $GUESS_NUMBER -lt $NUMBER ]]
  do
    echo "It's higher than that, guess again:"
    TRY=$((TRY+1))
    read GUESS_NUMBER
  done
done

#total number of guesses for current game
TRY=$((TRY+1))
#echo $TRY
echo "You guessed it in $TRY tries. The secret number was $NUMBER. Nice job!"
ADD_GUESSES=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($GET_USER_ID, $TRY)")
GET_NUMBER_GAMES=$($PSQL "SELECT COUNT(guesses) FROM games WHERE user_id=$GET_USER_ID")
ADD_GAMES=$($PSQL "UPDATE users SET games=$GET_NUMBER_GAMES WHERE user_id=$GET_USER_ID")
