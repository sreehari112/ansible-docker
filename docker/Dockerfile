FROM ubuntu:latest
RUN apt update && apt install inotify-tools gzip
RUN mkdir incoming processed
ADD test.sh /
