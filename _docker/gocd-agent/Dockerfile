FROM gocd/gocd-agent-ubuntu-16.04:v18.1.0

RUN apt-get update

RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    libxml2-utils

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN apt-get update

# run apt-cache madison docker-ce to get versions avaialble
RUN apt-get install -y docker-ce=17.12.0~ce-0~ubuntu
