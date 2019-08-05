#!/bin/bash
set -eEuo pipefail

# First remove everything from the folder
find . -mindepth 1 -maxdepth 1 ! -name 'run.sh' -type f  -exec rm -f {} +
find . -mindepth 1 ! -name 'jobs' -type d -exec rm -rf {} +

# Check required parameters
if [ -z "$JOB_FILES" ]; then
  echo 'Missing environment variable: $JOB_FILES'
  exit 1
fi

# Download specified remote files
if [ ! -z "$REMOTE_JOB_FILES" ]; then
    for file in $REMOTE_JOB_FILES; do
      wget "$file"
    done
fi

# TODO: Parsable JSON output

# Run the jobs
fio $JOB_FILES
