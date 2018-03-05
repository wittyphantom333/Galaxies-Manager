#!/bin/bash

cd /home/swg/swg-main/nme/logs

nohup /home/swg/swg-main/nme/scripts/./oracle.sh > oracleStatus.txt 2>&1&

