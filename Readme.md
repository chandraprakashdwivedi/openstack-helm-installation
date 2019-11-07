# Installation of Openstack-helm

System requirements for helm

Ubuntu 16.04 <br/>
16GB of RAM <br/>
8 Cores <br/>
48GB HDD <br/>

Login as root 

First of all run this script to clone the openstack-helm git repos

openstack-helm-repos.sh  <br/>

## Installation of single node 
https://docs.openstack.org/openstack-helm/latest/install/developer/kubernetes-and-common-setup.html

## MultiNode Installation
https://docs.openstack.org/openstack-helm/latest/install/multinode.html


After that Copy these scripts inside "openstack-helm" directory and execute one by one "or" you can directly run the scripts by going to this path and execute script sequentially

#cd openstack-helm/tools/deployment/developer/common
 

Sequence of execution:

deploy-kubernetes.sh	 <br/>
install-helm.sh	  <br/>
ingress-controller.sh  <br/>

To check the installation status of each service use <br/>
#helm list

To see further container information use <br/>
#helm inspect nova |more

To check all services are running use <br/>
#kubectl get pods --all-namespaces  <br/>
#helm status horizon   <br/>

To check why particular container is not running you need to dump there logs <br/>
To check particular container logs <br/>
#kubectl logs  -n openstack horizon-669f4fb7f-5qrvh

To take console of particular container of the pod  <br/>
#kubectl exec -it openstack -c horizon-669f4fb7f-5qrvh -- /bin/bash

source the openstack environment and use  <br/>
#openstack endpoint list    

# Some Notes on Kubernets 

https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/




