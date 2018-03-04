#!/bin/bash
# MOTD Startup Messages

#read hostname
HOSTN=`hostname`

#read distro version
DISTRO1=`lsb_release -s -d`
DISTRO2=`lsb_release -c | awk -F: '{print $2}' | sed -e 's/^[ \t]*//'`
DISTRO3=`cat /etc/debian_version`

#read kernel
KERNEL=`uname -r`

#read cpu
CPU=`cat /proc/cpuinfo | grep "model name" | awk -F: '{print $2}' | sed -n '1p' |sed -e 's/^[ \t]*//'`

#read Memory
MEMORY1=`cat /proc/meminfo|grep 'MemF'| awk '{print int($2/1000)}'`
MEMORY2=`cat /proc/meminfo|grep 'MemT'| awk '{print int($2/1000)}'`

#disk space
DISK1=`df -h | grep "/dev/sda1" | awk '{print $2}' | sed 's/.$//'`
DISK2=`df -h | grep "/dev/sda1" | awk '{print $4}' | sed 's/.$//'`

#ips
IP1=`netstat -n -t | awk '{print $4}' | grep -o "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*" | grep -v "127.0.0.1" | sort -u`


echo -e "NGE Server v3.3";

#echo -e "\n";
echo -e "
Public Repo:                  https://www.swgsource.com/forums/
Default SWG User/PW:          User: swg Password: swg
Default SWG Folder:           /home/swg/
SWG Gameserver Instructions:  /home/swg/Desktop/Readme 1st Docs

Oracle EM: SWG                https://$IP1:5500/em
Default ORACLE-EM User/PW:    User: SYS Password: swg
Default ORACLE User/PW:       User: oracle Password: swg
Default ORACLE-Folders:       /home/oracle /u01/ /u02/
"
echo -e "
+++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Hostname....: $HOSTN
  Distro......: $DISTRO1 $DISTRO2 $DISTRO3
  Kernel......: $KERNEL
  CPU.........: $CPU
  Memory......: $MEMORY1 MB (Free) / $MEMORY2 MB (Total)
  Disk.(OS)...: $DISK2 GB (Free) / $DISK1 GB (Total)
  IP Address..: $IP1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++
"

