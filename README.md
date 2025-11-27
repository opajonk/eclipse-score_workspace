# Eclipse S-CORE Workspace

This repository contains a workspace which contains all [forked Eclipse S-CORE repositories](https://github.com/elektrobit-contrib?q=eclipse-score) in a [gita](https://github.com/nosarthur/gita) metadata file.
This helps a lot with checking out, and working with, the multi-repository structure of Eclipse S-CORE.

## Setup with devcontainer

If you do not have `gita` installed you can use the devcontainer of this repository, which has `gita` installed.

```shell
git clone git@github.com:opajonk/eclipse-score_workspace.git s-core
```

The file `baseline.csv` contains all required meta-data.
It can be used with the `gita clone` to create a complete checkout of S-CORE.
In fact, the devcontainer in this repository already creates this: cf. `.devcontainer/install_gita.sh`.
So, upon start of the devcontainer, gita already knows all repositories from `baseline.csv` and has them cloned!

## Iterating over repos

[Gita](https://github.com/nosarthur/gita) is a very out-of-the-box-useful, but also configurable tool.

> NOTE: The devcontainer comes with auto-completion for gita.

It has the capability to "act" (i.e. perform git, shell, or custom commands) on repositories that it knows about.
This can be done individually, in groups, or over all repositories.
Some groups are already defined in this workspace; run `gita group` to see them:

````console
$ gita group 
modules: 
  - baselibs
  - baselibs_rust
  - communication
[...]
  - scrample
infrastructure: 
  - bazel_platforms
  - bazel_registry
[...]
  - tooling
````

Now you can, for example, pull *all* repositories:

````console
$ gita pull
baselibs: Already up to date.

tooling: Already up to date.
[...]
devcontainer: Already up to date.
````

You can also just act on a group.
For this, gita uses a "context".
You tell gita what your current context is, and then it will act only upon those repositories which are part of it.

````console
$ gita context infrastructure
$ gita ll
bazel_platforms main       []      Merge pull request #4 from eclipse-score/nira_bug_fix_constraint_value (7 weeks ago)
bazel_registry  main       []      Update modules (#179) (2 hours ago)
devcontainer    main       []      Add more developer-tools (#57) (26 hours ago)
[...]
tooling         main       []      formatting: Add rustfmt (#86) (6 days ago)
````

Please consult the [gita documentation](https://github.com/nosarthur/gita), the online help / autocompletion for further information.
