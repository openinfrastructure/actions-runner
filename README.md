OIS Actions Runner
===

Builds on the upstream [actions-runner][1] with the following additions:

 1. kubectl
 2. vault
 3. Python for use with [setup-python][2]

The primary use case is to deploy to a kubernetes cluster using short lived
tokens starting from the Github oidc id jwt.

[1]: https://hub.docker.com/r/summerwind/actions-runner
[2]: https://github.com/actions/setup-python
