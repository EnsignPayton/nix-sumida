#!/usr/bin/env bash

echo "Copying NixOS config..."
sudo cp -vf configuration.nix /etc/nixos

echo "Rebuilding NixOS..."
sudo nixos-rebuild switch

