#!/bin/bash

vagrant halt nomad-client-2
vagrant halt nomad-client-1
vagrant halt nomad-server-1
vagrant ssh vault-server-1
