#!/bin/sh
set -eo pipefail

# Check required parameters
if [ -z "$JOB_FILES" ]; then
  echo 'Missing environment variable: $JOB_FILES'
  exit 1
fi

# Copy the jobs to the working directory
WORKDIR=${WORKDIR:-`date +%s`}
echo "Working directory: /data/$WORKDIR"
cd /jobs
mkdir -p /data/$WORKDIR
cp $JOB_FILES /data/$WORKDIR
cd /data/$WORKDIR

# Download specified remote files
if [ ! -z "$REMOTE_JOB_FILES" ]; then
    for file in $REMOTE_JOB_FILES; do
      wget "$file"
    done
fi

echo "Running jobs: $JOB_FILES"

# Run the jobs
fio $JOB_FILES
