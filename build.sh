#!/bin/bash

echo "Removing www..."
rm -rf ./www/*

echo "Copying latest resources..."
cp -r ./assets ./www/
cp ./index.html ./www/

echo "Done!"