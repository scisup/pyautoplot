#!/bin/bash
docker run \
    --rm --net=host \
    -u `id -u` -e USER=$USER -e HOME=$HOME \
    -e SLURM_JOB_ID=$SLURM_JOB_ID \
    -v $HOME/.ssh:$HOME/.ssh:ro \
    -v /data/projects:/data/projects:ro \
    -v /data/inspect:/globaldata/inspect \
    pyautoplot launch-msplots.sh "$@"
