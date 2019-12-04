FROM ubuntu:18.04
MAINTAINER kongjiadongyuan

RUN mv /etc/apt/sources.list /etc/sources.list.old &&\
    touch /etc/sources.list &&\
    echo "deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse" >> /etc/apt/sources.list &&\
    echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse" >> /etc/apt/sources.list &&\
    echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list &&\
    echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse" >> /etc/apt/sources.list &&\
    apt-get -yqq update &&\
    apt-get -yqq install build-essential git wget curl cmake python &&\
    cd /root &&\
    wget http://llvm.org/releases/6.0.1/llvm-6.0.1.src.tar.xz &&\
    xz -d llvm-6.0.1.src.tar.xz &&\
    tar -xvf llvm-6.0.1.src.tar &&\
    rm llvm-6.0.1.src.tar &&\
    mv llvm-6.0.1.src/ llvm &&\
    wget http://llvm.org/releases/6.0.1/cfe-6.0.1.src.tar.xz &&\
    xz -d cfe-6.0.1.src.tar.xz &&\
    tar -xvf cfe-6.0.1.src.tar &&\
    rm cfe-6.0.1.src.tar &&\
    mv cfe-6.0.1.src llvm/tools/clang &&\
    wget http://llvm.org/releases/6.0.1/clang-tools-extra-6.0.1.src.tar.xz &&\
    xz -d clang-tools-extra-6.0.1.src.tar.xz &&\
    tar -xvf clang-tools-extra-6.0.1.src.tar &&\
    rm clang-tools-extra-6.0.1.src.tar &&\
    mv clang-tools-extra-6.0.1.src llvm/tools/clang/tools/extra &&\
    wget http://llvm.org/releases/6.0.1/lld-6.0.1.src.tar.xz &&\
    xz -d lld-6.0.1.src.tar.xz &&\
    tar -xvf lld-6.0.1.src.tar &&\
    mv lld-6.0.1.src llvm/tools/lld &&\
    rm lld-6.0.1.src.tar &&\
    wget http://llvm.org/releases/6.0.1/compiler-rt-6.0.1.src.tar.xz &&\
    xz -d compiler-rt-6.0.1.src.tar.xz &&\
    tar -xvf compiler-rt-6.0.1.src.tar &&\
    mv compiler-rt-6.0.1.src llvm/projects/compiler-rt &&\
    rm compiler-rt-6.0.1.src.tar &&\
    mkdir llvm-build &&\
    cd llvm-build &&\
    cmake -G "Unix Makefiles" -DLLVM_ENABLE_ASSERTIONS=On -DCMAKE_BUILD_TYPE=Release ../llvm &&\
    make -j8