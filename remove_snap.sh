#!/bin/bash

if [ "`id -u`" != "0" ]
then
    echo "Script needs root"
    echo "Cannot continue.."
    exit 5
fi

snap remove lxd
snap remove core20
snap remove snapd
apt purge snapd
