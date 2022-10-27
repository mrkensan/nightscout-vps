#!/bin/bash

if [ "`id -u`" != "0" ] 
then
    echo "Script needs root"
    echo "Cannot continue.."
    exit 5
fi

cat > /etc/multipath.conf << "EOF"

defaults {
    user_friendly_names yes
}
blacklist {
    devnode "^(ram|raw|loop|fd|md|dm-|sr|scd|st|sda)[0-9]*"
}
EOF

/etc/init.d/multipath-tools restart
