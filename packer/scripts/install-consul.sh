#!/usr/bin/env bash
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

version=1.10.2+ent

apt install consul-enterprise=${version}