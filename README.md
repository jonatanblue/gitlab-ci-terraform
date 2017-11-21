# gitlab-ci-terraform

Good news! This image is no longer needed in GitLab and GitLab Runner 9.4 and later, thanks to the [Extended Docker configuration options](https://docs.gitlab.com/ce/ci/docker/using_docker_images.html#extended-docker-configuration-options).

Same as the official  [hashicorp/docker-hub-images](https://github.com/hashicorp/docker-hub-images), but without `ENTRYPOINT`.

Prior to version 9.4, Gitlab CI [did not let you override `ENTRYPOINT`](https://docs.gitlab.com/ce/ci/docker/using_docker_images.html#overriding-the-entrypoint-of-an-image), meaning you can't use the official terraform image in your Gitlab-CI builds.

This image removes the entrypoint, allowing the container operator (the Gitlab-CI runner) to specify which `CMD` to invoke the container with.


## Example

`.gitlab-ci.yml` file example:

    image: jonatanblue/gitlab-ci-terraform:latest

    test:
      script:
        - terraform --version


# Builds

[Automated builds](https://hub.docker.com/r/jonatanblue/gitlab-ci-terraform/builds/) set up on [Docker Hub](https://hub.docker.com)
