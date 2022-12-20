FROM summerwind/actions-runner:ubuntu-22.04

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["entrypoint.sh"]
