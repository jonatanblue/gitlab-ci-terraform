# gitlab-ci-terraform

Copied from [hashicorp/docker-hub-images](https://github.com/hashicorp/docker-hub-images), without the standard entrypoint.

Gitlab CI does not let you override the entrypoint, meaning you can't use the official image in a Gitlab-CI build. This image changes the entrypoint to bash, allowing you to run terraform inside the image.

# builds

[Automated builds](https://hub.docker.com/r/jonatanblue/gitlab-ci-terraform/builds/) set up on [Docker Hub](https://hub.docker.com)
