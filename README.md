# gitlab-ci-terraform

Copied from [hashicorp/docker-hub-images](https://github.com/hashicorp/docker-hub-images), without the standard entrypoint.

Gitlab CI does not let you override the entrypoint, meaning you can't use the official image in your Gitlab-CI builds.

This image removes the entrypoint, allowing the container operator (the Gitlab-CI runner) to specify which `CMD` to invoke the container with.


## Example

`.gitlab-ci.yml` file example:

    image: jonatanblue/gitlab-ci-terraform:latest

    test:
      script:
        - terraform --version


# Builds

[Automated builds](https://hub.docker.com/r/jonatanblue/gitlab-ci-terraform/builds/) set up on [Docker Hub](https://hub.docker.com)
