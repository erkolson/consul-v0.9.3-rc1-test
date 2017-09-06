#!/usr/bin/env bash

set -euo pipefail

kubectl apply -f manifests/consul-test-config.yaml
kubectl apply -f manifests/consul-test-svc.yaml
kubectl apply -f manifests/consul-test-stateful.yaml
