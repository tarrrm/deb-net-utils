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
        nmap && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
