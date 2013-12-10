#!/bin/bash
git rm $1
git commit -a -m "borrando $1"
git push -u origin master 

