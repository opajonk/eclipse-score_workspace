#!/bin/bash
set -euo pipefail

# Install pipx
sudo apt update
sudo apt install -y pipx

# Install gita
pipx install gita

# Enable bash autocompletion for gita
echo "eval \"\$(register-python-argcomplete gita -s bash)\"" >> ~/.bashrc

# Set GITA_PROJECT_HOME environment variable
echo "export GITA_PROJECT_HOME=/workspaces/eclipse-score_workspace/.gita" >> ~/.bashrc
GITA_PROJECT_HOME=/workspaces/eclipse-score_workspace/.gita
mkdir -p "$GITA_PROJECT_HOME"
export GITA_PROJECT_HOME

# Automagically clone repositories listed in baseline.csv
gita clone --preserve-path --from-file /workspaces/eclipse-score_workspace/baseline.csv
