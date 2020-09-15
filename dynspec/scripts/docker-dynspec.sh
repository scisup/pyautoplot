#!/bin/bash
docker run \
    --rm --net=host \
    -u `id -u` -e USER=$USER -e HOME=$HOME \
    -e SLURM_JOB_ID=$SLURM_JOB_ID \
    -v $HOME/.ssh:$HOME/.ssh:ro \
    -v /data/dynspec:/data/dynspec:rw \
    -v /data/projects:/data/projects:ro \
    lofar-dynspec Beam2Dynspec-Rebin --id=L$@ --obsDIR=/data/projects/CEP4_commissioning/L$@/cs --outputDIR=/data/dynspec/L$@ --tmin=0 --tmax=86400 --tscale=0.011 --fmin=0 --fmax=300 --chanPerSubband=1 --RAM=5 --Npart=1 --RebinAll=yes
