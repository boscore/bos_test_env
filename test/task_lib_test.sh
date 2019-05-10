#!/usr/bin/env bash

. env.sh

$cleos push action eosio setupgrade '{"up":{"target_block_num":590}}' -p eosio

#./cluster.sh down 1,2,3,4,5,6,7,8
