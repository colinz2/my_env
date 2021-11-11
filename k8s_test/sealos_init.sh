#!/bin/sh

./sealos init \
--master 192.168.33.10 \
--node 192.168.33.11 \
--user root \
--passwd '12345678' \
--interface enp0s8 \
--pkg-url kube1.22.0.tar.gz \
--version v1.22.0
