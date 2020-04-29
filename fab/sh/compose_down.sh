#!/bin/sh
PROJECT_FOLDER=`git rev-parse --show-toplevel`
cd $PROJECT_FOLDER
export REPO_NAME=$(basename $PROJECT_FOLDER)

set -x
cd $PROJECT_FOLDER
docker-compose \
    -f fab/d/docker-compose.yaml \
    --project-name gmetrixr \
    --project-directory . \
    down
