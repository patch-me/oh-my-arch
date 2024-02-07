#!/bin/sh

# Assuming you want to create symbolic links for all folders in the parent directory
parent_dir="."  # Change this to the appropriate parent directory

# Assuming the target directory for symbolic links is .config
config_dir="$HOME/.config"

# Create symbolic links for each folder in the parent directory
for folder in "$parent_dir"/*/; do
    folder_name=$(basename "$folder")
    target_link="$config_dir/$folder_name"

    # Check if the symbolic link already exists
    if [ -e "$target_link" ]; then
        echo "Symbolic link for '$folder_name' already exists in '$config_dir'"
    else
        # Create symbolic link with full path
        ln -s "$(realpath "$folder")" "$target_link"
        echo "Symbolic link for '$folder_name' created in '$config_dir'"
    fi
done
