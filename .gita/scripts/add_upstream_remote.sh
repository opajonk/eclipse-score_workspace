#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <repo_dir>"
	exit 1
fi

repo_dir="$1"
cd "$repo_dir"
url=$(git remote get-url origin)
new_url="${url/elektrobit-contrib\/eclipse-score_/eclipse-score/}"
git remote remove upstream 2>/dev/null || true
git remote add upstream "$new_url"
git fetch upstream
echo "Remote 'upstream' added with URL: $new_url"
