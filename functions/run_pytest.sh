#!/usr/bin/env bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

pip install \
 -r file_validation/requirements.txt \
 -r master_period_validation/requirements.txt \
 -r validation_ok_handler/requirements.txt \
 -r validation_ng_handler/requirements.txt
pytest -p no:cacheprovider . -v
