#!/bin/bash

if [ $# != 2 ]; then
echo "Invalid number of arguments"
exit 1;
fi

if [ ! -d $1 ]; then
mkdir -p "$(dirname $1)"
touch $1;
fi

echo $2 > $1 
