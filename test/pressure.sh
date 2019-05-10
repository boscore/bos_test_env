#!/usr/bin/env bash

start(){
    if [[ "$1" == "" ]]; then n=1; else  n=$1; fi
    curl --data-binary '["", 100, '$((2*${n}))']' http://127.0.0.1:8888/v1/txn_test_gen/start_generation
}

stop(){
    curl /dev/null http://127.0.0.1:8888/v1/txn_test_gen/stop_generation
}

case "$1"
in
    "start" )   shift && start $@;;
    "stop"  )   shift && stop $@;;
    *) echo "usage: pressure.sh command [arg]
commands:
    start [num]  start transaction pressure
    stop         stop transaction pressure" ;;
esac
