#!/bin/bash
nginxLog="/var/log/nginx/access.log"
logBakFile="/var/log/nginx/"$(date "+%F")/"bak_"$(date "+%H_%M_%S")".log"

if [ ! -d ${logBakFile%/*} ]
then
	    mkdir -p ${logBakFile%/*}
	    fi

	    mv $nginxLog $logBakFile 2>&1 >/dev/null
	    #kill -USR1 `/var/run/nginx.pid`
	    kill -USR1 $(cat /var/run/nginx.pid)
