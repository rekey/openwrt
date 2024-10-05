FROM ghcr.io/rekey/openwrt-builder

RUN git clone https://github.com/immortalwrt/immortalwrt

WORKDIR /home/builder/immortalwrt
RUN ./scripts/feeds update -a
RUN ./scripts/feeds install -a
RUN make defconfig
RUN make download -j$(nproc)
RUN make V=s -j$(nproc)

CMD ["/bin/bash"]