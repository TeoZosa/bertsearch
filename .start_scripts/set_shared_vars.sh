#!/usr/bin/env bash

# Magic line to ensure that we're always inside the root of the project
cd "${0%/*}/.."

export PATH_MODEL="$(pwd)/cased_L-24_H-1024_A-16"
printf "\n**Model path:**\n %s\n\n" ${PATH_MODEL}

export INDEX_NAME=jobsearch
printf "\n**Index name:**\n %s\n\n" ${INDEX_NAME}

export PROJECT_NAME=${PWD##*/}