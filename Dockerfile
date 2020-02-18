FROM ubuntu:latest
MAINTAINER Paweł 'felixd' Wojciechowski
RUN RUN apt-get update > /dev/null && apt-get install apt-transport-https > /dev/null && echo "deb https://s3.amazonaws.com/repo.deb.cyberduck.io stable main" | tee /etc/apt/sources.list.d/cyberduck.list > /dev/null && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE7097963FEFBE72 > /dev/null && apt-get update > /dev/null && apt-get install duck > /dev/null
