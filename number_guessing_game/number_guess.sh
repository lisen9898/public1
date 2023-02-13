#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# get player info
echo -e "\nEnter your username:\n"
read USERNAME
# check in database
USERID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
# if player doesn't exist
if [[ -z $USERID ]]  
then
echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
# insert new player
INSERT_PLAYER_RESULT=$($PSQL "INSERT INTO users(name, games_played) VALUES('$USERNAME', 0)")
# else print:
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE name='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE name='$USERNAME'")
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# game
SECRET_NUMBER=$(( $RANDOM % 1000 + 1))
NUMBER_OF_GUESSES=0
echo -e "\nGuess the secret number between 1 and 1000:\n"
read GUESS
NUMBER_OF_GUESSES=$((  $NUMBER_OF_GUESSES + 1))

SAVE_RECORD() {
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE name='$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE name='$USERNAME'")
  if [[ $BEST_GAME -gt $NUMBER_OF_GUESSES ]] || [[ -z $BEST_GAME ]]
  then
    UPDATE_BEST_GAME_RESULT=$($PSQL "UPDATE users SET best_game=$NUMBER_OF_GUESSES WHERE name='$USERNAME'")
  fi
  UPDATE_GAMES_PLAYED_RESULT=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED+1 WHERE name='$USERNAME'")
}

# if $GUESS not number
CHECK() {
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
  echo -e "\nThat is not an integer, guess again:\n"
  read GUESS
  CHECK
  else
    # if $GUESS higher
    if [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:\n"
      read GUESS
      NUMBER_OF_GUESSES=$((  $NUMBER_OF_GUESSES + 1))
      CHECK
    # if $GUESS lower
    elif [[ $GUESS -lt $SECRET_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:\n"
      read GUESS
      NUMBER_OF_GUESSES=$((  $NUMBER_OF_GUESSES + 1))
      CHECK
    # if equal
    else
    # calculate number of guesses
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      SAVE_RECORD
      exit
    fi
  fi
}
CHECK
