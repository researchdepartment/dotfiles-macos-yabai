#!/bin/bash

separator='—————————————————————————————————'

user=`whoami`
host=`uname -n`
uptime=`uptime | sed 's/.*up \([^,]*\), .*/\1/'`

load=`uptime | awk -F' *,? *' '{print $(NF-2), $(NF-1), $NF}'`
processes=`ps -c -Ao pid,comm,pcpu -r | head -n 6`
processcount=`ps -e | wc -l | awk '{ print $1 }'`

ip_internal=`ipconfig getifaddr en0`

google_ping=`ping -c 2 195.46.39.39 | sed '$!d;s|.*/\([0-9.]*\)/.*|\1|'`
xch_ping=`ping -c 2 xch.fairuse.org | sed '$!d;s|.*/\([0-9.]*\)/.*|\1|'`
status_code=$(curl --write-out %{http_code} --silent --output /dev/null https://xch.fairuse.org/info/index_old.html)

echo "$user@$host"
echo "$separator"
echo "UPTIME: $uptime"
echo ""
echo "PROCESSES:"
echo "$separator"
echo "$processcount ($load)"
echo ""
echo "$processes"
echo ""
ps -c -Ao pid,comm,pmem | head -n 1
ps -c -Ao pid,comm,pmem | sort -nk3 -r | head -n 7 | grep -v sleep | grep -v Finder
echo ""
echo "STORAGE:"
echo "$separator"
df / | sed '1d' |
                awk '
                    /^\/dev\/disk3s1s1/ {

                        size_byte = $2 * 512            # df uses 512 byte blocks
                        avail_byte = $4 * 512
                        total_size_gb = size_byte / 1000000000
                        total_avail_gb = avail_byte / 1000000000

                        printf "DATA: %.1f GB\n", total_avail_gb
                    }
                '
echo ""
echo "NETWORK:"
echo "$separator"
echo "$ip_internal ($google_ping ms)"
echo ""
echo "SERVER STATUS:"
echo "$separator"
if [[ "$status_code" -ne 200 ]] ; then
  echo "X [OFFLINE]"
else
  echo "X [ONLINE] ($xch_ping ms)"
fi