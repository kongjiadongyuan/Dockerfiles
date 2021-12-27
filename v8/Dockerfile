FROM ubuntu:18.04

RUN apt-get -y update && \
	apt-get -y install build-essential wget curl python git python3 pkg-config && \
	cd root && \
	git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git && \
	export PATH=/root/depot_tools:$PATH && \
	echo "export PATH=/root/depot_tools:$PATH" >> /root/.bashrc && \
	mkdir v8 && \
	cd /root/v8 && \
	fetch v8

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
