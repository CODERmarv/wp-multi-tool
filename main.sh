#!/bin/bash

type="$1"
slug="$2"

source vars.sh
source theme-checker.sh
source plugin-checker.sh
source stability.sh
source command-checker.sh
source helper.sh

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
