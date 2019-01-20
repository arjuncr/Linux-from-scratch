#!/bin/bash

mkdir tmp

rm -r tmp/*

cd tmp

wget https://ftp.gnu.org/gnu/binutils/binutils-2.30.tar.xz

wget https://busybox.net/downloads/busybox-1.28.3.tar.bz2

wget ftp.osuosl.org/pub/clfs/conglomeration/clfs-embedded-bootscripts/clfs-embedded-bootscripts-1.0-pre5.tar.bz2

wget http://cdimage.debian.org/mirror/gnu.org/gnu/gcc/gcc-7.3.0/gcc-7.3.0.tar.xz

wget https://ftp.gnu.org/gnu/glibc/glibc-2.27.tar.xz

wget https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2

wget ftp.ntu.edu.tw/linux/kernel/v4.x/linux-4.16.3.tar.xz

wget https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz

wget https://www.mpfr.org/mpfr-current/mpfr-4.0.1.tar.xz 

wget https://zlib.net/zlib-1.2.11.tar.gz

echo "extracting packages ...."

tar -xf   binutils-2.30.tar.xz

tar -xvjf busybox-1.28.3.tar.bz2

tar -xvjf clfs-embedded-bootscripts-1.0-pre5.tar.bz2

tar -xf   gcc-7.3.0.tar.xz

tar -xf   glibc-2.27.tar.xz

tar -xvjf gmp-6.1.2.tar.bz2

tar -xf   linux-4.16.3.tar.xz

tar -xvzf mpc-1.1.0.tar.gz

tar -xf mpfr-4.0.1.tar.xz

tar -xvzf zlib-1.2.11.tar.gz

echo "packages extracted"

cd ..
