#!/bin/bash

HASHES='
    769282ab3dee78378d7443fe6c1344c76e718734e7f581961717f12a121a2be8
'

PWD=$(dirname $0)
KEYSTORE=$PWD/keystore_test1
PASSWORD=test1_Account

service rabbitmq-server start
tbears start

function deploy() {
    tbears deploy $1.zip -c $1.json -k $KEYSTORE -p $PASSWORD
}

function sendtx() {
    tbears sendtx -c $1.json -k $KEYSTORE -p $PASSWORD
}

for h in $HASHES; do
    tx=$PWD/$h
    grep deploy $tx.json > /dev/null
    if [[ $? -eq 0 ]]; then
        deploy $tx
    else
        sendtx $tx
    fi
    sleep 3
done
