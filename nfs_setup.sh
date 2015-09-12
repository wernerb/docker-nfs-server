#!/bin/bash

set -e

mounts="${@}"

for mnt in "${mounts[@]}"; do
  src=$(echo $mnt | awk -F':' '{ print $1 }')
  echo "$src *(rw,sync,all_squash,fsid=0,no_subtree_check,insecure,anonuid=1000,anongid=100)" >> /etc/exports
done

exec runsvdir /etc/sv
