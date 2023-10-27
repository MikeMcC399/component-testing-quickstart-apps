#!/bin/bash
set -e # fail on error
#
# All examples are tested
#
examples=(
    'angular'
    'react'
    'svelte'
    'vue'
    )

echo testing all examples
for i in ${!examples[@]}; do
echo
echo testing ${examples[$i]}
cd ${examples[$i]}/my-awesome-app
echo building
npm ci
echo test against electron
npx cypress run --component
echo test against chrome
npx cypress run --component --browser chrome
cd ../..
done
cd ..
