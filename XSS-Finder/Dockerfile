FROM debian
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    zsh \
    git \
    locales \
    python-pip \
    python-dev \
    python3-pip \	
    python3-dev \
    python-pycurl 
RUN git clone https://github.com/DanMcInerney/xsscrapy /opt/xsscrapy && \
    git clone https://github.com/AzizDammak/DorkScan /opt/DorkScan
WORKDIR /opt
RUN pip install -r /opt/xsscrapy/requirements.txt
ENTRYPOINT ["/bin/zsh"]
