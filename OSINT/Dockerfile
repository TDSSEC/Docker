FROM debian

WORKDIR /opt/

# Updates and Packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git \
    wget \
    locales \
    curl \
    python-m2crypto \
    python-pip \
    tar

# Pip installs
RUN pip install \
    lxml \
    netaddr \
    M2Crypto \
    cherrypy \
    mako \
    requests \
    bs4

# Download Spiderfoot and Custom vim config
RUN wget https://raw.githubusercontent.com/tomsqr94/Useful-Files/master/.vimrc -P /root/ && \
    wget https://github.com/tomsqr94/Useful-Files/raw/master/spiderfoot-2.11.0-src.tar.gz -P /opt/

# Untar and open Spiderfoot dir
RUN tar -zxvf spiderfoot-2.11.0-src.tar.gz && cd spiderfoot-2.11.0

ENTRYPOINT ["/bin/bash"]
