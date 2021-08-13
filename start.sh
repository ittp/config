#!/bin/sh

echo "start"

env=. ./secret.env
echo ${env}
mkdir /.sshtun
dir=/.sshtun
config=/.sshtun/config
cat ${github.secrets.sshtun} > ${config}
ssh -T -N -vvv ${FORWARD} ${USER}@${HOST} -p ${PORT}

#ssh pavel@hub.ittps.ru -p 2222 -T -L 0.0.0.0:3322:0.0.0.0:22 -vvv -N -i ./hub.key

ssh root@avt.ittps.ru -p 2222 -T -L 0.0.0.0:3322:0.0.0.0:22 -vvv -N
