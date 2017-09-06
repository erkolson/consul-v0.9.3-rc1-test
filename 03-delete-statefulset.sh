#!/usr/bin/env bash

set -euo pipefail

# Delete the pods, their data will be saved in the PVCs that will be picked up
# when re-launched
kubectl delete statefulset consul-test

# cause some churning of ip address allocations so the new consul pods get
# new ips
kubectl apply -f manifests/nginx-util.yaml

# launch consul again
kubectl apply -f manifests/consul-test-stateful.yaml
