#!/bin/bash

# Répertoire dans lequel vous souhaitez créer les liens symboliques
target_directory="/usr/local/bin/"

# Itérer sur tous les fichiers du répertoire courant
for script_file in *; do
    # Vérifier si le fichier existe et est un fichier régulier
    if [ -f "$script_file" ]; then
        # Rendre le script exécutable
        chmod +x "$script_file"

        # Créer un lien symbolique dans le répertoire cible
        ln -s "$(pwd)/$script_file" "$target_directory$script_file"

        echo "Le script '$script_file' a été rendu exécutable et un lien symbolique a été créé dans '$target_directory'."
    else
        echo "Le fichier '$script_file' n'est pas un fichier régulier ou n'existe pas."
    fi
done

echo "Assurez-vous que '$target_directory' est déjà dans votre PATH."

