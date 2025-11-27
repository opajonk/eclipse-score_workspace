#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <repo_dir>"
	exit 1
fi

repo_dir="$1"
cd "$repo_dir"
echo "Current directory: $(basename "$PWD")"
git pull upstream main
git checkout main
git rebase upstream/main
git checkout -
git push elektrobit main
