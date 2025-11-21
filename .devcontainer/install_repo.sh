#!/bin/bash
set -euo pipefail

mkdir -p ~/.local/bin
#PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.local/bin/repo
chmod a+rx ~/.local/bin/repo
