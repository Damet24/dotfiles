#!/bin/bash

start_server() {
	cd ~/Dev/coltek

	docker-compose up -d
}

stop_server() {
	docker stop lamp-php8 lamp-mysql8 lamp-redis lamp-phpmyadmin
}

start_terminal() {
  docker exec -it lamp-$1 bash
}

if [[ "$1" == "start" ]]; then
	start_server

elif [[ "$1" == "stop" ]]; then
	stop_server

elif [[ "$1" == "term" ]]; then
  start_terminal $2

else
	cat <<- EOF
	Usage : launch.sh [option]
		
	Available options :
      start: 	start the lamp server
      stop: 	stop the lamp server
      term: 	stop the lamp server
	EOF
fi
