#!/bin/bash

plugin() {

plugin_json=$(curl -s "$api_url/$p_url/$2.$ftype")


        if [ $? -ne 0 ]; then
            echo "Error: Failed to fetch data from the URL."
            exit 1
            else
            echo  -e "\nPLUGIN FOUND\n"
        fi

        keys=("name" "version" "last_updated" "author" "added")
        labels=("Plugin:" "Version:" "Last update:" "Author:" "Date added:")

        for (( i=0; i<${#keys[@]}; i++ )); do

            value=$(echo "$plugin_json" | jq -r ".${keys[i]}")

            echo "${labels[i]} ${BRIGHT}$value${nc}"
        done
}
