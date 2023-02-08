#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

tool() {
  ELEMENT_TYPES=$($PSQL "SELECT type FROM properties")
  echo "$ELEMENT_TYPES" | while read TYPE
  do
    TYPE_ID=$($PSQL "SELECT type_id FROM types WHERE type='$TYPE'")
    echo $TYPE_ID
    UPADTA_PROPERTIES_RESULT=$($PSQL "UPDATE properties SET type_id=$TYPE_ID WHERE type='$TYPE'")
  done
  SET_NOT_NULL=$($PSQL "ALTER TABLE properties ALTER COLUMN type_id SET NOT NULL")
}
tool

# cat test.txt | while IFS='|' read AN TYPE AM MPC BPC TI
# do
#   UPDATE_RESULT=$($PSQL "UPDATE properties SET atomic_mass = $AM WHERE atomic_number = $AN")
#   if [[ $UPDATE_RESULT == "UPDATE 1" ]]
#   then
#     echo "Inserted into majors, $AM"
#   fi
# done