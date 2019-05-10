# eosio_test_env
EOSIO Test Environment


### Manual
``` 
Step 1. Config environment variables
"BASE_DIR" in file ./chain/env.sh
"CONTRACTS_DIR" in file ./test/env.sh

Step 2: Start up the blockchain
$ cd ./chain
$ ./cluster.sh init
$ ./cluster.sh start

# Control nodes
$ ./cluster.sh down all      stop all nodes
$ ./cluster.sh down 0,1,2,3  stop nodes of number 0,1,2,3
$ ./cluster.sh up all        start all nodes
$ ./cluster.sh up 0,1,2,3      start nodes of number 0,1,2,3

Step 3: Initialize the blockchain
deploy system contracts, issue token, create some accounts and lots of BPs then vote some BPs.
$ cd ./test
$ . chain_run.sh

# How to change BPs schedule.
$ cleos system voteproducer prods eosvoterbig1 ${schedule2} -p eosvoterbig1
# you can set and vote you own BP schudele as you want

Step 4: Test your task
You can write the test process to the "task_***_test.sh" files.
then run command `. task_***_test.sh` or test step-by-step in current shell.
```
