FROM ubuntu

RUN apt-get update && apt-get install -y curl && \
    apt-get install gnupg2 -y && \
    apt-get install -y firefox
RUN gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash -s stable
SHELL ["/bin/bash", "-l", "-c"] 
RUN rvm install 2.5.3