#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
wget https://ziply.mm.fcix.net/rpmfusion/nonfree/fedora/tainted/39/x86_64/b/b43-firmware-6.30.163.46-12.fc39.noarch.rpm
rpm-ostree install b43-firmware-6.30.163.46-12.fc39.noarch.rpm
