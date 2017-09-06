#!/usr/bin/env bash

set -euo pipefail

consul kv put test/key1 value1
consul kv put test/key2 value2

consul operator raft list-peers
