FROM alpine:latest
MAINTAINER "Jonatan Bjork <jonatan@jonatanblue.se>"

ENV TERRAFORM_VERSION=0.7.1
ENV TERRAFORM_SHA256SUM=133766ed558af04255490f135fed17f497b9ba1e277ff985224e1287726ab2dc

RUN apk add --update git bash wget \
    python py-pip && pip install awscli

ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip ./
ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_SHA256SUMS ./

RUN sed -i '/terraform_${TERRAFORM_VERSION}_linux_amd64.zip/!d' terraform_${TERRAFORM_VERSION}_SHA256SUMS
RUN sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin
RUN rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip
