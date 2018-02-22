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

EXPOSE 8080
ENTRYPOINT ["/usr/bin/python"]
CMD ["sf.py", "0.0.0.0:8080"]
