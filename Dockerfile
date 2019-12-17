FROM alpine:3.10

ENV KUSTOMIZE_VERSION 3.5.1

RUN apk add curl git openssh \
  && curl -L --output /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64 \
  && chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
