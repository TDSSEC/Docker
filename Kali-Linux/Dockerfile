# From base Kali Linux from Dockerhub
FROM kalilinux/kali-linux-docker

# Set working dir
WORKDIR /opt/

# Updates and obtain packages not in base image
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    aha \
    amap \
    bpython \
    build-essential \
    clusterd \
    commix \
    curl \
    dirb \
    dnsrecon \
    dnsutils \
    emacs25-nox \
    exploitdb \
    fimap \
    git \
    gobuster \
    host \
    hping3 \
    joomscan \
    libglib2.0-dev \
    liblzma-dev \
    libsqlite3-dev \
    libxml2-utils \
    locales \
    man \
    masscan \
    metasploit-framework \
    msfpc \
    nmap \
    openssh-client \
    patch \
    php7.0 \
    python-dev \
    python-ecdsa \
    python-faraday \
    python-impacket \
    python-matplotlib \
    python-pip \
    python-pyx \
    python3-dev \
    python3-pip \
    ruby-dev \
    rubygems \
    rubygems-integration \
    seclists \
    skipfish \
    sqlmap \
    sslscan \
    tcpdump \
    theharvester \
    tmux \
    traceroute \
    uniscan \
    whatweb \
    wpscan \
    zlib1g-dev \
    zsh && \
    apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install \
    pycrypto \
    pyopenssl

# Tools from Github
RUN git clone https://github.com/DanMcInerney/xsscrapy /opt/xsscrapy && \
    cd /opt/xsscrapy && \
    pip install -r ./requirements.txt
RUN wget https://raw.githubusercontent.com/tomsqr94/Useful-Files/master/.vimrc -P /root/

ENTRYPOINT ["/bin/bash"]
