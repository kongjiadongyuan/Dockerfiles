FROM ubuntu:20.04
MAINTAINER kongjiadongyuan

RUN apt update && \
        DEBIAN_FRONTEND=noninteractive apt install -y build-essential git wget curl ninja-build cmake python3

RUN cd /root && \
        wget https://github.com/llvm/llvm-project/releases/download/llvmorg-13.0.0/llvm-project-13.0.0.src.tar.xz && \
        tar xf llvm-project-13.0.0.src.tar.xz && \
        mv llvm-project-13.0.0.src llvm-src && \
        mkdir llvm-build && \
        cd llvm-build && \
        \
        cmake -G "Ninja" \
        -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lldb;compiler-rt;lld" \
        -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi" \
        -DCMAKE_BUILD_TYPE=Release  \
        -DLLVM_TARGETS_TO_BUILD="X86" \
        ../llvm-src/llvm/ && \
        \
        ninja

