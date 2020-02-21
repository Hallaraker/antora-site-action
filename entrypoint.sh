#!/bin/bash
set 
set -eu 
set -o pipefail 

set -x

echo "Using $INPUT_SITE_SOURCES_PATH"

cd $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

set +x 

antora --stacktrace $INPUT_ANTORA_PLAYBOOK
