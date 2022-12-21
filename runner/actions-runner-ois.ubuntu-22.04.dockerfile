FROM ghcr.io/openinfrastructure/actions-runner/actions-runner:ubuntu-22.04

ARG KUBE_VERSION=1.25.5

USER root

ENV DEBIAN_FRONTEND=noninteractive
RUN mkdir -p /etc/apt/keyrings \
    && curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
    kubectl=$KUBE_VERSION-00 \
    && rm -rf /var/lib/apt/lists/*

USER runner
