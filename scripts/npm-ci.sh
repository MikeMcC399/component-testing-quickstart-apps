#!/bin/bash
set -e # fail on error
#
# All examples are reinstalled
# with npm ci
#
examples=(
    'angular'
    'react'
    'svelte'
    'vue'
    )

echo reinstalling examples
for i in ${!examples[@]}; do
echo
echo reinstalling ${examples[$i]}
cd ${examples[$i]}/my-awesome-app
npm ci
npm ls cypress
cd ../..
done
cd ..
