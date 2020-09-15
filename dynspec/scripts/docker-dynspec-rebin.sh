#!/bin/bash
docker-run-slurm.sh \
    --rm --net=host \
    -v $HOME/.ssh:$HOME/.ssh:ro \
    -v /data/dynspec:/data/dynspec:rw \
    -v /data/projects:/data/projects:ro \
    dynspec Beam2Dynspec-Rebin --id=L$1 --obsDIR=/data/projects/$2/L$1/cs --outputDIR=/data/dynspec/$2/L$1 --tmin=0 --tmax=86400 --tscale=0.011 --fmin=0 --fmax=300 --chanPerSubband=1 --RAM=5 --Npart=1 --RebinAll=yes
