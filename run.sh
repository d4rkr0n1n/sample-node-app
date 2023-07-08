#!/bin/bash
port=$1
kill -9 $(lsof -i :$port | grep $port | awk '{print $2}')
JENKINS_NODE_COOKIE=dontKillMe PORT=$port nohup npm run start &
a=$(curl localhost:$1:wq/health-check)
b='OK'
until [ "$a" = "$b" ]
do
   sleep 1s
done