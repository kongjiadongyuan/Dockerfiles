FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-devel
MAINTAINER kongjiadongyuan


RUN mv /etc/apt/sources.list /etc/apt/sources.list.old &&\
    touch /etc/apt/sources.list &&\
    echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse" >> /etc/apt/sources.list &&\
    echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list &&\
    echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list &&\
    echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list &&\
    apt-get update -y &&\
    apt-get install -y openssh-server build-essential &&\
    sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config &&\
    service ssh restart

RUN echo "export PATH=/opt/conda/bin:/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" >> /root/.bashrc &&\
    echo "export CUDA_VERSION=10.1.243" >> /root/.bashrc &&\
    echo "export CUDA_PKG_VERSION=10-1=10.1.243-1" >> /root/.bashrc &&\
    echo "export LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64" >> /root/.bashrc &&\
    echo "export NVIDIA_VISIBLE_DEVICES=all" >> /root/.bashrc &&\
    echo "export NVIDIA_DRIVER_CAPABILITIES=compute,utility" >> /root/.bashrc &&\
    echo "export NVIDIA_REQUIRE_CUDA=\"cuda>=10.1 brand=tesla,driver>=384,driver<385 brand=tesla,driver>=396,driver<397 brand=tesla,driver>=410,driver<411\"" >> /root/.bashrc &&\
    echo "export NCCL_VERSION=2.4.8" >> /root/.bashrc &&\
    echo "export LIBRARY_PATH=/usr/local/cuda/lib64/stubs" >> /root/.bashrc &&\
    echo "export CUDNN_VERSION=7.6.3.30" >> /root/.bashrc &&\
    echo "export PYTHON_VERSION=3.6" >> /root/.bashrc

COPY authorized_keys /root/.ssh/authorized_keys
COPY jupyter /root/.jupyter

RUN pip install jupyter jupyter-client jupyter-console jupyter-core jupyterthemes &&\
    touch /etc/start.sh &&\
    echo "service ssh start" >> /etc/start.sh &&\
    echo "jupyter-notebook --allow-root" >> /etc/start.sh

CMD ["/bin/sh", "/etc/start.sh"]
