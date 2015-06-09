#!/bin/bash

MAINDIR=`pwd`
BACKUPSDIR=$MAINDIR/Backups

screen -S SkyFactory -p 0 -X stuff "`printf "say Starting backup. World not saving...\r"`"
screen -S SkyFactory -p 0 -X stuff "`printf "save-off\r"`"
screen -S SkyFactory -p 0 -X stuff "`printf "save-all\r"`"
sync
sleep 10
zip -v $BACKUPSDIR/$1`date "+%Y-%m-%d-%H-%M-%S"`.zip -r $MAINDIR/world
sleep 10

screen -S SkyFactory -p 0 -X stuff "`printf "save-on\r"`"
screen -S SkyFactory -p 0 -X stuff "`printf "say Backup complete. World saving...\r"`"
