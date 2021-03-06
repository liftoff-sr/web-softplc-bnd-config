#!/bin/bash

INFILE=/etc/NETWORKS.LST

address=`grep -Po '^\s*address\s+\K[^\s]+' $INFILE`

netmask=`grep -Po '^\s*netmask\s+\K[^\s]+' $INFILE`

gateway=`grep -Po '^\s*gateway\s+\K[^\s]+' $INFILE`

CONFIG_INFILE=/SoftPLC/run/CONFIGNUM.TXT

configNum=`cat $CONFIG_INFILE`

# The leading newline is needed for a proper http response
echo "
my_ip=\"$address\"
subnet_mask=\"$netmask\"
gateway_ip=\"$gateway\"
config_num=\"$configNum\"
"
