#!/bin/bash
set -euo pipefail

# Install pipx
sudo apt update
sudo apt install -y pipx

# Install gita
pipx install gita

# Enable bash autocompletion for gita
echo -e "\n# S-CORE gita setup" >> ~/.bashrc
echo "eval \"\$(register-python-argcomplete gita -s bash)\"" >> ~/.bashrc

# Set GITA_PROJECT_HOME environment variable
echo "export GITA_PROJECT_HOME=$(pwd)/.gita" >> ~/.bashrc
GITA_PROJECT_HOME=$(pwd)/.gita
mkdir -p "$GITA_PROJECT_HOME"
export GITA_PROJECT_HOME

# Make scripts available globally available
echo "export PATH=\$PATH:$GITA_PROJECT_HOME/scripts" >> ~/.bashrc

# Automagically clone repositories listed in baseline.csv
gita clone --preserve-path --from-file $(pwd)/baseline.csv
