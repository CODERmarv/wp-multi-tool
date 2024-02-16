#!/bin/bash

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

type="$1"
slug="$2"
api_url="https://api.wordpress.org"

t_url="themes/info/1.2/?action=query_themes&theme"
p_url="plugins/info/1.0" 
v_url="core/stable-check/1.0/"
cli_url="https://developer.wordpress.org/cli/commands"

NC=$(tput sgr0)       
ftype='json'



