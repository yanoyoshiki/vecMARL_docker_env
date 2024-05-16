# FROM nvcr.io/nvidia/cuda:11.8.0-devel-ubuntu20.04
FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

WORKDIR /root

RUN apt-get update && apt-get install -y \
    git \
    locales \
    xterm \
    dbus-x11 \
    terminator \
    sudo \
    unzip \
    lsb-release \
    curl \
    net-tools \
    software-properties-common \
    subversion \
    libssl-dev \
    htop \
    gedit \
    gdb \
    valgrind \
    build-essential \
    bash-completion \
    python3-pip \
    vim \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    cmake \
    libopenmpi-dev \
    wget && \
    apt-get clean && rm -rf /var/lib/apt/list*


RUN python3 -m pip install "ray[rllib]"==2.1.0


RUN python3 -m pip install dm-meltingpot

RUN python3 -m pip install \
         torchrl \
         benchmarl \
         matplotlib \
         pyyaml \
         numpy \
         ipdb \
         wandb \
         opencv-python \
         moviepy \
         matplotlib \
         pytest \
         pyyaml \
         pytest-instafail \
         tqdm
