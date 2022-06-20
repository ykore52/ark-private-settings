#!/bin/bash

$pw=1qazse4rfvgy7
$ip=127.0.0.1
$port=32330

/opt/rcon/rcon -P$pw -a$ip -p$port serverchat "5分後にサーバーを再起動します"
sleep 300
/opt/rcon/rcon -P$pw -a$ip -p$port saveworld
#/opt/rcon/rcon -P$pw -a$ip -p$port destroywilddinos
sleep 5
docker restart ark_server
