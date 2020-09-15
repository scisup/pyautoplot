#!/bin/bash
docker-run-slurm.sh \
    --rm --net=host \
    -v $HOME/.ssh:$HOME/.ssh:ro \
    -v $HOME/.matplotlib:$HOME/.matplotlib:rw \
    -v /data/dynspec:/data/dynspec:rw \
    -v /data/projects:/data/projects:ro \
    dynspec Beam2Dynspec-Quick --id=L$1 --obsDIR=/data/projects/$2/L$1/cs --outputDIR=/data/dynspec/$2/L$1 --percentTimeData=0.1 --percentSpectralData=0.125 --transpose=yes --nofPart=1
