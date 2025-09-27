#!/usr/bin/env bash

# Installing Moonrepo proto https://moonrepo.dev/proto
bash -c "$$(curl -fsSL https://moonrepo.dev/install/proto.sh)"

# Installing all the other tools with the proto
proto use

# Installing Git hooks with Lefthook
lefthook install
