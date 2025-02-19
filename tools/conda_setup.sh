#!/usr/bin/bash

echo "Installing conda.."

# Install conda
sudo dnf install conda

# verify conda installation
conda --version

echo "$0 done."
