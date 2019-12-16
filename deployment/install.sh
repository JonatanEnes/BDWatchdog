#!/usr/bin/env bash

setup_ssh () {
    echo -e "\n" | ssh-keygen -b 2048 -t rsa -q -N ""
    echo ""
    cat ${HOME}/.ssh/id_rsa.pub >> .ssh/authorized_keys
    ssh localhost "exit"
}

install_dependencies(){
    apt update
    apt install -y python-minimal
    apt install -y python3 python3-pip
    apt install -y mongodb
    apt install -y build-essential
    apt install -y autoconf
    apt install -y openjdk-8-jdk
    apt install -y gnuplot-x11
}

setup_ssh
install_dependencies

source config.sh
mkdir -p ${DATA_DIR}