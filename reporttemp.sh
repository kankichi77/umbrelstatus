#!/bin/bash
id=`cat $1`
d=`date`
t="status"
curl -s --header "Content-Type: application/json"   --request POST   --data "{\"id\":\"$id\",\"ts\":\"$d\",\"temp\":\"$t\"}"   https://umbrel.kankichi.xyz/umbrelstatus.php

