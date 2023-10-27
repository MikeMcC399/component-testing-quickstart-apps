#!/bin/bash
set -e # fail on error
#
# All examples are updated to
# latest version according to the
# semver definition in the corresponding
# package.json
#
examples=(
    'angular'
    'react'
    'svelte'
    'vue'
    )

echo updating examples to latest semver version
for i in ${!examples[@]}; do
echo
echo updating ${examples[$i]}
cd ${examples[$i]}/my-awesome-app
npm update --save
npm ls cypress
cd ../..
done
cd ..
