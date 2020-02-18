FROM ubuntu:latest
MAINTAINER Paweł 'felixd' Wojciechowski
RUN apt-get update && apt-get install gnupg ca-certificates -y && echo "deb https://s3.amazonaws.com/repo.deb.cyberduck.io stable main" | tee /etc/apt/sources.list.d/cyberduck.list && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE7097963FEFBE72 && apt-get update && apt-get install duck
