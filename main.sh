#!/bin/bash

type="$1"
slug="$2"

source inc/vars.sh
source inc/theme-checker.sh
source inc/plugin-checker.sh
source inc/stability.sh
source inc/command-checker.sh
source inc/helper.sh

case $type in

        '-t')
        theme "$type" "$slug";;
        '-p')
        plugin "$type" "$slug";;
        '-v')
        stability "$type" "$slug";;
        '-cli')
        wpcli "$type" "$slug";;
        *)
        helps;;
esac
