#!/bin/bash
echo "entrer l'emplacement:" 
read destination
cd "$destination"
if [ ! -f "$destination" ]; then
mkdir mon_dossier
fi
cd mon_dossier
if [ ! -f collection.txt ]; then
touch collection.txt
fi
firead -p "Voulez vous ajouter le film? (y/n) " -n 1 -r; echo; 
if [[ $REPLY =~ ^[Yy]$ ]]; then read film
echo "$film" >> collection.txt
fi
