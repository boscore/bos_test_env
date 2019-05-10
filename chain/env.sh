#!/usr/bin/env bash

ulimit -c unlimited

# According to the source code path on your local host, modify the following environment variables.
BASE_DIR=/Code/github.com/boscore/bos/build/programs

nodeos=${BASE_DIR}/nodeos/nodeos
eosio_launcher=${BASE_DIR}/eosio-launcher/eosio-launcher
cleos=${BASE_DIR}/cleos/cleos
