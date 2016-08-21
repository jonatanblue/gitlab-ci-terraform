# gitlab-ci-terraform

Same as the official  [hashicorp/docker-hub-images](https://github.com/hashicorp/docker-hub-images), but without `ENTRYPOINT`.

Gitlab CI [does not let you override `ENTRYPOINT`](https://gitlab.com/gitlab-org/gitlab-ci-multi-runner/blob/master/docs/executors/docker.md#the-entrypoint), meaning you can't use the official terraform image in your Gitlab-CI builds.

This image removes the entrypoint, allowing the container operator (the Gitlab-CI runner) to specify which `CMD` to invoke the container with.


## Example

`.gitlab-ci.yml` file example:

    image: jonatanblue/gitlab-ci-terraform:latest

    test:
      script:
        - terraform --version

# Tags

* `jonatanblue/gitlab-ci-terraform:latest` - latest version of terraform
* `jonatanblue/gitlab-ci-terraform:awscli` - latest terraform + awscli


# Builds

[Automated builds](https://hub.docker.com/r/jonatanblue/gitlab-ci-terraform/builds/) set up on [Docker Hub](https://hub.docker.com)
