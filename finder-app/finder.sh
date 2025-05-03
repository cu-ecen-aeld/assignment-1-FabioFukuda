#!/bin/bash

if [ $# != 2 ]; then
echo "Invalid number of arguments"
exit 1;
fi

if [ ! -d $1 ] 
then
echo "Folder does not exists"
exit 1;
fi

NUM_FILES=$(find $1 -type f | wc -l)

NUM_MATCHING_STRING=$(grep -r $2 $1 | wc -l)

echo "The number of files are $NUM_FILES and the number of matching lines are $NUM_MATCHING_STRING "
