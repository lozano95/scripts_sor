#!/bin/bash
pid=$1
ps -eo pid,pcpu | grep -P "^\s*$pid " | cut -c 7-10 

