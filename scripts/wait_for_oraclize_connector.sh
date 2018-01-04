#!/bin/bash

MAX_RETRIES=120

for i in `seq ${MAX_RETRIES}` ; do
    IS_ORACLIZE_CONNECTOR_CONFIG_AVAILABLE=`ls -1 /ethereum-bridge/config/instance/ | wc -l`

    if [ ${IS_ORACLIZE_CONNECTOR_CONFIG_AVAILABLE} -eq 1 ] ; then
      exit 0
    fi
    sleep 1
done

echo "Oraclize connector did not initialize within 2 minutes. Aborting..." >&2
exit 1
