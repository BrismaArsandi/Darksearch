FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
	python \
	build-essential \
	python-dev \
	python-pip \
	git \
	wget \
        openjdk-7-jre \
        libblas-dev liblapack-dev

WORKDIR /home
RUN \
  wget "https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.12-amd64.deb" -O elasticsearch-7.17.12.deb && \
  dpkg -i elasticsearch-7.17.12.deb
RUN git clone https://github.com/BrismaArsandi/darksearch
RUN pip install -r /home/darksearch/requirements.txt  
