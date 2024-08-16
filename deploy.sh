#!/bin/bash
set -e
echo "please enter the input"
read color
if [ "$color" == "red" ];
then
        echo "STOP"
elif [ "$color" == "green" ];
then
        echo "GO"
elif [ "$color" == "yellow" ];
then
        echo "READY"
else
        echo "Entered value is wrong"
fi
