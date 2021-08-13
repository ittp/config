#!/bin/sh

echo "start"
ssh pavel@hub.ittps.ru -p 2222 -T -L 0.0.0.0:3322:0.0.0.0:22 -vvv -N -i ./hub.key

ssh root@avt.ittps.ru -p 2222 -T -L 0.0.0.0:3322:0.0.0.0:22 -vvv -N
