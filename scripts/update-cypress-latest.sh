#!/bin/bash
set -e # fail on error
#
# All examples are updated to
# Cypress latest version
#
examples=(
    'angular'
    'react'
    'svelte'
    'vue'
    )

echo updating examples to Cypress latest version
for i in ${!examples[@]}; do
echo
echo updating ${examples[$i]} to cypress@latest
cd ${examples[$i]}/my-awesome-app
npm install cypress@latest --save-dev
npm ls cypress
cd ../..
done
cd ..
