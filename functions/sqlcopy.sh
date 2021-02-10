#!/usr/bin/env bash

PROJECT_ID=$1
BUCKET_NAME=${PROJECT_ID}'-copytest'

gsutil ls -p ${PROJECT_ID} gs://${BUCKET_NAME}/
if [ $? -gt 0 ]; then
    echo "存在しませんのでつくります"
    gsutil mb -p ${PROJECT_ID} gs://${BUCKET_NAME}/
fi
