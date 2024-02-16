#!/bin/bash

theme() {

theme_json=$(curl -s "$api_url/$t_url=$2")

        if [ $? -ne 0 ]; then
            echo "Error: Failed to fetch data from the URL."
            exit 1
            else
            echo  -e "\nTHEME FOUND\n"
        fi

        theme_keys=("name" "version" "author.author_url" "author.author" "preview_url")
        theme_labels=("Theme:" "Version:" "Author URL:" "Author:" "Date added:")

        for (( i=0; i<${#theme_keys[@]}; i++ )); do

            value=$(echo "$theme_json" | jq -r ".themes[].${theme_keys[i]}")

            echo "${theme_labels[i]} ${BRIGHT}$value${nc}"
        done

}
