#!/bin/bash
docker-run-slurm.sh \
    --rm --net=host \
    -v $HOME/.ssh:$HOME/.ssh:ro \
    -v /data/dynspec:/data/dynspec:rw \
    -v /data/projects:/data/projects:ro \
    dynspec Dynspec-Rebin --Pathfile=/data/dynspec/$2/L$1/Dynspec_rebinned_L$1_SAP000.h5 --obsname=L$1 --outputFile=/data/dynspec/$2/L$1/Dynspec_rebinned_L$1_SAP000_01s.h5 --tmin=0 --tmax=86400 --tscale=0.11 --fmin=0 --fmax=300 --chanPerSubband=1 --RAM=5
