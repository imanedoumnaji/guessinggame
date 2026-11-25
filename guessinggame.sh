#!/usr/bin/env bash

function ask_guess {
  echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
  read -r guess
}

target=$(ls -1 | wc -l)
guess=-1

while [[ "$guess" -ne "$target" ]]
do
  ask_guess
  if ! [[ "$guess" =~ ^[0-9]+$ ]]
  then
    echo "Veuillez entrer un nombre entier valide."
  elif [[ "$guess" -lt "$target" ]]
  then
    echo "Votre estimation est trop basse. Essayez encore !"
  elif [[ "$guess" -gt "$target" ]]
  then
    echo "Votre estimation est trop haute. Essayez encore !"
  else
    echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers : $target."
  fi
done
