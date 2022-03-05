FROM ubuntu:20.04
MAINTAINER kongjiadongyuan

RUN DEBIAN_FRONTEND="noninteractive" sed -i "s/archive.ubuntu.com/mirrors.bfsu.edu.cn/g" /etc/apt/sources.list && \
        sed -i "s/security.ubuntu.com/mirrors.bfsu.edu.cn/g" /etc/apt/sources.list && \
        apt -y update && \
        apt -y upgrade && \
        DEBIAN_FRONTEND="noninteractive" apt -y install build-essential wget curl vim git autoconf automake libtool libffi-dev python3-pip libnghttp2-dev nghttp2 && \
        ln -s /usr/bin/python3 /usr/bin/python && \
        cd /root && \
        curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
        apt -y install git-lfs && \
        git lfs install

RUN cd /root && \
        git clone https://github.com/Tencent/yadcc --recurse-submodules && \
        cd yadcc && \
        ./blade build yadcc/...
        
