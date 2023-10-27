#!/bin/bash
# This script checks that the prerequisite
# yarn is installed

yarnInstalled=false
if ! command -v yarn &> /dev/null
then
    echo "**yarn not installed**"
    echo "execute the following command:"
    echo "npm install yarn -g"
    echo
else
yarnInstalled=true
fi

if $yarnInstalled == true
then
    echo "Yarn is installed"
else
exit 1 # failure
fi
