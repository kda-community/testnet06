#!/bin/sh


cd txs
kda sign *.yaml   -k ../../../testnet06-credentials/sender0

kda sign 1-*.yaml -k ../default_genesis.key

kda sign 2-*.yaml -k ../../../testnet06-credentials/ns-1

kda sign 3-*.yaml -k ../../../testnet06-credentials/ns-1
kda sign 3-*.yaml -k ../../../testnet06-credentials/kip-1

kda sign 4-*.yaml -k ../../../testnet06-credentials/ns-1
kda sign 4-*.yaml -k ../../../testnet06-credentials/util-1

kda sign 5-*.yaml -k ../../../testnet06-credentials/allocations

# Nothing to sign for 6

kda sign 7-*.yaml -k ../../../testnet06-credentials/chain-funder

kda sign 8-*.yaml -k ../../../testnet06-credentials/ns-1
kda sign 8-*.yaml -k ../../../testnet06-credentials/chain-funder
kda sign 8-*.yaml -k ../../../testnet06-credentials/faucet

kda sign 9-*.yaml -k ../../../testnet06-credentials/chain-funder