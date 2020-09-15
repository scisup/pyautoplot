#!/bin/bash

echo "Launching QuickLook..."
/data/home/lofarsys/dynspec/scripts/dynspec-observation-quick.sh $1

echo "Launching Rebin..."
/data/home/lofarsys/dynspec/scripts/dynspec-observation-rebin.sh $1
