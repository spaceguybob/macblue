#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
sudo setsebool -P domain_kernel_load_modules on
cd /etc/yum.repos.d/

sudo wget https://copr.fedorainfracloud.org/coprs/bieszczaders/kernel-cachyos/repo/fedora-39/bieszczaders-kernel-cachyos-fedora-39.repo
sudo rpm-ostree override remove kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra --install kernel-cachyos


sudo wget https://copr.fedorainfracloud.org/coprs/bieszczaders/kernel-cachyos-addons/repo/fedora-39/bieszczaders-kernel-cachyos-addons-fedora-39.repo
sudo rpm-ostree install libcap-ng-devel procps-ng-devel
sudo rpm-ostree install uksmd
