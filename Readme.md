# Installation Script for Openstack-helm

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


After that Copy these scripts inside "openstack-helm" directory and execute one by one

Sequence of execution:

deploy-kubernetes.sh	 <br/>
install-helm.sh	  <br/>
ingress-controller.sh  <br/>


# Some Notes on Kubernets

https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/




