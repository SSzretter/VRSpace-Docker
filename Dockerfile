FROM openjdk:latest
RUN apt-get update
RUN apt-get install -y maven git
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
RUN apt-get install -y nodejs
