#!/bin/bash
echo "******************************"
echo "NME Login Server Started"
echo "******************************"
cd $(pwd)/exe/linux

killall LoginServer &> /dev/null


./bin/LoginServer -- @servercommon.cfg
