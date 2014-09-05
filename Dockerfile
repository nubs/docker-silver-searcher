FROM ubuntu:14.04

RUN apt-get update && apt-get install -y silversearcher-ag git-core

WORKDIR /workdir
