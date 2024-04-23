#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraMono.zip
sudo rpm-ostree install unzip
unzip FiraMono.zip -d Fira
sudo cp Fira/ -r /usr/share/fonts/


wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/NerdFontsSymbolsOnly.zip
unzip NerdFontsSymbolsOnly.zip -d nerd
sudo cp nerd/ -r /usr/share/fonts/
