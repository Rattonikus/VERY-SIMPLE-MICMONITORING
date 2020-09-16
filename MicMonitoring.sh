#!/bin/bash
$(pactl load-module module-loopback latency_msec=1)
echo "MIC MONITORING IN PROGRESS"
echo "Press Q key to exit"
while [ true ] ; do
read -n 1 k <&1
if [[ $k = q ]] ; then
$(pactl unload-module module-loopback) ; exit  ;
else
echo "MIC MONITORING IN PROGRESS"
fi
done

