OIS Actions Runner
===

Builds on the upstream [actions-runner][1] with the following additions:

 1. kubectl
 2. vault
 3. Python for use with [setup-python][2]
 4. aws

The primary use case is to deploy to a kubernetes cluster using short lived
tokens starting from the Github oidc id jwt.

[1]: https://github.com/actions/actions-runner-controller/blob/master/runner/actions-runner.ubuntu-22.04.dockerfile
[2]: https://github.com/actions/setup-python
