# Eclipse S-CORE Workspace

This repository contains a workspace which contains all [forked Eclipse S-CORE repositories](https://github.com/elektrobit-contrib?q=eclipse-score) in a [Google Repo](https://gerrit.googlesource.com/git-repo) metadata file.
This helps a lot with checking out, and working with, the multi-repository structure of Eclipse S-CORE.

## Setup with devcontainer

If you do not have `repo` installed you can use the devcontainer of this repository, which has `repo` installed.

```shell
git clone git@github.com:opajonk/eclipse-score_workspace.git s-core
```

Inside the devcontainer run

```shell
repo init --manifest-url=.
repo sync
```

## Setup without devcontainer

With `repo` already installed run

```shell
mkdir s-core
cd s-core
repo init --manifest-url=git@github.com:opajonk/eclipse-score_workspace.git
repo sync
```

## Iterating over repos

We use repo mostly to iterate over the repositories, not for actually baselining.

```shell
repo forall -c "git checkout main"
repo forall -c "git pull"
repo forall -c "git lfs pull"
```
