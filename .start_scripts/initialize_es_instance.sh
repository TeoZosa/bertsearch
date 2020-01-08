#!/usr/bin/env bash

INITIALIZATION_SCRIPT="set_shared_vars.sh"
# shellcheck source=./set_shared_vars.sh
source ".start_scripts/${INITIALIZATION_SCRIPT}" 2> /dev/null || source "./${INITIALIZATION_SCRIPT}"

eval "$(conda shell.bash hook)"
conda activate ${PROJECT_NAME}
python example/create_index.py --index_file=example/index.json --index_name=${INDEX_NAME}
python example/create_documents.py --data=example/example.csv --index_name=${INDEX_NAME}
python example/index_documents.py
printf "Elasticsearch ready"