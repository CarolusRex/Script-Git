#!/bin/bash

# Demander à l'utilisateur où stocker le contenu
echo "Veuillez entrer l'emplacement où vous souhaitez stocker le contenu :"
read emplacement

# Se déplacer dans l'emplacement
cd "$emplacement" || { echo "Erreur : Impossible d'accéder à l'emplacement '$emplacement'."; exit 1; }

# Créer un dossier
echo "Veuillez entrer le nom du dossier à créer :"
read nom_dossier
mkdir -p "$nom_dossier"
cd "$nom_dossier" || { echo "Erreur : Impossible d'accéder au dossier '$nom_dossier'."; exit 1; }

# Vérifier si le fichier collection.txt existe, si le fichier n'existe pas le créer, sinon l'utiliser
if [ ! -f collection.txt ]; then
    touch collection.txt
    echo "Le fichier collection.txt a été créé."
else
    echo "Le fichier collection.txt existe déjà."
fi

# Boucle pour demander à l'utilisateur s'il veut ajouter un nouveau film
while true; do
    echo "Voulez-vous ajouter un nouveau film à la liste ? (oui/non)"
    read reponse

    if [ "$reponse" == "oui" ]; then
        # Demander à l'utilisateur le nom du film à ajouter
        echo "Entrez le nom du film à ajouter :"
        read nom_film

        # Ajouter le nom du film dans le fichier collection.txt
        echo "$nom_film" >> collection.txt
        echo "Le film '$nom_film' a été ajouté à votre collection."
    elif [ "$reponse" == "non" ]; then
        echo "Fin de la session d'ajout de films."
        break
    else
        echo "Réponse invalide. Veuillez répondre par 'oui' ou 'non'."
    fi
done