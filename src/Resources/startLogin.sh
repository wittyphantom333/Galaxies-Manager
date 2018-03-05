#!/bin/bash
echo "******************************"
echo "Galaxies Login Server Started"
echo "******************************"
cd /home/swg/swg-main/exe/linux

killall LoginServer &> /dev/null


./bin/LoginServer -- @servercommon.cfg
