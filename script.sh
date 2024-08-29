#!/bin/bash
echo "entrer l'emplacement:" 
read destination
cd "$destination"
if [ ! -f "$destination" ]; then
mkdir "$destination"
fi
cd "$destination"
if [ ! -f collection.txt ]; then
touch collection.txt
fi
read -p "Voulez vous ajouter le film? (y/n) " -n 1 -r; echo; 
if [[ $REPLY =~ ^[Yy]$ ]]; then read film
echo "$film" >> collection.txt
fi
