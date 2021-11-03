#!/bin/bash

export VAULT_ADDR=http://localhost:8200
export CONSUL_ADDR=http://localhost:8500
export NOMAD_ADDR=http://localhost:8500

vagrant reload consul-server-1 --provision
vagrant reload vault-server-1 --provision
vagrant reload nomad-server-1 --provision
vagrant reload nomad-client-1 --provision
vagrant reload nomad-client-2 --provision

vagrant status
vault status
consul members
nomad server members
nomad node status
nomad status
