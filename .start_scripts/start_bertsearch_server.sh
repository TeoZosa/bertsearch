#!/usr/bin/env bash

INITIALIZATION_SCRIPT="set_shared_vars.sh"
# shellcheck source=./set_shared_vars.sh
source ".start_scripts/${INITIALIZATION_SCRIPT}" 2> /dev/null || source "./${INITIALIZATION_SCRIPT}"

docker-compose build
docker-compose up