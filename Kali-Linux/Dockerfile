# From base Kali Linux from Dockerhub
FROM kalilinux/kali-linux-docker

# Set working dir
WORKDIR /opt/

# Tools from Github
RUN git clone https://github.com/DanMcInerney/xsscrapy /opt/xsscrapy && \
    cd /opt/xsscrapy && \
    pip install -r ./requirements.txt 

ENTRYPOINT ["/bin/bash"]
