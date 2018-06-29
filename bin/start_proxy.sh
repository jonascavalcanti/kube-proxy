#!/bin/bash

#Adjust filter
modprobe br_netfilter

#Start Kube-Proxy
 kube-proxy \
 --logtostderr=true \
 --v=2 \
 --masquerade-all=true \
 --proxy-mode=iptables \
 --cluster-cidr=${KUBERNETES_CLUSTER_RANGE_IP} \
 --hostname-override=${HOSTNAME_OVERRIDE} \
 --master=https://${APISERVER_IP}:6443 \
 --kubeconfig=${PROXY_CERTS}/kubeconfig