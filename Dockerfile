FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install python3-neutron -y&& \
    sudo apt autoremove -y

