FROM alpine:latest

RUN apk add --update curl

# install kubectl 
RUN curl -L -o /usr/local/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x /usr/local/bin/kubectl

# Install virtctl
RUN VERSION=$(curl -L -s https://storage.googleapis.com/kubevirt-prow/release/kubevirt/kubevirt/stable.txt); curl -L -o /usr/local/bin/virtctl https://github.com/kubevirt/kubevirt/releases/download/${VERSION}/virtctl-${VERSION}-linux-amd64 && chmod +x /usr/local/bin/virtctl
