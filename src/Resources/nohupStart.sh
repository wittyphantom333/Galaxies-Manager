#!/bin/bash

cd /home/swg/swg-main

nohup ./startWithLogging.sh > startServer.txt 2>&1&

