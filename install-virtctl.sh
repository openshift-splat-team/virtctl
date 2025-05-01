#!/bin/bash
export VERSION=$(curl https://storage.googleapis.com/kubevirt-prow/release/kubevirt/kubevirt/stable.txt)
wget https://github.com/kubevirt/kubevirt/releases/download/${VERSION}/virtctl-${VERSION}-linux-amd64

# Set execute permissions
chmod +x virtctl-${VERSION}-linux-amd64

# Copy application from external location
cp virtctl-${VERSION}-linux-amd64 /virtctl