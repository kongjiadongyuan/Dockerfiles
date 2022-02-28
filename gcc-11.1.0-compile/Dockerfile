FROM ubuntu:20.04

# update
RUN apt -yqq update && \
    apt -yqq upgrade && \
    apt install build-essential wget

# compile
RUN cd ~ && \
    wget http://ftp.gnu.org/gnu/gcc/gcc-11.2.0/gcc-11.2.0.tar.gz && \
    tar -zxvf gcc-11.2.0.tar.gz && \
    mv gcc-11.2.0 gcc && \
    cd gcc && \
    ./contrib/download_prerequisites && \
    cd .. && \
    mkdir build && \
    cd build && \
    ../gcc/configure --prefix=/usr/local/gcc -enable-language=c,c++ --disable-multilib --disable-werror --disable-bootstrap && \
    make -j$(($(nproc) + 1))