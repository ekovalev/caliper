#!/bin/bash

# publishNpmPackages.js contains the package dir names as caliper-*, those are fine
if grep -rnE --exclude-dir="caliper-publish" "['\"]caliper-(cli|core|burrow|ethereum|fabric|fisco-bcos|iroha|sawtooth)['\"]" . ; then
    echo "^^^ Found incorrect Caliper package names. Use the @hyperledger/ prefix for Caliper packages, e.g., @hyperledger/caliper-core"
    exit 1
else
    echo "Caliper package names are correct."
    exit 0
fi
