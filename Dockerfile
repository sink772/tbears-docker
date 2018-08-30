FROM ubuntu:18.04

# Install required packages
RUN apt-get update && apt-get install -y \
        python3.6 \
        python3-pip \
        build-essential \
        automake \
        pkg-config \
        libtool \
        libffi-dev \
        libgmp-dev \
        libssl-dev \
        libsecp256k1-dev \
        rabbitmq-server \
        vim-tiny \
        lsof \
        locales \
    && rm -rf /var/lib/apt/lists/*

# Add default locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Set working directory
ENV WORKING_DIR "/app"
WORKDIR ${WORKING_DIR}
ADD . ${WORKING_DIR}

# Install tbears
RUN pip3 install tbears

EXPOSE 9000

ENTRYPOINT ["/app/entry.sh"]
