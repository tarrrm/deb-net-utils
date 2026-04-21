FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        iputils-ping \
        iproute2 \
        htop \
        nano \
        procps \
        ca-certificates \
        dnsutils \
        nmap \
        openssh-client \
        tcpdump \
        netcat-openbsd \
        traceroute \
        mtr \
        httpie \
        lsof \
        strace \
        rsync \
        unzip \
        python3 \
        python3-pip \
        iperf3 \
        jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
