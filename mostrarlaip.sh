#!/bin/bash
ip=$(ifconfig | grep -P "\s*inet" | cut -d " " -f12 | cut -d ":" -f2)
echo $ip

