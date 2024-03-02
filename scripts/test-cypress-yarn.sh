#!/bin/bash
#
# All examples are tested using Yarn
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
yarn cypress run --component
cd ../..
done
cd ..
