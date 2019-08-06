#!/bin/sh
set -eo pipefail

# First remove everything from the workdir
rm -rf /data/*

cd /jobs

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

# Copy the jobs to the working directory
cp $JOB_FILES /data
cd /data
echo "Running jobs: $JOB_FILES"

# Run the jobs
fio $JOB_FILES
