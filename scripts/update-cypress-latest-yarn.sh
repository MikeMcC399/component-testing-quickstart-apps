#!/bin/bash
set -e # fail on error
#
# All examples using Yarn technology are updated to
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
yarn set version berry
yarn add cypress -D
cd ../..
done
cd ..
