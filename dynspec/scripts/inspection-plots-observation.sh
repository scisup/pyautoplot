#!/bin/bash
OBSID=$1

exec sbatch \
    --partition=cobalt \
    --nodes=2-50 --cpus-per-task=3 \
    --job-name="inspection-$OBSID" \
    --output=/data/log/inspection-plots-$OBSID.log \
    docker-launch-msplots.sh "$@"
