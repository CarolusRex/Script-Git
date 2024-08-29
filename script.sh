#!/bin/bash
echo "entrer l'emplacement:" 
read -p destination
cd "$destination"
mkdir mon_dossier
cd mon_dossier
if [ ! -f collection.txt ]; then
touch collection.txt
fi
firead -p "Voulez vous ajouter le film? (y/n) " -n 1 -r; echo; 
if [[ $REPLY =~ ^[Yy]$ ]]; then read film
echo "$film" >> collection.txt
fi
