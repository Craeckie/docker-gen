#!/bin/bash
pushd "$(dirname $0)"
echo "In $PWD"
git pull --rebase || exit
docker build -t 'jwilder/docker-gen' .
popd
