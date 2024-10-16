# Copyright 2020-2021 Hyperledger Cactus Contributors
# SPDX-License-Identifier: Apache-2.0
cd ../..

## Build validator for Fabric
cd ./packages/ledger-plugin/fabric/validator/src
./script-build-validator.sh
cp -a ../../../../../examples/discounted-cartrade/build/wallet .
cd ../../../../..

## build validator for Ethereum
cd ./packages/ledger-plugin/go-ethereum/validator/src
./script-build-validator.sh
cd ../../../../..

## build packages
cd ./packages
./script-build-packages.sh
cd ..

## build cartrade apps
cd ./examples/discounted-cartrade
./script-build-cartrade.sh