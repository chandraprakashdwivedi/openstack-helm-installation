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


After that Copy these scripts inside "openstack-helm" directory and execute one by one "or" you can directly run the scripts as mentioned in above document.

Sequence of execution:

deploy-kubernetes.sh	 <br/>
install-helm.sh	  <br/>
ingress-controller.sh  <br/>

To check the installation status of each service use 

#kubectl get pods --all-namespaces  <br/>
#helm status horizon   <br/>

To check particular container logs <br/>
#kubectl logs  horizon-669f4fb7f-5qrvh -n openstack


source the openstack environment and use  <br/>
#openstack endpoint list    

# Some Notes on Kubernets 

https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/




