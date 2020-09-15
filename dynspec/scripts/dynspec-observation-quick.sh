#!/bin/bash

function remote_parset_lookup() {
    parset_host=$1
    sas_id=$2
    parset_key=$3

    ssh $parset_host "grep $parset_key /opt/lofar/nfs/parset/rtcp-$sas_id.parset" 2>/dev/null;
}


function sas_id_project() {
    sas_id=$1
    remote_parset_lookup lofarsys@cbm2head $sas_id 'Observation.Campaign.name'|sed -e's/=/ /g' -e 's/"/ /g'|awk '{ print $2 }';
}

OBSID=$1
PROJECT=`sas_id_project ${OBSID}`

if [ ! -d /data/dynspec/${PROJECT} ]; then mkdir /data/dynspec/${PROJECT}; fi

exec sbatch \
    --partition=cpu \
    --ntasks=1 --cpus-per-task=1 \
    --job-name="dynspec-quick-$OBSID" \
    --output=/data/log/dynspec-quick-$OBSID.log \
    --export=TAG=latest \
    /data/home/lofarsys/dynspec/scripts/docker-dynspec-quick.sh "${OBSID}" "${PROJECT}"
