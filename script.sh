#!/bin/bash
echo "entrer l'emplacement:" 
read destination
cd "$destination"
mkdir mon_dossier
cd mon_dossier
touch collection.txt
echo "entrer le nom d'un film:"
read film
echo "$film" >> collection.txt
