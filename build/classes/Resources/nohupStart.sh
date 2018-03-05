#!/bin/bash

cd /home/swg/swg-main/nme/logs

nohup /home/swg/swg-main/nme/scripts/./startServer.sh > startServer.txt 2>&1&

