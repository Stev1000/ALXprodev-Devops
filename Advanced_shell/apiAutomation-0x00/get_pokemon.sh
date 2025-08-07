#!/bin/bash

# Define API endpoint
API_URL="https://pokeapi.co/api/v2/pokemon/pikachu"

# Make API request and save output to data.json
curl -s -f "$API_URL" -o data.json

# Check if the request was successful
if [ $? -ne 0 ]; then
    echo "Failed to fetch data from $API_URL" >> errors.txt
    exit 1
else
    echo "Successfully fetched Pikachu data."
fi
