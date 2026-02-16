#!/bin/sh
CONFIG=config.yaml


mkdir -p txs
kda gen -t 1-rotate-keysets.yaml                -d $CONFIG -o txs/1-tx-{{chain}}.yaml
kda gen -t 2-upgrade-to-ns-v2.yaml              -d $CONFIG -o txs/2-tx-{{chain}}.yaml
kda gen -t 3-deploy-kip.yaml                    -d $CONFIG -o txs/3-tx-{{chain}}.yaml
kda gen -t 4-deploy-util.yaml                   -d $CONFIG -o txs/4-tx-{{chain}}.yaml
kda gen -t 5-release-initial-allocation.yaml    -d $CONFIG -o txs/5-tx.yaml
kda gen -t 6-bootstrap-x-chain-gas-station.yaml -d $CONFIG -o txs/6-tx-{{chain}}.yaml
kda gen -t 7-dispatch-allocation.yaml           -d $CONFIG -o txs/7-tx-{{chain}}.yaml
kda gen -t 8-deploy-faucet.yaml                 -d $CONFIG -o txs/8-tx-{{chain}}.yaml
kda gen -t 9-fund-gas-station.yaml              -d $CONFIG -o txs/9-tx-{{chain}}.yaml

rm -f txs/7-tx-0.yaml