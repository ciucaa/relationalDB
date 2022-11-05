##! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table --tuples-only -c"

echo -e "\nPlease provide an element as an argument."

ELEMENT=$1

if [[ ! $ELEMENT =~ ^[0-9]+$ ]]
then
  READ_ELEMENT_INFO=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol='$ELEMENT' OR name='$ELEMENT';")
  echo "$READ_ELEMENT_INFO" | while read NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR MASS BAR MELT BAR BOIL BAR
  do
    echo -e "/nThe element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
  done 
else
  READ_ELEMENT_INFO=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number=$ELEMENT;")  
  
  echo "$READ_ELEMENT_INFO" | while read NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR MASS BAR MELT BAR BOIL BAR
  do
    echo -e "/nThe element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
  done
fi
