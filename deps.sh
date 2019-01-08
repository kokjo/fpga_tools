#!/bin/sh
apt-get update -y
apt-get install -y \
    build-essential cmake git clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-all-dev \
    python3-dev qt5-default libftdi-dev

