#!/bin/bash

# stop/start mongoDB

DB_action(){
	action="$1"
	sudo systemctl $action mongodb.service
}


Parameter_judge() {
	correct_num="$1"
	real_num="$2"
	
	if [ $correct_num != $real_num ]; then
		Usage
	fi
}


Usage(){
	echo "Usage: $0 { start | stop | restart | status }"
	exit 1
}

Install() {
	for action in start enable status
	do 
		DB_action $action
	done
}

Uninstall() {
	for action in stop disable status
	do 
		DB_action $action
	done
}


case "$1" in 
	start)
	Parameter_judge 1 $#
	Install 
	;;

	stop)
	Parameter_judge 1 $#
	Uninstall 
	;;

	restart)
	Parameter_judge 1 $#
	DB_action restart
	;;

	status)
	Parameter_judge 1 $#
	DB_action status
	;;

	*)
	Usage
	;;
esac

