#!/bin/bash

echo "Launching Pyautoplot..."
/usr/local/bin/inspection-plots-observation.sh $@

echo "Launching QuickLook..."
/data/home/lofarsys/dynspec/scripts/dynspec-observation-quick.sh $@

echo "Launching Rebin..."
/data/home/lofarsys/dynspec/scripts/dynspec-observation-rebin.sh $@
