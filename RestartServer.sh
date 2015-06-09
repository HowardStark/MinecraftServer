#!/bin/bash
source /home/howard/SkyFactory/BackupServer.sh RESTART-

screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 5 minutes\r"`"

sleep 150 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 2 minutes & 30 seconds\r"`"

sleep 90 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 1 minute\r"`"

sleep 30 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 30 seconds\r"`"

sleep 20 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 10 seconds\r"`"

sleep 5 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 5 seconds\r"`"

sleep 1 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 4 seconds\r"`"
sleep 1 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 3 seconds\r"`"
sleep 1 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 2 seconds\r"`"
sleep 1 && screen -S SkyFactory -p 0 -X stuff "`printf "say Server Restarting in 1 seconds\r"`"

sleep 1 && screen -S SkyFactory -p 0 -X stuff "`printf "stop\r"`"

sleep 10 && screen -S SkyFactory -p 0 -X stuff "./LaunchServer.sh^M"
