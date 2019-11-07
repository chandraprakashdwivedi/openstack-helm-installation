# Installation of Openstack-helm

System requirements for helm

Ubuntu 16.04 <br/>
16GB of RAM <br/>
8 Cores <br/>
48GB HDD <br/>

Login as root 

apt-get update
apt-get upgrade -y
apt-get install ca-certificates git make jq nmap curl uuid-runtime -y
git clone https://opendev.org/openstack/openstack-helm-infra.git
git clone https://opendev.org/openstack/openstack-helm.git
cd openstack-helm
./tools/deployment/developer/common/010-deploy-k8s.sh
./tools/deployment/developer/common/020-setup-client.sh
./tools/deployment/developer/common/030-ingress.sh

If using NFS as storage
./tools/deployment/developer/nfs/040-nfs-provisioner.sh
./tools/deployment/developer/nfs/050-mariadb.sh
./tools/deployment/developer/nfs/060-rabbitmq.sh
./tools/deployment/developer/nfs/070-memcached.sh
./tools/deployment/developer/nfs/080-keystone.sh
./tools/deployment/developer/nfs/090-heat.sh
./tools/deployment/developer/nfs/100-horizon.sh
./tools/deployment/developer/nfs/120-glance.sh
./tools/deployment/developer/nfs/140-openvswitch.sh
./tools/deployment/developer/nfs/150-libvirt.sh
./tools/deployment/developer/nfs/160-compute-kit.sh
./tools/deployment/developer/nfs/170-setup-gateway.sh



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




