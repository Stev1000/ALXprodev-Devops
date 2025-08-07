#!/bin/bash

URL="https://pokeapi.co/api/v2/pokemon/pikachu"
DATA_FILE="data.json"
ERROR_FILE="errors.txt"

curl -s "$URL" -o "$DATA_FILE"

if [ $? -ne 0 ] || [ ! -s "$DATA_FILE" ]; then
    echo "Failed to fetch Pikachu data from $URL at $(date)" >> "$ERROR_FILE"
    exit 1
fi
