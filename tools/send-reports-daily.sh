#! /bin/bash

PASSHPORT_HOST_WITH_PORT=$1
RECIPIENT=$2
(echo To:${RECIPIENT}; echo From:passhport; echo "Content-Type: text/html"; echo Subject: PaSSHport $(date  --date="7 days ago" +%y-%m) daily report; echo; wget --no-check-certificate -qO - https://${PASSHPORT_HOST_WITH_PORT}/reporting/daily) | /usr/sbin/sendmail -t

