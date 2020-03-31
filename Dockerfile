ARG ARCH="amd64"
ARG OS="linux"

FROM golang:1.13 as builder
COPY .  /go/build
WORKDIR /go/build
RUN     make build


FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="sync-secrets-controller"
LABEL org.label-schema.description="Operator syncing secrets across namespaces in Kubernetes"
LABEL org.label-schema.vcs-url="https://github.com/xunleii/sync-secrets-controller"
LABEL maintainer="Alexandre NICOLAIE <alexandre.nicolaie@gmail.com>"

COPY --from=builder /go/build/controller /bin/controller
COPY LICENSE /LICENSE

USER       nobody
EXPOSE     8080
WORKDIR    /
ENTRYPOINT [ "/bin/controller" ]
CMD        [ "-v1", "--ignore-namespace=kube-system" ]