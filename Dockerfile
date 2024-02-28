FROM ubuntu:22.04

ENV OPENVPN_VERSION=2.5.9 OPENVPN_BUILD=0ubuntu0.22.04.2

RUN set -ex; \
apt update; \
apt install -y openvpn=${OPENVPN_VERSION}-${OPENVPN_BUILD}; \
rm -rf /etc/openvpn/*; \
rm -rf /var/lib/apt/lists/*

WORKDIR /etc/openvpn

ENTRYPOINT ["openvpn"]
