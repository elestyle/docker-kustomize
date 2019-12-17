FROM alpine:3.10

ENV KUSTOMIZE_VERSION 3.5.1

RUN apk add curl git openssh \
  && curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.5.2/kustomize_v3.5.2_linux_amd64.tar.gz | tar xz -C /usr/local/bin \
  && chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
