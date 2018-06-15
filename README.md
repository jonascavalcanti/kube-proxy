# Kube-Scheduler v1.9.8

# Kubernetes

<img src="https://github.com/kubernetes/kubernetes/raw/master/logo/logo.png" width="100">

----

Kubernetes is an open source system for managing [containerized applications]
across multiple hosts; providing basic mechanisms for deployment, maintenance,
and scaling of applications.

Kubernetes builds upon a decade and a half of experience at Google running
production workloads at scale using a system called [Borg],
combined with best-of-breed ideas and practices from the community.

Kubernetes is hosted by the Cloud Native Computing Foundation ([CNCF]).
If you are a company that wants to help shape the evolution of
technologies that are container-packaged, dynamically-scheduled
and microservices-oriented, consider joining the CNCF.
For details about who's involved and how Kubernetes plays a role,
read the CNCF [announcement].

----

# Environment Variables Defaults

```
APISERVER_IP="127.0.0.1"
PATH_BASE_KUBERNETES="/opt/kubernetes"
DIR_CERTS="${PATH_BASE_KUBERNETES}/certs"
PROXY_CERTS="${DIR_CERTS}/modules/kube-proxy"
PROXY_PEM="kube-proxy.pem"
PROXY_KEY_PEM="kube-proxy-key.pem"

```
# How to use this image

Start with docker command

```
docker run -d \
        --name <container_name> --privileged \ 
        -p 10251:10251  \
        -e APISERVER_IP="127.0.0.1" \
        -e PATH_BASE_KUBERNETES="/opt/kubernetes" \
        -e DIR_CERTS="${PATH_BASE_KUBERNETES}/certs" \
        -e PROXY_CERTS="${DIR_CERTS}/modules/kube-proxy" \
        -e PROXY_PEM="kube-proxy.pem" \
        -e PROXY_KEY_PEM="kube-proxy-key.pem" \
        -v <path_local_storage_with_certificates_api>:${DIR_CERTS} <image>:<tag>
```

# Docker example

```
docker run -d --name kube-proxy -h kube-proxy --privileged=true -p 10251:10251 -v /opt/kubernetes/certs:/opt/kubernetes/certs kube-proxy
     
```