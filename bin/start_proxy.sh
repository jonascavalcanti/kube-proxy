#!/bin/bash

#Start Kube-Proxy
 kube-proxy \
 --logtostderr=true \
 --v=2 \
 --master=https://${APISERVER_IP}:6443 \
 --kubeconfig=${PROXY_CERTS}/kubeconfig