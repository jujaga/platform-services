#!/bin/bash

if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    echo "${USER_NAME:-default}:x:$(id -u):0:${USER_NAME:-default} user:${HOME}:/sbin/nologin" >> /etc/passwd
  fi
fi

# # Set Env variables from configMap data
# export TOKEN=$(cat /opt/creds/token)
# echo $TOKEN

# ansible-playbook repo-mapper.yml
for i in $(seq 1 999); do echo $i; sleep 5; done