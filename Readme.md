# Installation of Openstack-helm

System requirements for helm

Ubuntu 16.04 <br/>
16GB of RAM <br/>
8 Cores <br/>
48GB HDD <br/>

Login as root 

## Installation of single node 
https://docs.openstack.org/openstack-helm/latest/install/developer/kubernetes-and-common-setup.html

https://pbelamge.wordpress.com/2018/03/01/aio-openstack-using-helm/

https://www.careyscloud.ie/openstack_kube

## MultiNode Installation
https://docs.openstack.org/openstack-helm/latest/install/multinode.html


After that you can directly run the scripts by going to this path and execute script sequentially as mentioned in above document

#cd openstack-helm
 


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

https://kubernetes.io/docs/tasks/debug-application-cluster/get-shell-running-container/




