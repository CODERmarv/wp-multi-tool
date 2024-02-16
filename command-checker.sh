#!/bin/bash

wpcli() {

num_columns=4
bin_dir='/home/marvin/bin'
fname='cli-main-commands.txt'

        if [ ! -f "$bin_dir$fname" ] || [ -s "$bin_dir$fname" ]; then
         touch $fname && chmod u+r $fname
         command_json=$(jq -c '.' $bin_dir/dump.json)
          command_extract=$(echo "$command_json" | jq -r .subcommands[].name >> $fname )
          fi
        
        echo -e "\nYou have submitted: ${LIME_YELLOW}"$2"${NC}"
        sleep 2
        echo "Searching..."

        while IFS= read -r line || [[ -n "$line" ]]; do
        if [ $2 == $line ]; then
        sleep 3
        echo -e "Command found: ${LIME_YELLOW}"$2"${NC}"
        sleep 2
        wp $2 --help
        fi
        done < $fname
    
        printf "Command not found: ${LIME_YELLOW}"$2"${NC}"
        echo -e "\nList of available commands\n"

         readarray -t commands < $bin_dir/$fname
	     num_items=${#commands[@]}
         num_rows=$(( (num_items + num_columns - 1) / num_columns ))

                for ((i = 0; i < num_rows; i++)); do
                
                    for ((j = 0; j < num_columns; j++)); do

                    index=$((i + j * num_rows))

                    if [ $index -lt $num_items ]; then

                        printf "%-30s" "${BRIGHT}${commands[index]}"
                    fi
                    done
                    echo ""
            done      
}
