#!/bin/bash


stability() {

version_json=$(curl -s "$api_url/$v_url")

version_get=$(echo "$version_json" | grep $slug)

echo  "Version Found"

echo  "Details: $version_get"

}
