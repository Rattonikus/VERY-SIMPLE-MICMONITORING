# VERY-SIMPLE-MICMONITORING
a VERY SIMPLE script for mic monitoring!
One of my first Linux scripts, I use it a ton, especially when in calls
To use it simply bash it

#!/bin/bash
$(pactl load-module module-loopback latency_msec=1)
echo "MIC MONITORING IN PROGRESS"
echo "Press Q to stop"
while [ true ] ; do
read -n 1 k <&1
if [[ $k = q ]] ; then
$(pactl unload-module module-loopback) ; exit  ;
else
echo "MIC MONITORING IN PROGRESS"
fi
done
