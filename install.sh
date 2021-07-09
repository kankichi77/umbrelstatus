#!/bin/bash
curl -s --header "Content-Type: application/json"   --request POST   --data "{\"setup\":\"1\"}"   https://umbrel.kankichi.xyz/umbrelstatus.php > .env
./reporttemp.sh .env
d=`pwd`
(crontab -l ; echo "* * * * * $d/reporttemp.sh $d/.env > $d/cronlog.txt") | sort - | uniq - | crontab -

