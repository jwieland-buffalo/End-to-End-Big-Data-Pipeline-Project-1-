#!/bin/bash

# Assumes csv file is named games.csv in the same directory
unamestr=$(uname)
echo "Adding the column name to file... (This will take a few seconds)"
if [[ "$unamestr" == 'Darwin' ]]; then
    sed -i '' "s/About the game/idk,About the game/g" games.csv
else
    # I think this works on other unix systems?? idk, modify if needed
    sed -i "s/About the game/idk,About the game/g" games.csv
fi
echo "Done!"
