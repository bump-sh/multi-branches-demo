## Multi branch demo with Bump.sh

Purpose of this repo is to implement a script
with Bump.sh GitHub action, to deploy several APIs
to specific branches.


## GitHub action scripts

GitHub workflow is called when commit is merged on 'main',
which generate call to script deploy-all-branches.sh

In this script, we assume doc structure is
doc/{branchName}/openapi.yml,
this can of course be customized.

Each folder has its own branch on Bump.sh documentation:

https://bump.sh/demo/doc/multi-branches-demo
