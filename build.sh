#!/bin/sh
set -ex
git clone --depth=1 --recursive https://github.com/SymbiFlow/prjtrellis
(cd prjtrellis/libtrellis; cmake .; make -j $(nproc); make install)

git clone --depth=1 https://github.com/cliffordwolf/icestorm.git
(cd icestorm; make -j $(nproc); make install)

git clone --depth=1 https://github.com/YosysHQ/nextpnr.git
(cd nextpnr; cmake -DARCH=all -DTRELLIS_ROOT=../prjtrellis .; make -j $(nproc); make install)

git clone --depth=1 https://github.com/YosysHQ/yosys.git
(cd yosys; make -j (nproc); make install)
