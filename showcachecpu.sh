#!/bin/bash
cache=$(cat /proc/cpuinfo | grep "cache size" | cut -d ":" -f2 | cut -d " " -f2)
procesador=$(cat /proc/cpuinfo | grep "model name" | cut -d ":" -f2)
fpu=$(cat /proc/cpuinfo | grep -P "^fpu\t" | cut -d ":" -f2)
echo "el procesador $procesador tiene una cache de $cache KiB"  
if [ "$fpu" == " yes" ]; then 
echo si que tiene fpu
fi
