#!/bin/bash
directorio=$(ls -l $1 | grep -P "x" | cut -c 52- )
echo "$directorio"



