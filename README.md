# Eclipse S-CORE Workspace

This repository contains a workspace which contains all [forked Eclipse S-CORE repositories](https://github.com/elektrobit-contrib?q=eclipse-score) in a [Google Repo](https://gerrit.googlesource.com/git-repo) metadata file.
This helps a lot with checking out, and working with, the multi-repository structure of Eclipse S-CORE.

We use repo mostly to iterate over the repositories, not for actually baselining.

Here are a few helpful commands:

```shell
repo sync -j8
repo forall -j8 -c "git checkout main"
repo forall -j8 -c "git pull"
repo forall -j8 -c "git lfs pull"
```
