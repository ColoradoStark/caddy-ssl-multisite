FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install ruby 1.9.2 -y \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install gem -y \
    && apt-get install rubygems -y \
    && gem install wayback_machine_downloader

WORKDIR /home
