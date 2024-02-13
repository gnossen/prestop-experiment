#!/bin/bash

set -euo pipefail

sigterm_handler() {
  echo "Caught SIGTERM signal!" | ts
  exit 1
}

sigkill_handler() {
  echo "Caught SIGKILL signal!" | ts 
  exit 1
}

trap sigterm_handler SIGTERM
trap sigkill_handler SIGKILL

while sleep 1; do true; done
