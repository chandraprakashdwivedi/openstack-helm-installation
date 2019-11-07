#!/bin/bash
set -xe

sudo -H -E pip install "cmd2<=0.8.7"
sudo -H -E pip install \
-c${UPPER_CONSTRAINTS_FILE:=https://releases.openstack.org/constraints/upper/master} \
python-openstackclient python-heatclient --ignore-installed

sudo -H mkdir -p /etc/openstack
sudo -H chown -R $(id -un): /etc/openstack
tee /etc/openstack/clouds.yaml << EOF
clouds:
  openstack_helm:
    region_name: RegionOne
    identity_api_version: 3
    auth:
      username: 'admin'
      password: 'password'
      project_name: 'admin'
      project_domain_name: 'default'
      user_domain_name: 'default'
      auth_url: 'http://keystone.openstack.svc.cluster.local/v3'
EOF

#NOTE: Build charts
make all
