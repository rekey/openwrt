FROM ghcr.io/rekey/openwrt-init

RUN wget https://github.com/rekey/openwrt/raw/main/shell/build.sh

RUN chmod +x ./build.sh

RUN ./build.sh

CMD ["/bin/bash"]