#!/bin/bash

HOME=/vol1/

mkdir -p $HOME/opt
mkdir -p $HOME/opt/bin
mkdir -p $HOME/opt/lib
mkdir -p $HOME/opt/include
mkdir -p $HOME/tmp

#singularity
sudo apt-get update && \
  sudo apt-get install -y build-essential \
  libseccomp-dev pkg-config squashfs-tools cryptsetup libssl-dev uuid-dev

export VERSION=1.13.5 OS=linux ARCH=amd64

wget -O $HOME/tmp/go${VERSION}.${OS}-${ARCH}.tar.gz https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz && \
  tar -C $HOME/opt -xzf $HOME/tmp/go${VERSION}.${OS}-${ARCH}.tar.gz

echo 'export GOPATH=${HOME}/go' >> ~/.bashrc && \
  echo 'export PATH=${PATH}:${HOME}/opt/go/bin:${GOPATH}/bin:${HOME}/opt/singularity/bin:${HOME}/opt/bin' >> ~/.bashrc && \
  source ~/.bashrc

export GOPATH=${HOME}/go
export PATH=${PATH}:${HOME}/opt/go/bin:${GOPATH}/bin:${HOME}/opt/singularity/bin:${HOME}/opt/bin

curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v1.15.0

mkdir -p ${GOPATH}/src/github.com/sylabs && \
  cd ${GOPATH}/src/github.com/sylabs && \
  git clone https://github.com/sylabs/singularity.git && \
  cd singularity

git checkout -b v3.5.1

cd ${GOPATH}/src/github.com/sylabs/singularity && \
  mkdir -p $HOME/opt/singularity && \
  ./mconfig --without-suid --prefix=$HOME/opt/singularity && \
  cd ./builddir && \
  make && \
  make install

