#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Rozpowszechniane na warunkach zmodyfikowanej licencji BSD.

set -e

if [[ ! -z "${JUPYTERHUB_API_TOKEN}" ]]; then
  # Uruchomione przez JupyterHub, użyj punktu single-user.
  exec /usr/local/bin/start-singleuser.sh $*
else
  . /usr/local/bin/start.sh jupyter notebook $*
fi
