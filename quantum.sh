#!/bin/bash
pid=$1
nice=$(ps -eo pid,nice | grep -P "^ *$pid " | cut -c5
