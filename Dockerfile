FROM alpine:latest
MAINTAINER "Jonatan Bjork <jonatan@jonatanblue.se>"

ENV TERRAFORM_VERSION=0.8.1
ENV TERRAFORM_SHA256SUM=da98894a79b7e97ddcb2a1fed7700d3f53c3660f294fb709e1d52c9baaee5c59

RUN apk add --update git bash wget

ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip ./
ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_SHA256SUMS ./

RUN sed -i '/terraform_${TERRAFORM_VERSION}_linux_amd64.zip/!d' terraform_${TERRAFORM_VERSION}_SHA256SUMS
RUN sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin
RUN rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip
