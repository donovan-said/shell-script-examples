#!/bin/bash

########################################################################################################################
############################################### Cloud Init Status ######################################################
########################################################################################################################

echo '>> Waiting for Cloud-init to finish...'
if cloud-init status --wait > /dev/null 2>&1; then
  echo '>> Cloud-init succeeded'
else
  echo '>> Cloud-init failed'
  exit 1
fi