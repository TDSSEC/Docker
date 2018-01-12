FROM debian
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    zsh \
    git
RUN git clone https://github.com/DanMcInerney/xsscrapy /opt/xsscrapy && \
    git clone https://github.com/AzizDammak/DorkScan ~/DorkScan
WORKDIR /opt
ENTRYPOINT ["/bin/zsh"]
