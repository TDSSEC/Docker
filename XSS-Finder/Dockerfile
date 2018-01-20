FROM debian
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    git \
    locales \
    python-pip \
    python-dev \
    python3-pip \	
    python3-dev \
    python-pycurl \
    curl \ 
    libssl-dev \
    libcurl4-openssl-dev 
RUN git clone https://github.com/DanMcInerney/xsscrapy /opt/xsscrapy && \
    git clone https://github.com/AzizDammak/DorkScan /opt/DorkScan
WORKDIR /opt
RUN pip install \ 
	cryptography \
	pyopenssl \
	beautifulsoup \
	requests \
	pyopenssl \
	Scrapy==1.1.0rc3 \
	pybloom==1.1 \
	lxml \
	Twisted==16.6.0 \ 
	w3lib \ 
	six \ 
	cssselect \ 
	queuelib
RUN pip3 install \
	beautifulsoup4 \
	requests \
	docopt \ 
	bs4 \
	pyaml \
	urllib3
ENTRYPOINT ["/bin/bash"]
